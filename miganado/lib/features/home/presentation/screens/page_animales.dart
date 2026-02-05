import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/features/home/presentation/providers/home_providers.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';

class PageAnimales extends ConsumerStatefulWidget {
  const PageAnimales({super.key});

  @override
  ConsumerState<PageAnimales> createState() => _PageAnimalesState();
}

class _PageAnimalesState extends ConsumerState<PageAnimales> {
  String searchQuery = '';
  Set<String> selectedFilters = {};
  String? selectedEtapa;
  bool showEnfermosOnly = false;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animalsAsync = ref.watch(animalsStreamProvider);

    return Scaffold(
      body: animalsAsync.when(
        data: (animals) {
          // Filtrar animales
          final filtered = animals.where((animal) {
            final queryLower = searchQuery.toLowerCase();

            // Búsqueda por múltiples campos
            final matchSearch = searchQuery.isEmpty ||
                animal.earTagNumber.toLowerCase().contains(queryLower) ||
                (animal.customName?.toLowerCase().contains(queryLower) ??
                    false) ||
                animal.breed.toLowerCase().contains(queryLower) ||
                animal.sex
                    .toString()
                    .split('.')
                    .last
                    .toLowerCase()
                    .contains(queryLower) ||
                animal.lifeStage
                    .toString()
                    .split('.')
                    .last
                    .toLowerCase()
                    .contains(queryLower) ||
                animal.category
                    .toString()
                    .split('.')
                    .last
                    .toLowerCase()
                    .contains(queryLower) ||
                (animal.notes?.toLowerCase().contains(queryLower) ?? false);

            // Filtro por categoría
            final matchCategoria = selectedFilters.isEmpty ||
                selectedFilters
                    .contains(animal.category.toString().split('.').last);
            // Filtro por etapa
            final matchEtapa = selectedEtapa == null ||
                selectedEtapa ==
                    animal.etapa
                        .toString()
                        .split('.')
                        .last; // Compare with enum name

            // Filtro por estado de salud (enfermo)
            final matchSalud = !showEnfermosOnly ||
                (animal.notes?.toLowerCase().contains('enferm') ?? false);

            return matchSearch && matchCategoria && matchEtapa && matchSalud;
          }).toList();

          return Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  // AppBar con barra de búsqueda integrada
                  SliverAppBar(
                    title: const Text(AppStrings.directoryAnimalsTitle),
                    centerTitle: true,
                    elevation: 0,
                    floating: true,
                    snap: true,
                    pinned: false,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(130),
                      child: _buildSearchAndFiltersBar(),
                    ),
                  ),
                  // Contador de animales
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${filtered.length} animal${filtered.length != 1 ? 'es' : ''}',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  // Lista de animales
                  if (filtered.isEmpty)
                    SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pets, size: 64, color: Colors.grey[300]),
                            const SizedBox(height: 16),
                            Text(
                              'No se encontraron animales',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Intenta con otros filtros o búsqueda',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.grey[500],
                                  ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
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
                          childCount: filtered.length,
                        ),
                      ),
                    ),
                ],
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

  /// Widget que contiene barra de búsqueda y filtros
  Widget _buildSearchAndFiltersBar() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Buscar',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
            ),
          ),
        ),
        // Barra de búsqueda mejorada
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: TextField(
            onChanged: (value) => setState(() => searchQuery = value),
            decoration: InputDecoration(
              hintText: 'Arete, nombre, raza, sexo...',
              hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
              prefixIcon: const Icon(Icons.search, color: Colors.green),
              suffixIcon: searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => setState(() => searchQuery = ''),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.green, width: 2),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            ),
          ),
        ),
        // Sección de filtros categoría
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 8,
            children: [
              // Bovinos jóvenes
              _buildMultiSelectChip('Becerro/Becerra', 'becerro', 'becerra'),
              // Bovinos intermedios
              _buildMultiSelectChip('Vaquilla/Torete', 'vaquilla', 'torete'),
              _buildMultiSelectChip('Novillo', 'novillo'),
              // Bovinos adultos
              _buildMultiSelectChip('Vaca', 'vaca'),
              _buildMultiSelectChip('Toro', 'toro'),
              // Equinos jóvenes
              _buildMultiSelectChip('Potro/Potranca', 'potro', 'potranca'),
              // Equinos adultos
              _buildMultiSelectChip('Caballo/Yegua', 'caballo', 'yegua'),
              // Otros
              _buildMultiSelectChip('Burro/Burra', 'burro', 'burra'),
              _buildMultiSelectChip('Mula', 'mula'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMultiSelectChip(String label, String value1,
      [String? value2, String? value3]) {
    final values = [
      value1.toLowerCase(),
      if (value2 != null) value2.toLowerCase(),
      if (value3 != null) value3.toLowerCase()
    ];
    final isSelected = values.any((v) => selectedFilters.contains(v));
    final colorMap = {
      'becerro': const Color.fromARGB(255, 199, 190, 106),
      'becerra': const Color.fromARGB(255, 199, 190, 106),
      'vaquilla': Colors.green,
      'torete': Colors.orange,
      'novillo': Colors.orange,
      'vaca': Colors.blue,
      'toro': Colors.red,
      'potro': Colors.lightBlue,
      'potranca': Colors.lightBlue,
      'caballo': Colors.brown,
      'yegua': Colors.purple,
      'burro': Colors.grey,
      'burra': Colors.grey,
      'mula': Colors.black,
    };
    // Usar el color del primer valor
    final chipColor = colorMap[value1.toLowerCase()] ?? Colors.grey;

    return FilterChip(
      label: Text(label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          if (selected) {
            for (final v in values) {
              selectedFilters.add(v);
            }
          } else {
            for (final v in values) {
              selectedFilters.remove(v);
            }
          }
        });
      },
      backgroundColor: chipColor.withOpacity(0.1),
      selectedColor: chipColor.withOpacity(0.3),
      side: BorderSide(
        color: isSelected ? chipColor : Colors.grey[300]!,
        width: isSelected ? 2 : 1,
      ),
      labelStyle: TextStyle(
        color: chipColor,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
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
    // Determinar color por ETAPA (no por categoría)
    final colorMap = {
      'Becerro': const Color.fromARGB(255, 199, 190, 106),
      'Becerra': const Color.fromARGB(255, 199, 190, 106),
      'Vaquilla': Colors.green,
      'Torete': Colors.orange,
      'Novillo': Colors.orange,
      'Vaca': Colors.blue,
      'Toro': Colors.red,
      'Potro': Colors.lightBlue,
      'Potranca': Colors.lightBlue,
      'Caballo': Colors.brown,
      'Yegua': Colors.purple,
      'Burro': Colors.grey,
      'Burra': Colors.grey,
      'Mula': Colors.black,
    };

    final stageName =
        animal.etapaDescripcion; // Usar propiedad Spanish del Animal
    final stageColor = colorMap[stageName] ?? Colors.green;

    // Obtener símbolo de sexo
    final sexoSymbol =
        animal.sexo.toString().split('.').last.toLowerCase() == 'male'
            ? '♂️'
            : '♀️';

    // Función para convertir meses a años y meses
    String edadFormato(int meses) {
      if (meses < 12) {
        return '$meses meses';
      } else {
        int anios = meses ~/ 12;
        int mesosRest = meses % 12;
        if (mesosRest == 0) {
          return '$anios ${anios == 1 ? 'año' : 'años'}';
        } else {
          return '$anios ${anios == 1 ? 'año' : 'años'} $mesosRest ${mesosRest == 1 ? 'mes' : 'meses'}';
        }
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 14),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border(
              left: BorderSide(color: stageColor, width: 6),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Avatar con imagen de etapa
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: stageColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: stageColor,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      animal.etapaIcon, // Usar propiedad Spanish del Animal
                      width: 28,
                      height: 28,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        // Si falla la imagen, mostrar el icono
                        return Icon(
                          _getStageIcon(stageName),
                          color: stageColor,
                          size: 28,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                // Contenido principal
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Encabezado con arete y símbolo de sexo
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Arete: ${animal.numeroArete}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            sexoSymbol,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (animal.nombrePersonalizado != null &&
                                          animal
                                              .nombrePersonalizado!.isNotEmpty)
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Text(
                                            animal.nombrePersonalizado!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  color: Colors.grey[700],
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: stageColor.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: stageColor.withOpacity(0.3),
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              stageName, // Usar directamente el nombre Spanish de la extensión
                              style: TextStyle(
                                color: stageColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      // Información en grid - Solo datos importantes
                      Row(
                        children: [
                          Expanded(
                            child: _InfoTile(
                              label: 'Edad',
                              value: edadFormato(animal.edadMeses),
                              icon: Icons.calendar_today,
                              color: stageColor,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            flex: 2,
                            child: _InfoTile(
                              label: 'Raza',
                              value: animal.raza,
                              icon: Icons.pets,
                              color: stageColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Badges de estado
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (animal.vacunado)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.green.withOpacity(0.3),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Vacunado',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
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
  final Color color;

  const _InfoTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 15, color: color),
            const SizedBox(width: 6),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
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
    'becerro': Icons.baby_changing_station,
    'becerra': Icons.baby_changing_station,
    'vaquilla': Icons.trending_up,
    'novillo': Icons.trending_up,
    'torete': Icons.fitness_center,
    'vaca': Icons.favorite,
    'toro': Icons.shield,
    'potro': Icons.pets,
    'potranca': Icons.pets,
    'caballo': Icons.shield,
    'yegua': Icons.favorite,
    'burro': Icons.pets,
    'burra': Icons.pets,
    'mula': Icons.pets,
  };
  return stageMap[stage.toLowerCase()] ?? Icons.help_outline;
}
