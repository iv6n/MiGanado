import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/ui/screens/register_animal_screen.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';

/// Pantalla principal - Lista de animales
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: FutureBuilder<List<AnimalEntity>>(
        future: database.getAllAnimales(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text('${AppStrings.errorTitle}: ${snapshot.error}'),
                ],
              ),
            );
          }

          final animals = snapshot.data ?? [];

          if (animals.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.pets_outlined, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text(
                    'No hay animales registrados', // TODO: Mover a AppStrings y ARB
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const RegisterAnimalScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Nuevo Animal'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: animals.length,
            itemBuilder: (context, index) {
              final animal = animals[index];
              return AnimalCard(animal: animal);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'home_screen_fab_add',
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const RegisterAnimalScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// Card para mostrar un animal en la lista
class AnimalCard extends StatelessWidget {
  final AnimalEntity animal;

  const AnimalCard({required this.animal, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.pets,
              color: Colors.green.shade700,
            ),
          ),
        ),
        title: Text(
          animal.customName ?? 'Animal ${animal.earTagNumber}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Arete: ${animal.earTagNumber}'),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AnimalDetailScreen(animalUuid: animal.uuid),
            ),
          );
        },
      ),
    );
  }
}
