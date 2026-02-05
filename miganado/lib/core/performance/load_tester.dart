import 'package:flutter/foundation.dart';
import 'dart:async';

/// Load test result
class LoadTestResult {
  final String testName;
  final int totalOperations;
  final int successfulOperations;
  final int failedOperations;
  final Duration totalDuration;
  final Duration minDuration;
  final Duration maxDuration;
  final Duration averageDuration;
  final double operationsPerSecond;
  final DateTime timestamp;

  LoadTestResult({
    required this.testName,
    required this.totalOperations,
    required this.successfulOperations,
    required this.failedOperations,
    required this.totalDuration,
    required this.minDuration,
    required this.maxDuration,
    required this.averageDuration,
    required this.operationsPerSecond,
    required this.timestamp,
  });

  /// Convert to JSON
  Map<String, dynamic> toJson() => {
        'testName': testName,
        'totalOperations': totalOperations,
        'successfulOperations': successfulOperations,
        'failedOperations': failedOperations,
        'totalDurationMs': totalDuration.inMilliseconds,
        'minDurationMs': minDuration.inMilliseconds,
        'maxDurationMs': maxDuration.inMilliseconds,
        'averageDurationMs': averageDuration.inMilliseconds,
        'operationsPerSecond': operationsPerSecond.toStringAsFixed(2),
        'timestamp': timestamp.toIso8601String(),
      };

  /// Get human readable summary
  String get summary =>
      '$testName: $successfulOperations/$totalOperations ops in '
      '${totalDuration.inSeconds}s (${operationsPerSecond.toStringAsFixed(2)} ops/sec)';
}

/// Load testing suite for stress testing
class LoadTester {
  static final LoadTester _instance = LoadTester._internal();

  factory LoadTester() => _instance;

  LoadTester._internal();

  final List<LoadTestResult> _results = [];

  /// Run a sequential load test
  static Future<LoadTestResult> runSequentialLoad(
    String testName,
    int operationCount,
    Future<void> Function(int index) operation, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    return _instance._runSequentialLoad(
      testName,
      operationCount,
      operation,
      timeout,
    );
  }

  Future<LoadTestResult> _runSequentialLoad(
    String testName,
    int operationCount,
    Future<void> Function(int index) operation,
    Duration timeout,
  ) async {
    int successful = 0;
    int failed = 0;
    final durations = <Duration>[];
    final startTime = DateTime.now();

    try {
      for (int i = 0; i < operationCount; i++) {
        final opStart = DateTime.now();
        try {
          await operation(i).timeout(timeout, onTimeout: () {
            throw TimeoutException('Operation $i timed out');
          });
          successful++;
          durations.add(DateTime.now().difference(opStart));
        } catch (e) {
          failed++;
          if (kDebugMode) {
            print('❌ Operation $i failed: $e');
          }
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Load test error: $e');
      }
    }

    final totalDuration = DateTime.now().difference(startTime);
    final opsPerSecond = operationCount / totalDuration.inSeconds;

    final result = LoadTestResult(
      testName: testName,
      totalOperations: operationCount,
      successfulOperations: successful,
      failedOperations: failed,
      totalDuration: totalDuration,
      minDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a < b ? a : b),
      maxDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a > b ? a : b),
      averageDuration: durations.isEmpty
          ? Duration.zero
          : Duration(
              milliseconds:
                  durations.fold<int>(0, (sum, d) => sum + d.inMilliseconds) ~/
                      durations.length,
            ),
      operationsPerSecond: opsPerSecond,
      timestamp: DateTime.now(),
    );

    _results.add(result);

    if (kDebugMode) {
      print('✅ ${result.summary}');
    }

