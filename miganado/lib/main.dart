import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:miganado/l10n/generated/app_localizations.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/services/seed_database_fresh.dart';
import 'package:miganado/services/seed_eventos_calendario_animales.dart';
import 'package:miganado/services/demo_seed_data.dart';

import 'package:miganado/core/routing/app_router.dart';
import 'package:miganado/core/services/logger_service.dart';
import 'package:miganado/core/performance/logger_service.dart' as perf_logger;
import 'package:miganado/core/performance/cache_manager.dart';
import 'package:miganado/core/performance/performance_monitor.dart';
import 'package:miganado/core/performance/memory_profiler.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // ============ PHASE 4: Performance System Initialization ============

    // Initialize Performance Logger
    final appDir = Directory.systemTemp;
    await perf_logger.LoggerService.initialize('${appDir.path}/miganado_logs');
    perf_logger.LoggerService.info(
        '🚀 PHASE 4: Performance system initializing...');

    // Initialize Cache Manager
    await CacheManager.initialize();
    perf_logger.LoggerService.info('✓ Cache manager initialized');

    // Initialize Performance Monitor
    await PerformanceMonitor.initialize();
    perf_logger.LoggerService.info('✓ Performance monitor initialized');

    // Initialize Memory Profiler
    await MemoryProfiler.initialize();
    perf_logger.LoggerService.info('✓ Memory profiler initialized');

    // ============ Standard Initialization ============

    LoggerService.info('🚀 Initializing MiGanado with Isar...');

    // ⚠️  DELETE DATABASE ON EVERY STARTUP
    // Uncomment the next 3 lines to reset the database on every app launch
    //await ResetDatabase.deleteIsarDatabase();
    //LoggerService.info('🗑️  Database deleted on startup');
    //perf_logger.LoggerService.info('🗑️  Database deleted on startup');

    // 1. Initialize Isar Database
    await PerformanceMonitor.measureAsync('database_init', () async {
      await MiGanadoDatabase.init();
    });
    LoggerService.info('✓ Isar Database initialized');
    perf_logger.LoggerService.info('✓ Isar Database initialized');

    // 2. Load example data (only first run)
    final database = MiGanadoDatabase();
    await PerformanceMonitor.measureAsync('seed_database', () async {
      await SeedDatabaseFresh.seedAll(database);
    });
    LoggerService.info('✓ Example data loaded');
    perf_logger.LoggerService.info('✓ Example data loaded');

    // 2b. Load demo animals
    await PerformanceMonitor.measureAsync('seed_demo_animals', () async {
      await DemoSeedData.seedDemoAnimals(database);
    });
    LoggerService.info('✓ Demo animals loaded for app showcase');
    perf_logger.LoggerService.info('✓ Demo animals loaded for app showcase');

    // 3. Cargar eventos con información del animal
    try {
      await PerformanceMonitor.measureAsync('seed_eventos', () async {
        await SeedEventosCalendarioAnimales.seedEventosConAnimales(database);
      });
      LoggerService.info('✓ Calendar events with animal information loaded');
      perf_logger.LoggerService.info(
          '✓ Calendar events with animal information loaded');
    } catch (e) {
      LoggerService.warning('⚠️  Events already loaded or error: $e');
      perf_logger.LoggerService.warning(
          '⚠️  Events already loaded or error: $e');
    }

    // Log performance stats
    final perfStats = PerformanceMonitor.getStats();
    final contextMap = <String, dynamic>{
      'totalOperations': perfStats['totalOperations'],
      'estimatedFps': perfStats['estimatedFps'],
    };
    perf_logger.LoggerService.info('Performance startup stats', contextMap);

    runApp(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(database),
        ],
        child: const MyApp(),
      ),
    );
  } catch (e, st) {
    LoggerService.error('✗ ERROR FATAL: $e', e, st);
    perf_logger.LoggerService.error('✗ ERROR FATAL: $e');
    rethrow;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MiGanado',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
