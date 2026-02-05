import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/pesos/presentation/providers/pesos_providers.dart';
import 'package:miganado/features/pesos/presentation/widgets/pesos_widgets.dart';
import 'package:miganado/core/constants/app_strings.dart';

/// Pantalla de gestión de pesos para un animal específico
class AnimalPesosScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const AnimalPesosScreen({
    Key? key,
    required this.animalUuid,
    required this.animalNombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historialAsync = ref.watch(historialPesosProvider(animalUuid));
    final analisisAsync = ref.watch(analisisPesosProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppStrings.screenWeights),
            Text(
              animalNombre,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(historialPesosProvider(animalUuid));
          ref.invalidate(analisisPesosProvider(animalUuid));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              // Análisis de Pesos
              analisisAsync.when(
                data: (analisis) => AnalisisPesosWidget(analisis: analisis),
                loading: () => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (error, st) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.error, color: Colors.red.shade700),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Error: $error',
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Título historial
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Historial de Pesajes', // TODO: Mover a AppStrings y ARB
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Chip(
                      label: historialAsync.maybeWhen(
                        data: (pesos) => Text(pesos.length.toString()),
                        orElse: () => const Text('0'),
                      ),
                      backgroundColor: Colors.blue.shade100,
                      labelStyle: TextStyle(
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              // Lista de pesajes
              historialAsync.when(
                data: (pesajes) {
                  if (pesajes.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Icon(
                            Icons.scale,
                            size: 64,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Sin pesajes registrados', // TODO: Mover a AppStrings y ARB
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Toca el botón + para registrar el primer pesaje', // TODO: Mover a AppStrings y ARB
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pesajes.length,
                    itemBuilder: (context, index) {
                      final pesaje = pesajes[index];
                      final pesajeAnterior = index < pesajes.length - 1
                          ? pesajes[index + 1]
                          : null;

                      return PesajeCard(
                        pesaje: pesaje,
                        pesajeAnterior: pesajeAnterior,
                        onEdit: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Función de editar próximamente'),
                            ),
                          );
                        },
                        onDelete: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Función de eliminar próximamente'),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                loading: () => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (error, st) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.error, color: Colors.red.shade700),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Error: $error',
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'pesos_fab_add',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => RegistrarPesajeDialog(
              animalUuid: animalUuid,
            ),
          );
        },
        tooltip: 'Registrar pesaje', // TODO: Mover a AppStrings y ARB
        child: const Icon(Icons.add),
      ),
    );
  }
}
