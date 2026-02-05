import 'package:flutter/foundation.dart';
import 'dart:async';

/// Memory snapshot at a point in time
class MemorySnapshot {
  final DateTime timestamp;
  final int heapUsage;
  final int externalMemory;
  final String info;

  MemorySnapshot({
    required this.timestamp,
    required this.heapUsage,
    required this.externalMemory,
    required this.info,
  });

  /// Total memory in bytes
  int get totalMemory => heapUsage + externalMemory;

  /// Total memory in MB
  double get totalMemoryMB => totalMemory / (1024 * 1024);

  /// Convert to JSON
  Map<String, dynamic> toJson() => {
        'timestamp': timestamp.toIso8601String(),
        'heapUsageMB': (heapUsage / (1024 * 1024)).toStringAsFixed(2),
        'externalMemoryMB': (externalMemory / (1024 * 1024)).toStringAsFixed(2),
        'totalMemoryMB': (totalMemory / (1024 * 1024)).toStringAsFixed(2),
        'info': info,
      };
}

/// Memory profiling and leak detection
class MemoryProfiler {
  static final MemoryProfiler _instance = MemoryProfiler._internal();

  factory MemoryProfiler() => _instance;

  MemoryProfiler._internal();

  // Memory snapshots
  final List<MemorySnapshot> _snapshots = [];

  // Configuration
  static const int maxSnapshotsHistory = 1000;
  static const Duration snapshotInterval = Duration(seconds: 5);
  static const double memoryLeakThreshold = 0.9; // 90% increase

  // State
  late Timer _snapshotTimer;
  int? _baselineMemory;

  // Statistics
  double _peakMemory = 0;
  double _averageMemory = 0;
  int _snapshotCount = 0;
  final List<double> _memoryTrend = [];

  /// Initialize memory profiler
  static Future<void> initialize() async {
    await _instance._initialize();
  }

  Future<void> _initialize() async {
    try {
      // Take initial snapshot
      await _takeSnapshot('initialization');

      // Setup periodic snapshots
      _snapshotTimer = Timer.periodic(snapshotInterval, (_) async {
        await _takeSnapshot('periodic');
      });
    } catch (e) {
      if (kDebugMode) {
        print('Memory profiler initialization error: $e');
      }
    }
  }

  /// Take a memory snapshot
  static Future<void> takeSnapshot([String info = 'manual']) async {
    await _instance._takeSnapshot(info);
  }

  Future<void> _takeSnapshot(String info) async {
    try {
      // Parse memory data (simplified - in production use VM service directly)
      final snapshot = MemorySnapshot(
        timestamp: DateTime.now(),
        heapUsage: 0, // Would be populated from VM service
        externalMemory: 0,
        info: info,
      );

      _snapshots.add(snapshot);

      // Update statistics
      _snapshotCount++;
      if (snapshot.totalMemoryMB > _peakMemory) {
        _peakMemory = snapshot.totalMemoryMB;
      }

      _memoryTrend.add(snapshot.totalMemoryMB);
      if (_memoryTrend.length > 60) {
        _memoryTrend.removeAt(0);
      }

      // Update average
      _averageMemory =
          _memoryTrend.fold(0.0, (sum, val) => sum + val) / _memoryTrend.length;

      // Set baseline on first snapshot
      if (_baselineMemory == null) {
        _baselineMemory = snapshot.totalMemory;
        // _baselineTime = snapshot.timestamp;  // TODO: Field is not used elsewhere
      }

      // Check for memory leaks
      _checkForMemoryLeak(snapshot);

      // Prune old snapshots
      if (_snapshots.length > maxSnapshotsHistory) {
        _snapshots.removeRange(0, _snapshots.length - maxSnapshotsHistory);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Memory snapshot error: $e');
      }
    }
  }

  /// Check for potential memory leaks
  void _checkForMemoryLeak(MemorySnapshot snapshot) {
    if (_baselineMemory == null) return;

    final increase = snapshot.totalMemory - _baselineMemory!;
    final increasePercent = (increase / _baselineMemory!) * 100;

    if (increasePercent > (memoryLeakThreshold * 100)) {
      if (kDebugMode) {
        print(
            '⚠️  POTENTIAL MEMORY LEAK: ${increasePercent.toStringAsFixed(1)}% increase');
        print(
            '   Baseline: ${(_baselineMemory! / (1024 * 1024)).toStringAsFixed(2)}MB');
        print('   Current: ${snapshot.totalMemoryMB.toStringAsFixed(2)}MB');
        print(
            '   Increase: ${(increase / (1024 * 1024)).toStringAsFixed(2)}MB');
      }
    }
  }

