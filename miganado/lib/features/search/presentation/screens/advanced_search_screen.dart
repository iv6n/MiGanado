/// Advanced search screen for animals
///
/// Provides comprehensive search and filtering capabilities:
/// - Text search (name, arete)
/// - Multiple filter dimensions
/// - Sorting options
/// - Pagination support
/// - Search history
/// - Results display
/// - Smooth animations

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/animation/animation_utils.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/features/search/domain/models/search_criteria.dart';
import 'package:miganado/features/search/presentation/providers/search_providers.dart';

class AdvancedSearchScreen extends ConsumerStatefulWidget {
  const AdvancedSearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AdvancedSearchScreen> createState() =>
      _AdvancedSearchScreenState();
}

class _AdvancedSearchScreenState extends ConsumerState<AdvancedSearchScreen> {
  late TextEditingController _queryController;
  bool _showFilters = false;

  @override
  void initState() {
    super.initState();
    _queryController = TextEditingController();
  }

  @override
  void dispose() {
    _queryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final criteria = ref.watch(searchCriteriaProvider);
    final results = ref.watch(searchResultsProvider);

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Búsqueda Avanzada'), // TODO: Mover a AppStrings y ARB
        elevation: 0,
        actions: [
          if (criteria.hasActiveFilters())
            IconButton(
              icon: const Icon(Icons.clear_all),
              tooltip: 'Limpiar filtros', // TODO: Mover a AppStrings y ARB
              onPressed: () {
                ref.read(searchCriteriaProvider.notifier).state =
                    const SearchCriteria();
                _queryController.clear();
              },
            ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade50,
            child: Column(
              children: [
                TextField(
                  controller: _queryController,
                  decoration: InputDecoration(
                    hintText: 'Buscar por nombre o arete...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _queryController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _queryController.clear();
                              ref.read(searchCriteriaProvider.notifier).state =
                                  criteria.copyWith(query: '');
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (value) {
                    ref.read(searchCriteriaProvider.notifier).state =
                        criteria.copyWith(query: value);
                  },
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() => _showFilters = !_showFilters);
                        },
                        icon: const Icon(Icons.filter_list),
                        label: const Text(
                            'Filtros'), // TODO: Mover a AppStrings y ARB
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          _queryController.clear();
                          ref.read(searchCriteriaProvider.notifier).state =
                              const SearchCriteria();
                        },
                        icon: const Icon(Icons.restart_alt),
                        label: const Text(
                            'Limpiar'), // TODO: Mover a AppStrings y ARB
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Filters panel
          if (_showFilters) _buildFiltersPanel(context, ref, criteria),

          // Results counter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: results.when(
              loading: () => const SkeletonLoader(height: 18),
              error: (error, st) => FadeInAnimation(
                child: Text(
                  '❌ Error: $error', // TODO: Remover emoji y usar AppStrings
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              data: (result) {
                if (result.animals.isEmpty && !criteria.hasActiveFilters()) {
                  return const Text(
                      'Usa el buscador para encontrar animales'); // TODO: Mover a AppStrings y ARB
                }
                return FadeInAnimation(
                  child: Text(
                    'Resultados: ${result.animals.length}/${result.totalCount} '
                    '(página ${result.pageNumber}/${result.totalPages})',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                  ),
                );
              },
            ),
          ),

          // Results list
          Expanded(
            child: results.when(
              loading: () => ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: SkeletonLoader(
                    width: double.infinity,
                    height: 120,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              error: (error, st) => FadeInAnimation(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, size: 48, color: Colors.red),
                      const SizedBox(height: 16),
                      Text('${AppStrings.errorTitle}: $error'),
                    ],
                  ),
                ),
              ),
              data: (result) {
                if (result.animals.isEmpty) {
                  return EmptyStateWidget(
                    icon: Icons.search_off,
                    title: criteria.hasActiveFilters()
                        ? 'No se encontraron resultados' // TODO: Mover a AppStrings y ARB
                        : 'Comienza a buscar', // TODO: Mover a AppStrings y ARB
                    subtitle: criteria.hasActiveFilters()
                        ? 'Intenta con otros filtros' // TODO: Mover a AppStrings y ARB
                        : 'Usa el buscador para encontrar animales', // TODO: Mover a AppStrings y ARB
                  );
                }

                return ListView(
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ...List.generate(
                      result.animals.length,
                      (index) {
                        final animal = result.animals[index];
                        return SlideInAnimation(
                          direction: SlideDirection.bottom,
                          child: _buildAnimalCard(context, animal),
                        );
                      },
                    ),
                    _buildPaginationControls(context, ref, result),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFiltersPanel(
      BuildContext context, WidgetRef ref, SearchCriteria criteria) {
    return SlideInAnimation(
      direction: SlideDirection.top,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInAnimation(
              child: Text(
                'Filtros', // TODO: Mover a AppStrings y ARB
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 12),

            // Sort by
            FadeInAnimation(
              child: Text(
                'Ordenar por:',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            FadeInAnimation(
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<SearchSortBy>(
                      value: criteria.sortBy,
                      isExpanded: true,
                      items: SearchSortBy.values
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(_sortByLabel(e)),
                              ))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          ref.read(searchCriteriaProvider.notifier).state =
                              criteria.copyWith(sortBy: value);
                        }
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      criteria.sortDirection == SortDirection.ascending
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                    ),
                    onPressed: () {
                      ref.read(searchCriteriaProvider.notifier).state =
                          criteria.copyWith(
                        sortDirection:
                            criteria.sortDirection == SortDirection.ascending
                                ? SortDirection.descending
                                : SortDirection.ascending,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Weight range
            Text(
              'Rango de peso (kg):',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Mín',
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: criteria.weightMin?.toString() ?? '',
                    ),
                    onChanged: (value) {
                      final weight = double.tryParse(value);
                      ref.read(searchCriteriaProvider.notifier).state =
                          criteria.copyWith(weightMin: weight);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Máx',
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: criteria.weightMax?.toString() ?? '',
                    ),
                    onChanged: (value) {
                      final weight = double.tryParse(value);
                      ref.read(searchCriteriaProvider.notifier).state =
                          criteria.copyWith(weightMax: weight);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimalCard(BuildContext context, Animal animal) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Text(
            animal.earTagNumber.isNotEmpty
                ? animal.earTagNumber.substring(0, 1).toUpperCase()
                : '?',
            style: TextStyle(color: Colors.blue.shade700),
          ),
        ),
        title: Text(
          animal.customName ?? animal.earTagNumber,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${AppStrings.numberAretLabel}: ${animal.earTagNumber}'),
            Text(
                'Categoría: ${animal.lifeStage.descripcion}'), // Usar extensión para Spanish
          ],
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.grey.shade400,
        ),
        onTap: () {
          // TODO: Navigate to animal detail
        },
      ),
    );
  }

  Widget _buildPaginationControls(
      BuildContext context, WidgetRef ref, dynamic result) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: result.offset > 0
                ? () {
                    // ref.read(loadPreviousPageProvider).call();
                  }
                : null,
            icon: const Icon(Icons.arrow_back),
            label: const Text('Anterior'),
          ),
          Text(
            'Página ${result.pageNumber}/${result.totalPages}',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          ElevatedButton.icon(
            onPressed: result.hasMore
                ? () {
                    // ref.read(loadNextPageProvider).call();
                  }
                : null,
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Siguiente'),
          ),
        ],
      ),
    );
  }

  String _sortByLabel(SearchSortBy sortBy) {
    switch (sortBy) {
      case SearchSortBy.name:
        return 'Nombre';
      case SearchSortBy.arete:
        return 'Arete';
      case SearchSortBy.dateAdded:
        return 'Fecha agregado';
      case SearchSortBy.weight:
        return 'Peso';
      case SearchSortBy.age:
        return 'Edad';
    }
  }
}
