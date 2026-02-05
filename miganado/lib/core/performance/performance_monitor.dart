import 'package:flutter/foundation.dart';
import 'dart:async';

/// Performance metric entry
class PerformanceMetric {
  final String name;
  final DateTime timestamp;
  final Duration duration;
  final String category;
  final Map<String, dynamic>? metadata;
  final bool success;

  PerformanceMetric({
    required this.name,
    required this.timestamp,
    required this.duration,
    required this.category,
    this.metadata,
    this.success = true,
  });

  /// Convert to JSON
  Map<String, dynamic> toJson() => {
        'name': name,
        'timestamp': timestamp.toIso8601String(),
        'durationMs': duration.inMilliseconds,
        'category': category,
        'metadata': metadata,
        'success': success,
      };
}

/// Performance monitoring with timing, frame rate, and analysis
class PerformanceMonitor {
  static final PerformanceMonitor _instance = PerformanceMonitor._internal();

  factory PerformanceMonitor() => _instance;

  PerformanceMonitor._internal();

  // Metrics storage
  final List<PerformanceMetric> _metrics = [];
  final Map<String, Stopwatch> _activeTimers = {};

  // Configuration
  static const int maxMetricsHistory = 10000;
  static const Duration slowThreshold = Duration(milliseconds: 500);
  static const Duration verySlowThreshold = Duration(seconds: 2);

  // State
  late Timer _analysisTimer;
  @pragma('vm:prefer-inline')

  // Statistics
  int _totalOperations = 0;
  int _slowOperations = 0;
  int _verySlowOperations = 0;
  double _averageFrameTime = 0;
  int _frameCount = 0;

  /// Initialize performance monitor
  static Future<void> initialize() async {
    await _instance._initialize();
  }

  Future<void> _initialize() async {
    try {
      // Setup periodic analysis (every 30 seconds)
      _analysisTimer = Timer.periodic(const Duration(seconds: 30), (_) {
        _analyzeMetrics();
      });
    } catch (e) {
      if (kDebugMode) {
        print('Performance monitor initialization error: $e');
      }
    }
  }

  /// Start timing an operation
  static void startTimer(String operationName) {
    _instance._activeTimers[operationName] = Stopwatch()..start();
  }

  /// Stop timing and record metric
  static void stopTimer(
    String operationName, {
    String category = 'general',
    Map<String, dynamic>? metadata,
  }) {
    final stopwatch = _instance._activeTimers.remove(operationName);
    if (stopwatch != null) {
      stopwatch.stop();
      _instance._recordMetric(
        operationName,
        stopwatch.elapsed,
        category,
        metadata,
      );
    }
  }

  /// Record a manual metric
  static void recordMetric(
    String name,
    Duration duration, {
    String category = 'general',
    Map<String, dynamic>? metadata,
  }) {
    _instance._recordMetric(name, duration, category, metadata);
  }

  void _recordMetric(
    String name,
    Duration duration,
    String category,
    Map<String, dynamic>? metadata,
  ) {
    final metric = PerformanceMetric(
      name: name,
      timestamp: DateTime.now(),
      duration: duration,
      category: category,
      metadata: metadata,
    );

    _metrics.add(metric);

    // Update statistics
    _totalOperations++;
    if (duration > slowThreshold) {
      _slowOperations++;
      if (kDebugMode) {
        print('⚠️  SLOW: $name took ${duration.inMilliseconds}ms');
      }
    }
    if (duration > verySlowThreshold) {
      _verySlowOperations++;
      if (kDebugMode) {
        print('❌ VERY SLOW: $name took ${duration.inMilliseconds}ms');
      }
    }

    // Prune old metrics
    if (_metrics.length > maxMetricsHistory) {
      _metrics.removeRange(0, _metrics.length - maxMetricsHistory);
    }
  }

  /// Record frame timing (called by frame callback)
  static void recordFrame(Duration frameDuration) {
    _instance._frameCount++;
    _instance._averageFrameTime =
        (_instance._averageFrameTime * (_instance._frameCount - 1) +
                frameDuration.inMicroseconds) /
            _instance._frameCount;
  }