    return result;
  }

  /// Run a concurrent load test
  static Future<LoadTestResult> runConcurrentLoad(
    String testName,
    int operationCount,
    int concurrentCount,
    Future<void> Function(int index) operation, {
    Duration timeout = const Duration(seconds: 60),
  }) async {
    return _instance._runConcurrentLoad(
      testName,
      operationCount,
      concurrentCount,
      operation,
      timeout,
    );
  }

  Future<LoadTestResult> _runConcurrentLoad(
    String testName,
    int operationCount,
    int concurrentCount,
    Future<void> Function(int index) operation,
    Duration timeout,
  ) async {
    int successful = 0;
    int failed = 0;
    final durations = <Duration>[];
    final startTime = DateTime.now();

    try {
      final chunks = <List<int>>[];
      for (int i = 0; i < operationCount; i += concurrentCount) {
        final end = (i + concurrentCount).clamp(0, operationCount);
        chunks.add(List.generate(end - i, (j) => i + j));
      }

      for (final chunk in chunks) {
        final opStart = DateTime.now();
        final futures = chunk.map((index) async {
          try {
            await operation(index).timeout(timeout, onTimeout: () {
              throw TimeoutException('Operation $index timed out');
            });
            return true;
          } catch (e) {
            if (kDebugMode) {
              print('❌ Operation $index failed: $e');
            }
            return false;
          }
        }).toList();

        final results = await Future.wait(futures);
        successful += results.where((r) => r).length;
        failed += results.where((r) => !r).length;
        durations.add(DateTime.now().difference(opStart));
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Concurrent load test error: $e');
      }
    }

    final totalDuration = DateTime.now().difference(startTime);
    final opsPerSecond = operationCount / totalDuration.inSeconds;

    final result = LoadTestResult(
      testName: testName,
      totalOperations: operationCount,
      successfulOperations: successful,
      failedOperations: failed,
      totalDuration: totalDuration,
      minDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a < b ? a : b),
      maxDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a > b ? a : b),
      averageDuration: durations.isEmpty
          ? Duration.zero
          : Duration(
              milliseconds:
                  durations.fold<int>(0, (sum, d) => sum + d.inMilliseconds) ~/
                      durations.length,
            ),
      operationsPerSecond: opsPerSecond,
      timestamp: DateTime.now(),
    );

    _results.add(result);

    if (kDebugMode) {
      print('✅ ${result.summary}');
    }

    return result;
  }

  /// Run a stress test with increasing load
  static Future<LoadTestResult> runStressTest(
    String testName,
    int initialLoad,
    int maxLoad,
    int increment,
    Future<void> Function(int index) operation, {
    Duration timeout = const Duration(seconds: 60),
  }) async {
    return _instance._runStressTest(
      testName,
      initialLoad,
      maxLoad,
      increment,
      operation,
      timeout,
    );
  }

  Future<LoadTestResult> _runStressTest(
    String testName,
    int initialLoad,
    int maxLoad,
    int increment,
    Future<void> Function(int index) operation,
    Duration timeout,
  ) async {
    int totalSuccessful = 0;
    int totalFailed = 0;
    final durations = <Duration>[];
    final startTime = DateTime.now();

    if (kDebugMode) {
      print('\n📊 Starting stress test: $testName');
      print('   Initial load: $initialLoad ops');
      print('   Max load: $maxLoad ops');
      print('   Increment: $increment ops\n');
    }

    for (int load = initialLoad; load <= maxLoad; load += increment) {
      if (kDebugMode) {
        print('   Testing with load: $load operations...');
      }

      final loadStart = DateTime.now();
      try {
        for (int i = 0; i < load; i++) {
          try {
            await operation(i).timeout(timeout, onTimeout: () {
              throw TimeoutException('Op timed out');
            });
            totalSuccessful++;
          } catch (e) {
            totalFailed++;
          }
        }
        durations.add(DateTime.now().difference(loadStart));
      } catch (e) {
        if (kDebugMode) {
          print('   ❌ Load test failed at $load operations: $e');
        }
        break;
      }
    }

    final totalDuration = DateTime.now().difference(startTime);
    final opsPerSecond = totalSuccessful / totalDuration.inSeconds;

    final result = LoadTestResult(
      testName: testName,
      totalOperations: totalSuccessful + totalFailed,
      successfulOperations: totalSuccessful,
      failedOperations: totalFailed,
      totalDuration: totalDuration,
      minDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a < b ? a : b),
      maxDuration: durations.isEmpty
          ? Duration.zero
          : durations.reduce((a, b) => a > b ? a : b),
      averageDuration: durations.isEmpty
          ? Duration.zero
          : Duration(
              milliseconds:
                  durations.fold<int>(0, (sum, d) => sum + d.inMilliseconds) ~/
                      durations.length,
            ),
      operationsPerSecond: opsPerSecond,
      timestamp: DateTime.now(),
    );

    _results.add(result);

    if (kDebugMode) {
      print('\n✅ ${result.summary}\n');
    }

    return result;
  }

  /// Get all test results
  static List<LoadTestResult> getResults() => _instance._results;

  /// Get result by test name
  static LoadTestResult? getResultByName(String testName) {
    try {
      return _instance._results.firstWhere((r) => r.testName == testName);
    } catch (_) {
      return null;
    }
  }

  /// Clear results
  static void clearResults() {
    _instance._results.clear();
  }

  /// Export results as JSON
  static String exportResultsAsJson() {
    final json = _instance._results.map((r) => r.toJson()).toList();
    return _jsonEncode(json);
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
