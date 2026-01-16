import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';
import 'package:miganado/ui/widgets/alertas_sanitarias_widget.dart';
import 'package:miganado/ui/widgets/animal_card_widget.dart';
import 'package:miganado/ui/widgets/loading_skeleton.dart';
import 'package:miganado/ui/navigation/app_routes.dart';

/// Pantalla de inicio mejorada con nuevo sistema de providers (FASE 4)
class HomeScreenV2 extends ConsumerWidget {
  const HomeScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animalesAsync = ref.watch(allAnimalesV2Provider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('MiGanado - Dashboard'),
        elevation: 2,
        centerTitle: false,
        actions: [
          TextButton.icon(
            icon: const Icon(Icons.list),
            label: const Text('Lista'),
            onPressed: () {
              context.push(AppRoutes.listaAnimales);
            },
          ),
          IconButton(
            icon: const Icon(Icons.warning_amber),
            tooltip: 'Alertas sanitarias',
            onPressed: () {
              context.push(AppRoutes.alertasDetail);
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: animalesAsync.when(
        loading: () => LoadingState(
          message: 'Cargando animales...',
        ),
        error: (error, stack) => ErrorState(
          title: 'Error al cargar',
          message: error.toString(),
          icon: Icons.warning_amber,
          onRetry: () {
            ref.refresh(allAnimalesV2Provider);
          },
        ),
        data: (animales) {
          if (animales.isEmpty) {
            return _buildEmptyState(context);
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                // Widget de alertas sanitarias globales
                const AlertasSanitariasWidget(),

                // Sección: Estadísticas Rápidas del Rebaño
                _buildEstadisticasRapidas(context, animales),

                // Sección: Animales
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mi Rebaño',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                      ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${animales.length} animal${animales.length != 1 ? 'es' : ''}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.grey[500],
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.blue[200]!,
                                ),
                              ),
                              child: Text(
                                'Total: ${animales.length}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: animales.length,
                        itemBuilder: (context, index) {
                          return AnimalCardWidget(
                            animal: animales[index],
                            onTap: () {
                              context.push(
                                AppRoutes.detalleAnimalPath(animales[index].id),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutes.agregarAnimal);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return EmptyState(
      title: 'Sin animales registrados',
      subtitle: 'Comienza agregando tu primer animal al rebaño',
      icon: Icons.pets_rounded,
      onAction: () {
        context.push(AppRoutes.agregarAnimal);
      },
      actionLabel: 'Agregar animal',
    );
  }

  Widget _buildEstadisticasRapidas(BuildContext context, dynamic animales) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          _buildStatTile(
            context,
            'Total',
            animales.length.toString(),
            Colors.blue,
            Icons.pets,
          ),
          const SizedBox(width: 12),
          _buildStatTile(
            context,
            'Con Pesajes',
            animales.where((a) => a.tienePesajes).length.toString(),
            Colors.green,
            Icons.monitor_weight,
          ),
          const SizedBox(width: 12),
          _buildStatTile(
            context,
            'Con Mantenimiento',
            animales.where((a) => a.tieneMantenimientos).length.toString(),
            Colors.orange,
            Icons.health_and_safety,
          ),
        ],
      ),
    );
  }

  Widget _buildStatTile(
    BuildContext context,
    String label,
    String value,
    Color color,
    IconData icon,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(fontSize: 11, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
