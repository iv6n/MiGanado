import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/services/seed_database_full.dart';
import 'package:miganado/features/home/presentation/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    print('🚀 Iniciando MiGanado con Isar...');

    // 1. Inicializar Isar Database
    await MiGanadoDatabase.init();
    print('✓ Isar Database inicializado');

    // 2. Cargar datos de ejemplo (solo primera ejecución)
    final database = MiGanadoDatabase();
    await SeedDatabaseFull.seedAll(database);
    print('✓ Datos de ejemplo cargados');

    // 3. Iniciar app con Riverpod
    runApp(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(database),
        ],
        child: const MyApp(),
      ),
    );
  } catch (e, st) {
    print('✗ ERROR FATAL: $e');
    print('Stack trace: $st');
    rethrow;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiGanado',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
