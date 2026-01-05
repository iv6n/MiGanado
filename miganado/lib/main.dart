import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/providers/database_providers.dart';
import 'package:miganado/services/seed_database.dart';
import 'package:miganado/theme/app_theme.dart';
import 'package:miganado/ui/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa la base de datos antes de correr la app
  await initializeDatabaseProvider();

  // Agregar datos de ejemplo
  await SeedDatabase.seedAll();

  runApp(const ProviderScope(child: MyApp()));
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
