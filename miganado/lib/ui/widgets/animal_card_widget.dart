import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/index.dart';
import 'package:miganado/features/costs/presentation/providers/costo_providers.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/core/enums/index.dart';

/// Widget que muestra tarjeta de animal con información integrada
class AnimalCardWidget extends ConsumerWidget {
  final v2.AnimalModel animal;
  final VoidCallback? onTap;

  const AnimalCardWidget({
    Key? key,
    required this.animal,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Obtener alertas del animal
    final alertasAsync = ref.watch(alertasSanitariasProvider(animal.id));

    // Obtener peso actual
    final pesoAsync = ref.watch(ultimoPesoProvider(animal.id));

    // Obtener estadísticas de costos
    final costosAsync = ref.watch(costoTotalProvider(animal.id));

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado: Nombre y tipo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          animal.nombrePersonalizado ??
                              animal.identificadorVisible,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          animal.tipo.nombreEspanol,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Insignia de edad
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue[100]!),
                    ),
                    child: Text(
                      '${animal.edadMesesCalculada} meses',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Información: Sexo, raza, padre/madre
              Row(
                children: [
                  _buildInfoChip(
                    icon: Icons.pets,
                    label: animal.sexo?.nombreEspanol ?? 'Sin sexo',
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildInfoChip(
                      icon: Icons.info_outline,
                      label: animal.raza ?? 'Sin raza',
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Estadísticas: Peso, Alertas, Costos
              Row(
                children: [
                  // Peso
                  Expanded(
                    child: pesoAsync.when(
                      data: (peso) {
                        final pesoValue = peso?.peso ?? 0;
                        return _buildStatBox(
                          icon: Icons.monitor_weight,
                          label: 'Peso',
                          value: '${pesoValue.toStringAsFixed(1)} kg',
                          color: Colors.green,
                        );
                      },
                      loading: () => _buildStatBox(
                        icon: Icons.monitor_weight,
                        label: 'Peso',
                        value: '...',
                        color: Colors.green,
                      ),
                      error: (_, __) => _buildStatBox(
                        icon: Icons.monitor_weight,
                        label: 'Peso',
                        value: 'Error',
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Alertas
                  Expanded(
                    child: alertasAsync.when(
                      data: (alertas) {
                        final alertCount = alertas?.length ?? 0;
                        final hasAlerts = alertCount > 0;
                        return _buildStatBox(
                          icon: Icons.warning_amber,
                          label: 'Alertas',
                          value: alertCount.toString(),
                          color: hasAlerts ? Colors.red : Colors.grey,
                        );
                      },
                      loading: () => _buildStatBox(
                        icon: Icons.warning_amber,
                        label: 'Alertas',
                        value: '...',
                        color: Colors.grey,
                      ),
                      error: (_, __) => _buildStatBox(
                        icon: Icons.warning_amber,
                        label: 'Alertas',
                        value: 'Error',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Costos
                  Expanded(
                    child: costosAsync.when(
                      data: (costo) {
                        final costoValue = costo;
                        return _buildStatBox(
                          icon: Icons.attach_money,
                          label: 'Costos',
                          value: '\$$costoValue',
                          color: Colors.teal,
                        );
                      },
                      loading: () => _buildStatBox(
                        icon: Icons.attach_money,
                        label: 'Costos',
                        value: '...',
                        color: Colors.teal,
                      ),
                      error: (_, __) => _buildStatBox(
                        icon: Icons.attach_money,
                        label: 'Costos',
                        value: 'Error',
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
