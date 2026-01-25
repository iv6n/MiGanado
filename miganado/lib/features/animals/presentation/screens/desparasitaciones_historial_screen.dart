import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/desparasitaciones_providers.dart';

class DesparasitacionesHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const DesparasitacionesHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desparasitacionesAsync =
        ref.watch(desparasitacionesProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Desparasitación - $animalNombre'),
        elevation: 0,
      ),
      body: desparasitacionesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
            ],
          ),
        ),
        data: (listDesparasitaciones) {
          if (listDesparasitaciones.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bug_report, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No hay desparasitaciones registradas'),
                ],
              ),
            );
          }

          // Ordenar por fecha descendente
          final sortedDesparasitaciones = [...listDesparasitaciones]
            ..sort((a, b) => b.fecha.compareTo(a.fecha));

          return RefreshIndicator(
            onRefresh: () async {
              await ref.refresh(desparasitacionesProvider(animalUuid).future);
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: sortedDesparasitaciones.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final desparasitacion = sortedDesparasitaciones[index];
                final fecha =
                    DateFormat('dd/MM/yyyy').format(desparasitacion.fecha);
                final proximaFecha = desparasitacion.proximaAplicacion != null
                    ? DateFormat('dd/MM/yyyy')
                        .format(desparasitacion.proximaAplicacion!)
                    : 'N/A';

                return _DesparasitacionCard(
                  desparasitacion: desparasitacion,
                  fecha: fecha,
                  proximaFecha: proximaFecha,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _DesparasitacionCard extends StatelessWidget {
  final DesparasitacionEntity desparasitacion;
  final String fecha;
  final String proximaFecha;

  const _DesparasitacionCard({
    required this.desparasitacion,
    required this.fecha,
    required this.proximaFecha,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tipoColor =
        desparasitacion.tipo == 'Interna' ? Colors.red : Colors.orange;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        desparasitacion.producto,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tipo: ${desparasitacion.tipo}',
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: tipoColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    desparasitacion.tipo,
                    style: TextStyle(
                      color: tipoColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _InfoRow(label: 'Marca', value: desparasitacion.marca ?? 'N/A'),
            _InfoRow(label: 'Lote', value: desparasitacion.lote ?? 'N/A'),
            _InfoRow(label: 'Dosis', value: desparasitacion.dosis),
            _InfoRow(
                label: 'Vía de Aplicación',
                value: desparasitacion.viaAplicacion),
            _InfoRow(label: 'Fecha', value: fecha),
            _InfoRow(label: 'Próxima Aplicación', value: proximaFecha),
            _InfoRow(
                label: 'Intervalo',
                value: '${desparasitacion.diasIntervalo} días'),
            if (desparasitacion.costo != null && desparasitacion.costo! > 0)
              _InfoRow(
                  label: 'Costo',
                  value: '\$${desparasitacion.costo?.toStringAsFixed(2)}'),
            if (desparasitacion.efectosObservados != null &&
                desparasitacion.efectosObservados!.isNotEmpty)
              _InfoRow(
                  label: 'Efectos', value: desparasitacion.efectosObservados!),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
