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
              // Resumen de animales por etapa
              SliverToBoxAdapter(
                child: _buildResumenCard(animals, context),
              ),
              // Lista de animales + botón agregar
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final animal = animals[index];
                    return _buildAnimalCard(animal, context);
                  }, childCount: animals.length),
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
    // Contadores por etapa y categoría
    final items = <Map<String, dynamic>>[];

    int becerros = 0;
    int becerras = 0;
    int vaquillas = 0;
    int novillos = 0;
    int vacas = 0;
    int toros = 0;
    int caballos = 0;
    int burros = 0;
    int mulas = 0;

    for (final animal in animals) {
      final etapa = animal.etapa;
      final especie = animal.especie;

      if (especie.name == 'bovino') {
        if (etapa.name == 'becerro') {
          if (animal.sexo.name == 'macho') {
            becerros++;
          } else {
            becerras++;
          }
        } else if (etapa.name == 'vaquilla') {
          vaquillas++;
        } else if (etapa.name == 'novillo' ||
            etapa.name == 'torete' ||
            etapa.name == 'novillo_castrado') {
          novillos++;
        } else if (etapa.name == 'vaca') {
          vacas++;
        } else if (etapa.name == 'toro') {
          toros++;
        }
      } else if (especie.name == 'equino') {
        if (animal.categoria.name == 'caballo') {
          caballos++;
        } else if (animal.categoria.name == 'burro') {
          burros++;
        } else if (animal.categoria.name == 'mula') {
          mulas++;
        }
      }
    }

    // Construir lista de items
    if (becerros > 0)
      items.add({
        'label': 'Becerros ♂',
        'valor': becerros,
        'asset': 'assets/images/becerro.png'
      });
    if (becerras > 0)
      items.add({
        'label': 'Becerras ♀',
        'valor': becerras,
        'asset': 'assets/images/becerro.png'
      });
    if (vaquillas > 0)
      items.add({
        'label': 'Vaquillas',
        'valor': vaquillas,
        'asset': 'assets/images/novillo.png'
      });
    if (novillos > 0)
      items.add({
        'label': 'Novillos',
        'valor': novillos,
        'asset': 'assets/images/novillo.png'
      });
    if (vacas > 0)
      items.add({
        'label': 'Vacas',
        'valor': vacas,
        'asset': 'assets/images/vaca.png'
      });
    if (toros > 0)
      items.add({
        'label': 'Toros',
        'valor': toros,
        'asset': 'assets/images/toro.png'
      });
    if (caballos > 0)
      items.add({
        'label': 'Caballos',
        'valor': caballos,
        'asset': 'assets/images/caballo.png'
      });
    if (burros > 0)
      items.add({
        'label': 'Burros',
        'valor': burros,
        'asset': 'assets/images/burro.png'
      });
    if (mulas > 0)
      items.add({
        'label': 'Mulas',
        'valor': mulas,
        'asset': 'assets/images/mula.png'
      });

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Resumen',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Total: ${animals.length}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (items.isNotEmpty)
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: _buildResumenItemCard(
                      item['label'],
                      item['valor'].toString(),
                      item['asset'],
                    ),
                  );
                },
              ),
            )
          else
            Center(
              child: Text(
                'Sin animales',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildResumenItemCard(
    String label,
    String valor,
    String assetPath,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 70,
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                assetPath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: const TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
          ],
        ),
      ),
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
