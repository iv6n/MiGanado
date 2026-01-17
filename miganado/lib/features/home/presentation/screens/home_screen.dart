import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/ui/screens/register_animal_screen.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalsAsync = ref.watch(animalsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Ganado'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterAnimalScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: animalsAsync.when(
        data: (animals) {
          if (animals.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets,
                    size: 80,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Sin animales registrados',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterAnimalScreen(),
                        ),
                      );
                    },
                    child: const Text('Registrar Primer Animal'),
                  ),
                ],
              ),
            );
          }

          return CustomScrollView(
            slivers: [
              // Resumen de animales
              SliverToBoxAdapter(
                child: _buildResumenCard(animals, context),
              ),
              // Lista de animales
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final animal = animals[index];
                      return _buildAnimalCard(animal, context);
                    },
                    childCount: animals.length,
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Text('Error: $error'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterAnimalScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildResumenCard(List<AnimalEntity> animals, BuildContext context) {
    final counts = <String, int>{};
    for (final animal in animals) {
      final especie = animal.especie.name;
      counts[especie] = (counts[especie] ?? 0) + 1;
    }

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Resumen del Rebaño',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildResumenItem(
                  'Total',
                  animals.length.toString(),
                  Icons.pets,
                  Colors.blue,
                ),
                ...counts.entries.map(
                  (entry) => _buildResumenItem(
                    entry.key,
                    entry.value.toString(),
                    Icons.info,
                    Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResumenItem(
    String label,
    String valor,
    IconData icono,
    Color color,
  ) {
    return Column(
      children: [
        Icon(icono, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          valor,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildAnimalCard(AnimalEntity animal, BuildContext context) {
    final sexoLabel = animal.sexo.name == 'Macho' ? 'Macho' : 'Hembra';
    final etapa = animal.etapaDescripcion;
    final etapaIcon = animal.etapaIcon;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: SizedBox(
          width: 48,
          height: 48,
          child: Image.asset(
            etapaIcon,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                animal.sexo.name == 'Macho' ? Icons.male : Icons.female,
                color: animal.sexo.name == 'Macho' ? Colors.blue : Colors.pink,
              );
            },
          ),
        ),
        title: Text(
          animal.nombrePersonalizado ?? 'Animal ${animal.numeroArete}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('Arete: ${animal.numeroArete}'),
            Text('Etapa: $etapa • $sexoLabel'),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnimalDetailScreen(animalUuid: animal.uuid),
            ),
          );
        },
      ),
    );
  }
}
