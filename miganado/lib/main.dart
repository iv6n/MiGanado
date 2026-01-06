import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/services/seed_database_typed.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa la base de datos TypeSafe con Hive
  final database = MiGanadoDatabaseTyped();
  await database.init();

  // Cargar datos de ejemplo si la BD está vacía
  await SeedDatabaseTyped.seedAll(database);

  // Corre la app con el database provider configurado
  runApp(
    ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(database),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiGanado',
      theme: AppTheme.lightTheme(),
      home: const HomeScreen(),
    );
  }
}