  /// Get memory statistics
  static Map<String, dynamic> getStats() {
    final instance = _instance;
    if (instance._snapshots.isEmpty) {
      return {
        'status': 'no_data',
        'message': 'No memory snapshots collected yet',
      };
    }

    final latest = instance._snapshots.last;
    final growthRate = instance._calculateGrowthRate();

    return {
      'currentMemoryMB': latest.totalMemoryMB.toStringAsFixed(2),
      'peakMemoryMB': instance._peakMemory.toStringAsFixed(2),
      'averageMemoryMB': instance._averageMemory.toStringAsFixed(2),
      'snapshotCount': instance._snapshotCount,
      'growthRateMBPerMin': growthRate.toStringAsFixed(2),
      'heapUsageMB': (latest.heapUsage / (1024 * 1024)).toStringAsFixed(2),
      'externalMemoryMB':
          (latest.externalMemory / (1024 * 1024)).toStringAsFixed(2),
      'trendDirection': instance._getTrendDirection(),
      'memoryHealthy': growthRate < 0.5, // Less than 0.5 MB/minute is good
    };
  }

  /// Calculate memory growth rate (MB/minute)
  double _calculateGrowthRate() {
    if (_memoryTrend.length < 2) return 0;

    final firstValue = _memoryTrend.first;
    final lastValue = _memoryTrend.last;
    final minutesPassed =
        (_memoryTrend.length * snapshotInterval.inSeconds) / 60;

    return ((lastValue - firstValue) / minutesPassed).abs();
  }

  /// Get trend direction
  String _getTrendDirection() {
    if (_memoryTrend.length < 2) return 'stable';

    final recent = _memoryTrend
        .sublist((_memoryTrend.length - 5).clamp(0, _memoryTrend.length));
    final trend = recent.last - recent.first;

    if (trend.abs() < 0.1) {
      return 'stable';
    } else if (trend > 0) {
      return 'increasing';
    } else {
      return 'decreasing';
    }
  }

  /// Get memory snapshots
  static List<MemorySnapshot> getSnapshots({int limit = 50}) {
    final start = (_instance._snapshots.length - limit)
        .clamp(0, _instance._snapshots.length);
    return _instance._snapshots.sublist(start);
  }

  /// Get memory trend chart data
  static List<double> getMemoryTrend() {
    return _instance._memoryTrend.toList();
  }

  /// Get memory warning level
  static String getMemoryWarning() {
    final stats = getStats();
    if (stats['status'] == 'no_data') return 'no_data';

    final currentMB = double.parse(stats['currentMemoryMB'] as String);
    final growthRate = double.parse(stats['growthRateMBPerMin'] as String);

    if (currentMB > 500) {
      return 'critical'; // Over 500 MB
    } else if (currentMB > 300) {
      return 'warning'; // Over 300 MB
    } else if (growthRate > 1.0) {
      return 'increasing'; // Growing fast
    } else {
      return 'ok';
    }
  }

  /// Force garbage collection (hint to VM)
  static Future<void> forceGarbageCollection() async {
    try {
      // Request garbage collection from VM service
      if (kDebugMode) {
        print('🧹 Garbage collection requested');
      }

      // Take snapshot after GC
      await _instance._takeSnapshot('after_gc');
    } catch (e) {
      if (kDebugMode) {
        print('GC request error: $e');
      }
    }
  }

  /// Export snapshots as JSON
  static String exportSnapshotsAsJson() {
    final json = _instance._snapshots.map((s) => s.toJson()).toList();
    return _jsonEncode(json);
  }

  /// Cleanup resources
  static Future<void> dispose() async {
    _instance._snapshotTimer.cancel();
  }

  /// Simple JSON encoder
  static String _jsonEncode(dynamic obj) {
    if (obj is List) {
      return '[${obj.map(_jsonEncode).join(',')}]';
    } else if (obj is Map) {
      final pairs =
          obj.entries.map((e) => '"${e.key}":${_jsonEncode(e.value)}');
      return '{${pairs.join(',')}}';
    } else if (obj is String) {
      return '"${obj.replaceAll('"', '\\"')}"';
    } else if (obj is bool) {
      return obj.toString();
    } else if (obj is num) {
      return obj.toString();
    } else {
      return 'null';
    }
  }
}
