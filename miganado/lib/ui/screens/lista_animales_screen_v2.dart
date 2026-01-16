import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';
import 'package:miganado/ui/widgets/animal_card_widget.dart';
import 'package:miganado/ui/navigation/app_routes.dart';
import 'package:miganado/core/enums/index.dart';

/// Pantalla de lista de animales mejorada con búsqueda (FASE 4)
class ListaAnimalesScreenV2 extends ConsumerStatefulWidget {
  const ListaAnimalesScreenV2({Key? key}) : super(key: key);

  @override
  ConsumerState<ListaAnimalesScreenV2> createState() =>
      _ListaAnimalesScreenV2State();
}

class _ListaAnimalesScreenV2State extends ConsumerState<ListaAnimalesScreenV2> {
  final _searchController = TextEditingController();
  String _filtroTipo = 'todos';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animalesAsync = ref.watch(allAnimalesV2Provider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Directorio de Animales'),
        centerTitle: false,
        elevation: 1,
      ),
      body: animalesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (animales) {
          // Filtrar por búsqueda
          final filtered = animales
              .where((animal) =>
                  animal.identificadorVisible
                      .toLowerCase()
                      .contains(_searchController.text.toLowerCase()) ||
                  animal.tipo.nombreEspanol
                      .toLowerCase()
                      .contains(_searchController.text.toLowerCase()))
              .toList();

          // Filtrar por tipo si aplica
          final final_animales = _filtroTipo == 'todos'
              ? filtered
              : filtered
                  .where((a) => a.tipo.nombreEspanol == _filtroTipo)
                  .toList();

          return Column(
            children: [
              // Search bar
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Buscar animal...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onChanged: (val) => setState(() {}),
                ),
              ),

              // Tipo filter
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildFilterChip('Todos', 'todos'),
                      const SizedBox(width: 8),
                      _buildFilterChip('Vacas', 'Vaca'),
                      const SizedBox(width: 8),
                      _buildFilterChip('Toros', 'Toro'),
                      const SizedBox(width: 8),
                      _buildFilterChip('Becerros', 'Becerro/Becerra'),
                      const SizedBox(width: 8),
                      _buildFilterChip('Novillos', 'Novillo/Vaquilla'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Lista
              Expanded(
                child: final_animales.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 48,
                              color: Colors.grey[300],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'No se encontraron animales',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: final_animales.length,
                        itemBuilder: (context, index) {
                          return AnimalCardWidget(
                            animal: final_animales[index],
                            onTap: () {
                              context.push(
                                AppRoutes.detalleAnimalPath(
                                  final_animales[index].id,
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
      ),
    );
  }

  Widget _buildFilterChip(String label, String tipo) {
    final isSelected = _filtroTipo == tipo;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) => setState(() => _filtroTipo = tipo),
      backgroundColor: Colors.white,
      selectedColor: Colors.blue[50],
      side: BorderSide(
        color: isSelected ? Colors.blue : Colors.grey[300]!,
      ),
    );
  }
}
