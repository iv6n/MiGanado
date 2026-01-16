import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';

/// Pantalla de alertas sanitarias detalladas (FASE 4)
class AlertasDetailScreenV2 extends ConsumerWidget {
  const AlertasDetailScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nivelAlertaAsync = ref.watch(nivelAlertaGlobalProvider);
    final vencidosAsync = ref.watch(vencidosGlobalProvider);
    final proximosAsync = ref.watch(proximosGlobalProvider);
    final allAnimalesAsync = ref.watch(allAnimalesV2Provider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas Sanitarias'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Header con nivel global
          nivelAlertaAsync.when(
            loading: () => const SizedBox(
              height: 100,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SizedBox(
              height: 100,
              child: Center(child: Text('Error: $error')),
            ),
            data: (nivelData) {
              final nivel = nivelData.nivel;
              final nivelColor = nivel == 'CRÍTICO'
                  ? Colors.red
                  : nivel == 'PRECAUCIÓN'
                      ? Colors.orange
                      : Colors.green;

              return Container(
                padding: const EdgeInsets.all(16),
                color: nivelColor.withOpacity(0.1),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: nivelColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        nivel == 'CRÍTICO'
                            ? Icons.warning_rounded
                            : nivel == 'PRECAUCIÓN'
                                ? Icons.info_rounded
                                : Icons.check_circle_rounded,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estado General',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          nivel,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: nivelColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),

          // Stats row
          nivelAlertaAsync.when(
            loading: () => const SizedBox(
              height: 100,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => const SizedBox(height: 100),
            data: (nivelData) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        nivelData.vencidos,
                        'Vencidos',
                        Colors.red,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildStatCard(
                        nivelData.proximos,
                        'Próximos',
                        Colors.orange,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          // Lista de mantenimientos vencidos
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Vencidos'),
                      Tab(text: 'Próximos'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Tab: Vencidos
                        _buildMantenimientosTab(
                          vencidosAsync,
                          allAnimalesAsync,
                          'vencidos',
                        ),
                        // Tab: Próximos
                        _buildMantenimientosTab(
                          proximosAsync,
                          allAnimalesAsync,
                          'proximos',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    int count,
    String label,
    Color color,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(label, style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 8),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMantenimientosTab(
    AsyncValue<dynamic> mantAsync,
    AsyncValue<dynamic> animalesAsync,
    String tipo,
  ) {
    return mantAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
      data: (mantenimientos) {
        if (mantenimientos.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    tipo == 'vencidos' ? Icons.check_circle : Icons.schedule,
                    size: 48,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tipo == 'vencidos'
                        ? 'Sin mantenimientos vencidos'
                        : 'Sin mantenimientos próximos',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          );
        }

        return animalesAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(child: Text('Error: $error')),
          data: (animales) {
            final animalMap = <String, dynamic>{};
            if (animales is List) {
              for (var animal in animales) {
                animalMap[animal.id] = animal;
              }
            }

            return ListView.builder(
              itemCount: mantenimientos.length,
              itemBuilder: (context, index) {
                final mant = mantenimientos[index];
                final animal = animalMap[mant.animalId];

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: tipo == 'vencidos'
                          ? Colors.red[100]
                          : Colors.orange[100],
                      child: Icon(
                        tipo == 'vencidos'
                            ? Icons.warning_rounded
                            : Icons.info_rounded,
                        color: tipo == 'vencidos' ? Colors.red : Colors.orange,
                      ),
                    ),
                    title: Text(animal?.nombre ?? 'Animal desconocido'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(mant.tipo.nombreEspanol),
                        const SizedBox(height: 4),
                        Text(
                          'Próxima: ${mant.proximaFechaRecomendada.day}/${mant.proximaFechaRecomendada.month}/${mant.proximaFechaRecomendada.year}',
                          style: const TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    trailing: tipo == 'vencidos'
                        ? Text(
                            'Vencido',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          )
                        : null,
                    onTap: () {
                      // TODO: Navegar a detalle de animal
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