  /// Measure a synchronous operation
  static T measure<T>(
    String name,
    T Function() operation, {
    String category = 'general',
  }) {
    startTimer(name);
    try {
      final result = operation();
      stopTimer(name, category: category);
      return result;
    } catch (e) {
      stopTimer(name, category: category);
      rethrow;
    }
  }

  /// Measure an asynchronous operation
  static Future<T> measureAsync<T>(
    String name,
    Future<T> Function() operation, {
    String category = 'general',
  }) async {
    startTimer(name);
    try {
      final result = await operation();
      stopTimer(name, category: category);
      return result;
    } catch (e) {
      stopTimer(name, category: category);
      rethrow;
    }
  }

  /// Analyze and report on metrics
  void _analyzeMetrics() {
    if (_metrics.isEmpty) return;

    final recentMetrics =
        _metrics.skip((_metrics.length - 100).clamp(0, _metrics.length));

    Map<String, List<PerformanceMetric>> byCategory = {};
    for (final metric in recentMetrics) {
      byCategory.putIfAbsent(metric.category, () => []).add(metric);
    }

    if (kDebugMode) {
      print('\n📊 Performance Analysis:');
      byCategory.forEach((category, metrics) {
        final avgDuration = Duration(
          milliseconds: (metrics.fold<int>(
                  0, (sum, m) => sum + m.duration.inMilliseconds) ~/
              metrics.length),
        );
        final maxDuration = metrics.fold<Duration>(
          Duration.zero,
          (max, m) => m.duration > max ? m.duration : max,
        );
        final slow = metrics.where((m) => m.duration > slowThreshold).length;

        print(
          '  $category: avg=${avgDuration.inMilliseconds}ms, '
          'max=${maxDuration.inMilliseconds}ms, slow=$slow',
        );
      });
      print('');
    }
  }

  /// Get performance statistics
  static Map<String, dynamic> getStats() {
    final instance = _instance;
    final fps = instance._frameCount > 0
        ? (1000000 / instance._averageFrameTime).toStringAsFixed(1)
        : 'N/A';

    return {
      'totalOperations': instance._totalOperations,
      'slowOperations': instance._slowOperations,
      'verySlowOperations': instance._verySlowOperations,
      'slowOperationRate': instance._totalOperations > 0
          ? ((instance._slowOperations / instance._totalOperations) * 100)
              .toStringAsFixed(2)
          : '0.00',
      'averageFrameTimeUs': instance._averageFrameTime.toStringAsFixed(2),
      'estimatedFps': fps,
      'metricsCount': instance._metrics.length,
    };
  }

  /// Get metrics for a specific category
  static List<PerformanceMetric> getMetricsByCategory(String category) {
    return _instance._metrics.where((m) => m.category == category).toList();
  }

  /// Get slowest operations
  static List<PerformanceMetric> getSlowestOperations([int limit = 10]) {
    final sorted = _instance._metrics.toList()
      ..sort((a, b) => b.duration.compareTo(a.duration));
    return sorted.take(limit).toList();
  }

  /// Get operations slower than threshold
  static List<PerformanceMetric> getSlowOperations({
    Duration threshold = slowThreshold,
    int limit = 50,
  }) {
    final slow = _instance._metrics
        .where((m) => m.duration > threshold)
        .toList()
      ..sort((a, b) => b.duration.compareTo(a.duration));
    return slow.take(limit).toList();
  }

  /// Export metrics as JSON
  static String exportMetricsAsJson() {
    final json = _instance._metrics.map((m) => m.toJson()).toList();
    return _jsonEncode(json);
  }

  /// Cleanup resources
  static Future<void> dispose() async {
    _instance._analysisTimer.cancel();
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

/// Widget extension for performance measurement
extension PerformanceTimingExtension on Future {
  /// Measure async operation timing
  Future<T> measureTiming<T>(String operationName) async {
    PerformanceMonitor.startTimer(operationName);
    try {
      final result = await this as Future<T>;
      PerformanceMonitor.stopTimer(operationName);
      return result;
    } catch (e) {
      PerformanceMonitor.stopTimer(operationName);
      rethrow;
    }
  }
}
