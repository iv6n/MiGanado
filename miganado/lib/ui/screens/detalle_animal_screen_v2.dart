import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';
import 'package:miganado/features/costs/presentation/providers/costo_providers.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/core/enums/index.dart';
import 'package:miganado/ui/navigation/app_routes.dart';

/// Pantalla de detalle mejorada de animal (FASE 4)
class DetalleAnimalScreenV2 extends ConsumerWidget {
  final String animalId;
  final v2.AnimalModel? animal;

  const DetalleAnimalScreenV2({
    Key? key,
    required this.animalId,
    this.animal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Obtener animal si no fue pasado
    final animalAsync = ref.watch(animalByIdProvider(animalId));

    // Obtener mantenimientos
    final mantenimientosAsync =
        ref.watch(mantenimientosByAnimalProvider(animalId));

    // Obtener pesos
    final pesosAsync = ref.watch(pesosByAnimalProvider(animalId));

    // Obtener costos
    final costosAsync = ref.watch(costosByAnimalProvider(animalId));

    // Obtener estadísticas
    final estadisticasAsync =
        ref.watch(estadisticasMantenimientosProvider(animalId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Animal'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Editar animal',
            onPressed: () {
              context.push(AppRoutes.editarAnimalPath(animalId));
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: animalAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Text('Error: $error'),
        ),
        data: (animalData) {
          if (animalData == null) {
            return const Center(child: Text('Animal no encontrado'));
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header - Info básica
                _buildHeaderCard(context, animalData),

                // Tabs de información
                DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(text: 'Info', icon: Icon(Icons.info)),
                          Tab(
                              text: 'Mantenimiento',
                              icon: Icon(Icons.health_and_safety)),
                          Tab(text: 'Pesos', icon: Icon(Icons.scale)),
                          Tab(text: 'Costos', icon: Icon(Icons.attach_money)),
                        ],
                      ),
                      SizedBox(
                        height: 400,
                        child: TabBarView(
                          children: [
                            // Tab: Info General
                            _buildInfoTab(context, animalData),

                            // Tab: Mantenimientos
                            _buildMantenimientosTab(
                              context,
                              mantenimientosAsync,
                              estadisticasAsync,
                            ),

                            // Tab: Pesos
                            _buildPesosTab(context, pesosAsync),

                            // Tab: Costos
                            _buildCostosTab(context, costosAsync),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeaderCard(BuildContext context, v2.AnimalModel animal) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.identificadorVisible,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '#${animal.id.substring(0, 8)}...',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
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
                    border: Border.all(color: Colors.blue[300]!),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    animal.tipo.nombreEspanol,
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildHeaderStat('Edad', '${animal.edadMesesCalculada} meses'),
                _buildHeaderStat('Sexo', animal.sexo?.nombreEspanol ?? 'N/D'),
                _buildHeaderStat(
                  'Nacimiento',
                  animal.fechaNacimiento != null
                      ? '${animal.fechaNacimiento!.day}/${animal.fechaNacimiento!.month}/${animal.fechaNacimiento!.year}'
                      : 'No registrada',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderStat(String label, String value) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 11, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTab(BuildContext context, v2.AnimalModel animal) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          _buildInfoSection('Información General', [
            _buildInfoRow('Tipo', animal.tipo.nombreEspanol),
            _buildInfoRow('Sexo', animal.sexo?.nombreEspanol ?? 'No definido'),
            _buildInfoRow(
              'Estado Reproductivo',
              animal.estadoReproductivo?.nombreEspanol ?? 'No definido',
            ),
          ]),
          const SizedBox(height: 16),
          _buildInfoSection('Ubicación', [
            _buildInfoRow('ID Ubicación', animal.ubicacionId ?? 'No asignada'),
          ]),
          const SizedBox(height: 16),
          _buildInfoSection('Métricas', [
            _buildInfoRow(
                'Edad en meses', animal.edadMesesCalculada.toString()),
            _buildInfoRow(
              'Registro',
              '${animal.fechaRegistro.day}/${animal.fechaRegistro.month}/${animal.fechaRegistro.year}',
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildMantenimientosTab(
    BuildContext context,
    AsyncValue mantenimientosAsync,
    AsyncValue estadisticasAsync,
  ) {
    return mantenimientosAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
      data: (mantenimientos) {
        if (mantenimientos.isEmpty) {
          return const Center(child: Text('Sin mantenimientos registrados'));
        }

        return ListView.builder(
          itemCount: mantenimientos.length,
          itemBuilder: (context, index) {
            final mant = mantenimientos[index];
            final vencida = mant.estaVencido;
            final proxima = mant.estaProximo;

            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(
                  vencida
                      ? Icons.warning_rounded
                      : proxima
                          ? Icons.info_rounded
                          : Icons.check_circle_rounded,
                  color: vencida
                      ? Colors.red
                      : proxima
                          ? Colors.orange
                          : Colors.green,
                ),
                title: Text(mant.tipo.nombreEspanol),
                subtitle: Text(
                  mant.descripcion,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  '${mant.fecha.day}/${mant.fecha.month}',
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildPesosTab(BuildContext context, AsyncValue pesosAsync) {
    return pesosAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
      data: (pesos) {
        if (pesos.isEmpty) {
          return const Center(child: Text('Sin pesajes registrados'));
        }

        return ListView.builder(
          itemCount: pesos.length,
          itemBuilder: (context, index) {
            final peso = pesos[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: const Icon(Icons.scale, color: Colors.green),
                title: Text('${peso.peso} kg'),
                subtitle: Text(
                  '${peso.fecha.day}/${peso.fecha.month}/${peso.fecha.year}',
                ),
                trailing: peso.observacion != null
                    ? Tooltip(
                        message: peso.observacion!,
                        child: const Icon(Icons.info_outline, size: 18),
                      )
                    : null,
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCostosTab(BuildContext context, AsyncValue costosAsync) {
    return costosAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
      data: (costos) {
        if (costos.isEmpty) {
          return const Center(child: Text('Sin costos registrados'));
        }

        double total = 0;
        for (var costo in costos) {
          total += (costo.monto as num).toDouble();
        }

        return ListView(
          children: [
            Card(
              margin: const EdgeInsets.all(8),
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total Invertido:'),
                    Text(
                      '\$${total.toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...costos.map((costo) {
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: const Icon(Icons.attach_money, color: Colors.green),
                  title: Text('\$${(costo.monto as num).toStringAsFixed(0)}'),
                  subtitle: Text(costo.descripcion ?? 'Sin descripción'),
                  trailing: Text(
                    '${costo.fecha.day}/${costo.fecha.month}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }

  Widget _buildInfoSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(children: children),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
