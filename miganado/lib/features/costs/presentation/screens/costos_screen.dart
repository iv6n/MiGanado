import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/costs/presentation/providers/costos_providers.dart';
import 'package:miganado/features/costs/presentation/widgets/costos_widgets.dart';
import 'package:miganado/core/constants/app_strings.dart';

/// Pantalla de gestión de costos para un animal específico
class AnimalCostosScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const AnimalCostosScreen({
    Key? key,
    required this.animalUuid,
    required this.animalNombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historialAsync = ref.watch(historialCostosProvider(animalUuid));
    final resumenAsync = ref.watch(resumenFinancieroProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppStrings.screenCosts),
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
          ref.invalidate(historialCostosProvider(animalUuid));
          ref.invalidate(resumenFinancieroProvider(animalUuid));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              // Resumen Financiero
              resumenAsync.when(
                data: (resumen) => ResumenFinancieroWidget(resumen: resumen),
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
                      'Historial de Costos', // TODO: Mover a AppStrings y ARB
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Chip(
                      label: historialAsync.maybeWhen(
                        data: (costos) => Text(costos.length.toString()),
                        orElse: () => const Text('0'),
                      ),
                      backgroundColor: Colors.green.shade100,
                      labelStyle: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              // Lista de costos
              historialAsync.when(
                data: (costos) {
                  if (costos.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Icon(
                            Icons.receipt_long,
                            size: 64,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Sin costos registrados', // TODO: Mover a AppStrings y ARB
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Toca el botón + para registrar el primer costo', // TODO: Mover a AppStrings y ARB
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
                    itemCount: costos.length,
                    itemBuilder: (context, index) {
                      final costo = costos[index];
                      return CostoCard(
                        costo: costo,
                        onEdit: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Función de editar próximamente'), // TODO: Mover a AppStrings y ARB
                            ),
                          );
                        },
                        onDelete: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Función de eliminar próximamente'), // TODO: Mover a AppStrings y ARB
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
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => RegistrarCostoDialog(
              animalUuid: animalUuid,
            ),
          );
        },
        tooltip: 'Registrar costo', // TODO: Mover a AppStrings y ARB
        child: const Icon(Icons.add),
      ),
    );
  }
}
