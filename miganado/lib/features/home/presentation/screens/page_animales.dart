import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/home/presentation/providers/home_providers.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';
import 'package:miganado/ui/screens/register_animal_screen.dart';

class PageAnimales extends ConsumerStatefulWidget {
  const PageAnimales({super.key});

  @override
  ConsumerState<PageAnimales> createState() => _PageAnimalesState();
}

class _PageAnimalesState extends ConsumerState<PageAnimales> {
  String searchQuery = '';
  String selectedFilter = 'Todos';

  @override
  Widget build(BuildContext context) {
    final animalsAsync = ref.watch(animalsStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Directorio de Animales'),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Nuevo Animal'),
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => const RegisterAnimalScreen(),
          );
        },
      ),
      body: animalsAsync.when(
        data: (animals) {
          // Filtrar animales por búsqueda
          final filtered = animals.where((animal) {
            final matchSearch = searchQuery.isEmpty ||
                animal.numeroArete
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase()) ||
                (animal.nombrePersonalizado
                        ?.toLowerCase()
                        .contains(searchQuery.toLowerCase()) ??
                    false);
            return matchSearch;
          }).toList();

          return Column(
            children: [
              // Barra de búsqueda
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) => setState(() => searchQuery = value),
                  decoration: InputDecoration(
                    hintText: 'Buscar por arete o nombre...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => setState(() => searchQuery = ''),
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              // Filtros rápidos
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    _buildFilterChip('Todos'),
                    _buildFilterChip('Bovinos'),
                    _buildFilterChip('Equinos'),
                    _buildFilterChip('Activos'),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // Contador de animales
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${filtered.length} animal${filtered.length != 1 ? 'es' : ''}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Lista de animales
              Expanded(
                child: filtered.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pets, size: 64, color: Colors.grey[300]),
                            const SizedBox(height: 16),
                            Text(
                              'No se encontraron animales',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final animal = filtered[index];
                          return _AnimalCard(
                            animal: animal,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AnimalDetailScreen(
                                    animalUuid: animal.uuid,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $err'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    final isSelected = selectedFilter == label;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (value) {
          setState(() => selectedFilter = value ? label : 'Todos');
        },
        backgroundColor: Colors.grey[100],
        selectedColor: Colors.green.withOpacity(0.3),
        side: BorderSide(
          color: isSelected ? Colors.green : Colors.grey[300]!,
        ),
      ),
    );
  }
}

class _AnimalCard extends StatelessWidget {
  final dynamic animal;
  final VoidCallback onTap;

  const _AnimalCard({
    required this.animal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Determinar color por categoría
    final colorMap = {
      'VACA': Colors.pink,
      'TORO': Colors.orange,
      'BECERRA': Colors.purple,
      'BECERRO': Colors.blue,
      'VAQUILLA': Colors.cyan,
      'NOVILLO': Colors.brown,
      'TORETE': Colors.red,
      'CABALLO': Colors.amber,
      'POTRO': Colors.teal,
      'YEGUA': Colors.indigo,
    };

    final categoryColor =
        colorMap[animal.categoria.toString().split('.').last.toUpperCase()] ??
            Colors.green;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border(
              left: BorderSide(color: categoryColor, width: 4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Encabezado con arete y nombre
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Arete: ${animal.numeroArete}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          if (animal.nombrePersonalizado != null &&
                              animal.nombrePersonalizado!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                animal.nombrePersonalizado!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Colors.grey[600],
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: categoryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        animal.categoria.toString().split('.').last,
                        style: TextStyle(
                          color: categoryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Información en grid
                Row(
                  children: [
                    Expanded(
                      child: _InfoTile(
                        label: 'Sexo',
                        value: animal.sexo.toString().split('.').last,
                        icon: Icons.wc,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _InfoTile(
                        label: 'Etapa',
                        value: animal.etapa.toString().split('.').last,
                        icon: _getStageIcon(
                            animal.etapa.toString().split('.').last),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _InfoTile(
                        label: 'Edad',
                        value: '${animal.edadMeses} meses',
                        icon: Icons.calendar_today,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Raza y info adicional
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Raza: ${animal.raza}',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 12),
                    if (animal.vacunado)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.check_circle,
                              size: 14,
                              color: Colors.green,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Vacunado',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoTile({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14, color: Colors.green),
            const SizedBox(width: 4),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

IconData _getStageIcon(String stage) {
  final stageMap = {
    'BECERRO': Icons.baby_changing_station,
    'BECERRA': Icons.baby_changing_station,
    'VAQUILLA': Icons.trending_up,
    'NOVILLO': Icons.trending_up,
    'TORETE': Icons.fitness_center,
    'VACA': Icons.favorite,
    'TORO': Icons.shield,
    'POTRO': Icons.pets,
    'YEGUA': Icons.favorite,
    'CABALLO': Icons.shield,
  };
  return stageMap[stage] ?? Icons.help_outline;
}
