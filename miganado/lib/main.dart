import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/services/seed_database_typed.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Inicializar Hive
    final database = MiGanadoDatabaseTyped();
    await database.init();
    print('✓ Hive inicializado');

    // NO cargar datos por ahora - hay problema con TipoGanado adapter
    // await SeedDatabaseTyped.seedAll(database);
    print('✓ Base de datos lista (vacía)');

    runApp(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(database),
        ],
        child: const MyApp(),
      ),
    );
  } catch (e, st) {
    print('✗ Error: $e');
    print('$st');
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
      home: const HomeScreenTest(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestHomeScreen extends StatelessWidget {
  const TestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MiGanado - Status'),
        backgroundColor: Colors.green[700],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Status',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text('✓ Hive INICIALIZADO'),
                  const SizedBox(height: 8),
                  const Text('✓ Datos de ejemplo cargados'),
                  const SizedBox(height: 8),
                  const Text('✓ Riverpod INICIALIZADO'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenTest extends ConsumerWidget {
  const HomeScreenTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MiGanado - Dashboard'),
        backgroundColor: Colors.green[700],
      ),
      body: animalesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
            ],
          ),
        ),
        data: (animales) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Resumen',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text('Total de animales: ${animales.length}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Animales',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...animales.map((animal) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(animal.numeroArete),
                      subtitle: Text('${animal.tipo} - ${animal.raza}'),
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
