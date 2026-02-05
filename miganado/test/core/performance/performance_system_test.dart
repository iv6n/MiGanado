import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/core/performance/logger_service.dart';
import 'package:miganado/core/performance/cache_manager.dart';
import 'package:miganado/core/performance/performance_monitor.dart';
import 'package:miganado/core/performance/memory_profiler.dart';
import 'package:miganado/core/performance/load_tester.dart';
import 'dart:io';

void main() {
  group('PHASE 4 - Performance System Tests', () {
    // Logger Tests
    group('Logger Service', () {
      setUp(() async {
        final tempDir = Directory.systemTemp.createTempSync();
        await LoggerService.initialize(tempDir.path);
      });

      tearDown(() async {
        await LoggerService.dispose();
      });

      test('Logger initializes without errors', () {
        expect(LoggerService, isNotNull);
      });

      test('Can log messages at different levels', () {
        LoggerService.debug('Test debug message');
        LoggerService.info('Test info message');
        LoggerService.warning('Test warning message');
        LoggerService.error('Test error message');
        LoggerService.critical('Test critical message');

        final stats = LoggerService.getStats();
        expect(stats['totalLogs'], greaterThanOrEqualTo(5));
      });

      test('Logger statistics are tracked correctly', () {
        LoggerService.info('Message 1');
        LoggerService.info('Message 2');
        LoggerService.warning('Warning 1');
        LoggerService.error('Error 1');

        final stats = LoggerService.getStats();
        // Account for initialization logs
        expect(stats['info'], greaterThanOrEqualTo(2));
        expect(stats['warning'], greaterThanOrEqualTo(1));
        expect(stats['error'], greaterThanOrEqualTo(1));
      });

      test('Recent logs can be retrieved', () {
        LoggerService.info('Log 1');
        LoggerService.info('Log 2');
        LoggerService.info('Log 3');

        final recentLogs = LoggerService.getRecentLogs(2);
        expect(recentLogs.length, 2);
      });
    });

    // Cache Manager Tests
    group('Cache Manager', () {
      setUp(() async {
        await CacheManager.initialize();
      });

      tearDown(() async {
        CacheManager.clear();
        await CacheManager.dispose();
      });

      test('Cache manager initializes without errors', () {
        expect(CacheManager, isNotNull);
      });

      test('Can store and retrieve values from cache', () {
        CacheManager.put('key1', 'value1');
        final cached = CacheManager.get<String>('key1');
        expect(cached, 'value1');
      });

      test('Returns null for missing cache entries', () {
        final cached = CacheManager.get<String>('nonexistent');
        expect(cached, isNull);
      });

      test('Cache expiration works correctly', () async {
        CacheManager.put(
          'expiring_key',
          'value',
          ttl: const Duration(milliseconds: 100),
        );

        final immediate = CacheManager.get<String>('expiring_key');
        expect(immediate, 'value');

        await Future.delayed(const Duration(milliseconds: 150));

        final expired = CacheManager.get<String>('expiring_key');
        expect(expired, isNull);
      });

      test('Cache statistics track hits and misses', () {
        CacheManager.put('key1', 'value1');

        // Hit
        CacheManager.get<String>('key1');
        // Miss
        CacheManager.get<String>('nonexistent');

        final stats = CacheManager.getStats();
        expect(stats['hits'], greaterThanOrEqualTo(1));
        expect(stats['misses'], greaterThanOrEqualTo(1));
      });

      test('Offline cache persists when offline', () {
        CacheManager.put('offline_key', 'offline_value', persist: true);
        CacheManager.setOnlineStatus(false);

        final cached = CacheManager.get<String>('offline_key');
        expect(cached, isNotNull);

        CacheManager.setOnlineStatus(true);
      });
    });

    // Performance Monitor Tests
    group('Performance Monitor', () {
      setUp(() async {
        await PerformanceMonitor.initialize();
      });

      tearDown(() async {
        await PerformanceMonitor.dispose();
      });

      test('Performance monitor initializes without errors', () {
        expect(PerformanceMonitor, isNotNull);
      });

      test('Can measure operation timing', () {
        PerformanceMonitor.startTimer('test_operation');
        Future.delayed(const Duration(milliseconds: 10));
        PerformanceMonitor.stopTimer('test_operation');

        final stats = PerformanceMonitor.getStats();
        expect(stats['totalOperations'], 1);
      });

      test('Measure function works synchronously', () {
        final result = PerformanceMonitor.measure('sync_op', () {
          return 42;
        });

        expect(result, 42);
        final stats = PerformanceMonitor.getStats();
        expect(stats['totalOperations'], greaterThanOrEqualTo(1));
      });

      test('Measure async function works asynchronously', () async {
        final result =
            await PerformanceMonitor.measureAsync('async_op', () async {
          await Future.delayed(const Duration(milliseconds: 10));
          return 'success';
        });

        expect(result, 'success');
        final stats = PerformanceMonitor.getStats();
        expect(stats['totalOperations'], greaterThanOrEqualTo(1));
      });

      test('Slowest operations can be retrieved', () {
        PerformanceMonitor.recordMetric('slow_op', const Duration(seconds: 1));
        PerformanceMonitor.recordMetric(
            'fast_op', const Duration(milliseconds: 10));

        final slowest = PerformanceMonitor.getSlowestOperations(2);
        expect(slowest.length, 2);
        expect(slowest.first.name, 'slow_op');
      });

      test('Performance statistics are accurate', () {
        PerformanceMonitor.recordMetric(
            'op1', const Duration(milliseconds: 100));
        PerformanceMonitor.recordMetric(
            'op2', const Duration(milliseconds: 200));
        PerformanceMonitor.recordMetric(
            'op3', const Duration(milliseconds: 300));

        final stats = PerformanceMonitor.getStats();
        expect(stats['totalOperations'], greaterThanOrEqualTo(3));
      });
    });

    // Memory Profiler Tests
    group('Memory Profiler', () {
      setUp(() async {
        await MemoryProfiler.initialize();
      });

      tearDown(() async {
        await MemoryProfiler.dispose();
      });

      test('Memory profiler initializes without errors', () {
        expect(MemoryProfiler, isNotNull);
      });

      test('Can take memory snapshots', () async {
        await MemoryProfiler.takeSnapshot('test_snapshot');
        final snapshots = MemoryProfiler.getSnapshots();
        expect(snapshots.isNotEmpty, true);
      });

      test('Memory statistics are available', () {
        final stats = MemoryProfiler.getStats();
        expect(stats.containsKey('currentMemoryMB'), true);
        expect(stats.containsKey('peakMemoryMB'), true);
        expect(stats.containsKey('averageMemoryMB'), true);
      });

      test('Memory trend is tracked', () async {
        await MemoryProfiler.takeSnapshot('snapshot1');
        await Future.delayed(const Duration(milliseconds: 100));
        await MemoryProfiler.takeSnapshot('snapshot2');

        final trend = MemoryProfiler.getMemoryTrend();
        expect(trend.isNotEmpty, true);
      });

      test('Memory warning level can be determined', () {
        final warning = MemoryProfiler.getMemoryWarning();
        expect(
          ['ok', 'increasing', 'warning', 'critical', 'no_data'],
          contains(warning),
        );
      });
    });

    // Load Tester Tests
    group('Load Tester', () {
      test('Sequential load test runs successfully', () async {
        // var count = 0;  // TODO: This variable is for tracking, uncomment if needed
        final result = await LoadTester.runSequentialLoad(
          'sequential_test',
          10,
          (index) async {
            // count++;
            await Future.delayed(const Duration(milliseconds: 5));
          },
        );

        expect(result.successfulOperations, 10);
        expect(result.failedOperations, 0);
        expect(result.operationsPerSecond, greaterThan(0));
      });

      test('Concurrent load test runs successfully', () async {
        final result = await LoadTester.runConcurrentLoad(
          'concurrent_test',
          20,
          4,
          (index) async {
            await Future.delayed(const Duration(milliseconds: 10));
          },
        );

        expect(result.successfulOperations, 20);
        expect(result.failedOperations, 0);
        expect(result.operationsPerSecond, greaterThan(0));
      });

      test('Stress test runs successfully', () async {
        final result = await LoadTester.runStressTest(
          'stress_test',
          5,
          15,
          5,
          (index) async {
            await Future.delayed(const Duration(milliseconds: 1));
          },
        );

        expect(result.successfulOperations, greaterThan(0));
        expect(result.operationsPerSecond, greaterThan(0));
      });

      test('Load test handles failures gracefully', () async {
        // var failureCount = 0;  // TODO: This variable is for tracking, uncomment if needed
        final result = await LoadTester.runSequentialLoad(
          'failure_test',
          5,
          (index) async {
            if (index == 2) {
              // failureCount++;
              throw Exception('Test error');
            }
          },
        );

        expect(result.failedOperations, greaterThanOrEqualTo(1));
      });

      test('Load test results can be retrieved', () async {
        await LoadTester.runSequentialLoad(
          'test1',
          5,
          (index) async {
            await Future.delayed(const Duration(milliseconds: 1));
          },
        );

        final results = LoadTester.getResults();
        expect(results.isNotEmpty, true);

        final specificResult = LoadTester.getResultByName('test1');
        expect(specificResult, isNotNull);
        expect(specificResult!.testName, 'test1');
      });

      test('Load test metrics are accurate', () async {
        final result = await LoadTester.runSequentialLoad(
          'metrics_test',
          3,
          (index) async {
            await Future.delayed(const Duration(milliseconds: 10));
          },
        );

        expect(result.totalOperations, 3);
        expect(result.totalDuration.inMilliseconds, greaterThanOrEqualTo(30));
        expect(result.averageDuration.inMilliseconds, greaterThan(0));
        expect(result.operationsPerSecond, greaterThan(0));
      });
    });

    // Integration Tests
    group('PHASE 4 Integration', () {
      setUp(() async {
        await LoggerService.initialize(
            Directory.systemTemp.createTempSync().path);
        await CacheManager.initialize();
        await PerformanceMonitor.initialize();
        await MemoryProfiler.initialize();
      });

      tearDown(() async {
        await LoggerService.dispose();
        await CacheManager.dispose();
        await PerformanceMonitor.dispose();
        await MemoryProfiler.dispose();
      });

      test('All systems initialize together', () {
        expect(LoggerService, isNotNull);
        expect(CacheManager, isNotNull);
        expect(PerformanceMonitor, isNotNull);
        expect(MemoryProfiler, isNotNull);
      });

      test('Performance and logging work together', () {
        LoggerService.info('Starting performance test');
        PerformanceMonitor.startTimer('integrated_test');

        Future.delayed(const Duration(milliseconds: 10));

        PerformanceMonitor.stopTimer('integrated_test');
        LoggerService.info('Performance test complete');

        final logStats = LoggerService.getStats();
        final perfStats = PerformanceMonitor.getStats();

        expect(logStats['totalLogs'], greaterThanOrEqualTo(2));
        expect(perfStats['totalOperations'], greaterThanOrEqualTo(1));
      });

      test('Caching with performance monitoring', () async {
        final result =
            await PerformanceMonitor.measureAsync('cache_operation', () async {
          CacheManager.put('test_key', 'test_value');
          return CacheManager.get<String>('test_key');
        });

        expect(result, 'test_value');

        final stats = PerformanceMonitor.getStats();
        expect(stats['totalOperations'], greaterThanOrEqualTo(1));
      });
    });
  });
}
