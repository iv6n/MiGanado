import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/search_filter_providers.dart';

/// Widget para búsqueda y filtrado de animales
class SearchFilterBar extends ConsumerWidget {
  final VoidCallback? onFilterTap;

  const SearchFilterBar({this.onFilterTap, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
              decoration: InputDecoration(
                hintText: 'Buscar por nombre, código...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          ref.read(searchQueryProvider.notifier).state = '';
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            onPressed: onFilterTap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green),
            ),
            child: const Icon(Icons.tune, color: Colors.green),
          ),
        ],
      ),
    );
  }
}

/// Dialog para filtros avanzados
class AdvancedFilterDialog extends ConsumerStatefulWidget {
  const AdvancedFilterDialog({super.key});

  @override
  ConsumerState<AdvancedFilterDialog> createState() =>
      _AdvancedFilterDialogState();
}

class _AdvancedFilterDialogState extends ConsumerState<AdvancedFilterDialog> {
  @override
  Widget build(BuildContext context) {
    final typeFilter = ref.watch(animalTypeFilterProvider);
    final statusFilter = ref.watch(animalStatusFilterProvider);
    final animalTypes = ref.watch(uniqueAnimalTypesProvider);

    return AlertDialog(
      title: const Text('Filtros Avanzados'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filtro por tipo
            const Text('Tipo de Animal'),
            const SizedBox(height: 8),
            animalTypes.when(
              data: (types) => DropdownButton<String?>(
                isExpanded: true,
                value: typeFilter,
                hint: const Text('Todos los tipos'),
                items: [
                  const DropdownMenuItem<String?>(
                    value: null,
                    child: Text('Todos los tipos'),
                  ),
                  ...types.map((type) => DropdownMenuItem<String?>(
                        value: type,
                        child: Text(type),
                      )),
                ],
                onChanged: (value) {
                  ref.read(animalTypeFilterProvider.notifier).state = value;
                },
              ),
              loading: () => const CircularProgressIndicator(),
              error: (err, stack) => Text('Error: $err'),
            ),
            const SizedBox(height: 24),

            // Filtro por estado
            const Text('Estado'),
            const SizedBox(height: 8),
            DropdownButton<String?>(
              isExpanded: true,
              value: statusFilter,
              hint: const Text('Todos los estados'),
              items: const [
                DropdownMenuItem<String?>(
                  value: null,
                  child: Text('Todos los estados'),
                ),
                DropdownMenuItem<String?>(
                  value: 'activo',
                  child: Text('Activos'),
                ),
                DropdownMenuItem<String?>(
                  value: 'inactivo',
                  child: Text('Inactivos'),
                ),
              ],
              onChanged: (value) {
                ref.read(animalStatusFilterProvider.notifier).state = value;
              },
            ),
            const SizedBox(height: 24),

            // Estadísticas
            const Divider(),
            const Text('Estadísticas'),
            const SizedBox(height: 8),
            ref.watch(animalCountByStatusProvider).when(
                  data: (counts) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Activos: ${counts.$1}'),
                      Text('Inactivos: ${counts.$2}'),
                    ],
                  ),
                  loading: () => const CircularProgressIndicator(),
                  error: (err, stack) => Text('Error: $err'),
                ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Limpiar filtros
            ref.read(searchQueryProvider.notifier).state = '';
            ref.read(animalTypeFilterProvider.notifier).state = null;
            ref.read(animalStatusFilterProvider.notifier).state = null;
            Navigator.pop(context);
          },
          child: const Text('Limpiar'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Aplicar'),
        ),
      ],
    );
  }
}

/// Card para mostrar estadísticas de búsqueda
class SearchStatsCard extends ConsumerWidget {
  const SearchStatsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);
    final typeFilter = ref.watch(animalTypeFilterProvider);
    final statusFilter = ref.watch(animalStatusFilterProvider);
    final animalCounts = ref.watch(animalCountByTypeProvider);

    // Si no hay filtros activos, no mostrar
    if (searchQuery.isEmpty && typeFilter == null && statusFilter == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue.shade200),
        ),
        child: Row(
          children: [
            const Icon(Icons.info_outline, color: Colors.blue),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Filtros activos:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  if (searchQuery.isNotEmpty) Text('Búsqueda: "$searchQuery"'),
                  if (typeFilter != null) Text('Tipo: $typeFilter'),
                  if (statusFilter != null)
                    Text(
                        'Estado: ${statusFilter == 'activo' ? 'Activos' : 'Inactivos'}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
