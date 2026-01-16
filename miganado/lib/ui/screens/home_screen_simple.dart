import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

/// HomeScreen austera sin animaciones - para verificar que Riverpod funciona
class HomeScreenSimple extends ConsumerWidget {
  const HomeScreenSimple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MiGanado'),
        backgroundColor: Colors.green[700],
      ),
      body: animalesAsync.when(
        loading: () => const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Cargando animales...'),
            ],
          ),
        ),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(allAnimalesProvider);
                },
                child: const Text('Reintentar'),
              ),
            ],
          ),
        ),
        data: (animales) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Resumen
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
                      const SizedBox(height: 12),
                      Text('Total de animales: ${animales.length}'),
                      const SizedBox(height: 8),
                      Text(
                          'Vacas: ${animales.where((a) => a.sexo.toString().contains('hembra')).length}'),
                      Text(
                          'Toros: ${animales.where((a) => a.sexo.toString().contains('macho')).length}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Lista de animales
              const Text(
                'Animales',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...animales.map((animal) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(
                          animal.nombrePersonalizado ?? animal.numeroArete),
                      subtitle: Text('${animal.tipo} - ${animal.raza}'),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
