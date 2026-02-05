import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animal_filters_provider.dart';

/// Widget para mostrar y aplicar filtros de animales
class AnimalFiltersWidget extends ConsumerStatefulWidget {
  final bool expanded;
  final Function(bool)? onExpandedChanged;

  const AnimalFiltersWidget({
    this.expanded = false,
    this.onExpandedChanged,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<AnimalFiltersWidget> createState() =>
      _AnimalFiltersWidgetState();
}

class _AnimalFiltersWidgetState extends ConsumerState<AnimalFiltersWidget> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.expanded;
  }

  @override
  Widget build(BuildContext context) {
    final filters = ref.watch(animalFiltersProvider);
    final tiposGanado = ref.watch(tiposGanadoProvider);
    final sexos = ref.watch(sexosProvider);
    final estadosSalud = ref.watch(estadosSaludProvider);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          // Header con botón de expandir
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
              widget.onExpandedChanged?.call(_isExpanded);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Colors.green.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Filtros${filters.hasFilters ? ' (${_countActiveFilters(filters)})' : ''}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),

          // Filtros expandidos
          if (_isExpanded) ...[
            const Divider(height: 0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  // Búsqueda
                  TextField(
                    onChanged: (value) {
                      ref.read(animalFiltersProvider.notifier).state = ref
                          .read(animalFiltersProvider)
                          .copyWith(searchQuery: value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Buscar por arete o nombre',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: filters.searchQuery != null &&
                              filters.searchQuery!.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                ref.read(animalFiltersProvider.notifier).state =
                                    ref
                                        .read(animalFiltersProvider)
                                        .copyWith(searchQuery: '');
                              },
                            )
                          : null,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Tipo de Ganado
                  DropdownButtonFormField<String>(
                    value: filters.tipoGanado,
                    decoration: InputDecoration(
                      labelText: 'Tipo de Ganado',
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    items: [
                      const DropdownMenuItem(
                        value: null,
                        child: Text('Todos'),
                      ),
                      ...tiposGanado.map((tipo) {
                        return DropdownMenuItem(
                          value: tipo,
                          child: Text(
                            tipo[0].toUpperCase() + tipo.substring(1),
                          ),
                        );
                      }),
                    ],
                    onChanged: (value) {
                      ref.read(animalFiltersProvider.notifier).state = ref
                          .read(animalFiltersProvider)
                          .copyWith(tipoGanado: value);
                    },
                  ),
                  const SizedBox(height: 12),

                  // Sexo
                  DropdownButtonFormField<String>(
                    value: filters.sexo,
                    decoration: InputDecoration(
                      labelText: 'Sexo',
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    items: [
                      const DropdownMenuItem(
                        value: null,
                        child: Text('Todos'),
                      ),
                      ...sexos.map((sexo) {
                        return DropdownMenuItem(
                          value: sexo,
                          child: Text(
                            sexo[0].toUpperCase() + sexo.substring(1),
                          ),
                        );
                      }),
                    ],
                    onChanged: (value) {
                      ref.read(animalFiltersProvider.notifier).state =
                          ref.read(animalFiltersProvider).copyWith(sexo: value);
                    },
                  ),
                  const SizedBox(height: 12),

                  // Estado de Salud
                  DropdownButtonFormField<String>(
                    value: filters.estadoSalud,
                    decoration: InputDecoration(
                      labelText: 'Estado de Salud',
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    items: [
                      const DropdownMenuItem(
                        value: null,
                        child: Text('Todos'),
                      ),
                      ...estadosSalud.map((estado) {
                        return DropdownMenuItem(
                          value: estado,
                          child: Text(
                            _getNombreEstadoSalud(estado),
                          ),
                        );
                      }),
                    ],
                    onChanged: (value) {
                      ref.read(animalFiltersProvider.notifier).state = ref
                          .read(animalFiltersProvider)
                          .copyWith(estadoSalud: value);
                    },
                  ),
                  const SizedBox(height: 16),

                  // Botón Limpiar Filtros
                  if (filters.hasFilters)
                    ElevatedButton.icon(
                      onPressed: () {
                        ref.read(animalFiltersProvider.notifier).state =
                            AnimalFilters();
                      },
                      icon: const Icon(Icons.clear_all),
                      label: const Text('Limpiar Filtros'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  int _countActiveFilters(AnimalFilters filters) {
    int count = 0;
    if (filters.searchQuery != null && filters.searchQuery!.isNotEmpty) count++;
    if (filters.tipoGanado != null) count++;
    if (filters.sexo != null) count++;
    if (filters.estadoSalud != null) count++;
    if (filters.ubicacion != null && filters.ubicacion!.isNotEmpty) count++;
    return count;
  }

  String _getNombreEstadoSalud(String estado) {
    switch (estado) {
      case 'vacunado':
        return 'Vacunado';
      case 'no_vacunado':
        return 'No Vacunado';
      case 'desparasitado':
        return 'Desparasitado';
      case 'no_desparasitado':
        return 'No Desparasitado';
      default:
        return estado;
    }
  }
}
