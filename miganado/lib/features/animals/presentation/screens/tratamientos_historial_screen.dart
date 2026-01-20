import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/tratamientos_providers.dart';

class TratamientosHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const TratamientosHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Usar el provider FutureProvider que ya está configurado
    final tratamientosAsync =
        ref.watch(tratamientosByAnimalProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Tratamientos - $animalNombre'),
        elevation: 0,
      ),
      body: tratamientosAsync.when(
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
        data: (tratamientos) {
          if (tratamientos.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.medical_services, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('No hay tratamientos registrados'),
                ],
              ),
            );
          }

          // Ordenar por fecha descendente
          final sortedTratamientos = [...tratamientos]
            ..sort((a, b) => b.fechaInicio.compareTo(a.fechaInicio));

          return RefreshIndicator(
            onRefresh: () async {
              ref.refresh(tratamientosByAnimalProvider(animalUuid));
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: sortedTratamientos.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final tratamiento = sortedTratamientos[index];
                final inicio =
                    DateFormat('dd/MM/yyyy').format(tratamiento.fechaInicio);
                final fin = tratamiento.fechaFin != null
                    ? DateFormat('dd/MM/yyyy').format(tratamiento.fechaFin!)
                    : 'En curso';

                return _TratamientoCard(
                  tratamiento: tratamiento,
                  fechaInicio: inicio,
                  fechaFin: fin,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _TratamientoCard extends StatelessWidget {
  final TratamientoEntity tratamiento;
  final String fechaInicio;
  final String fechaFin;

  const _TratamientoCard({
    required this.tratamiento,
    required this.fechaInicio,
    required this.fechaFin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final completado = tratamiento.fechaFin != null;
    final statusColor = completado ? Colors.green : Colors.orange;
    final statusText = completado ? 'Completado' : 'En curso';

    return Card(
      child: Padding(
        padding: EdgeInsets.all(12),
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
                        tratamiento.motivo,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Medicamento: ${tratamiento.medicamento}',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    statusText,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            if (tratamiento.diagnosticoPrevio != null)
              _InfoRow(
                  label: 'Diagnóstico', value: tratamiento.diagnosticoPrevio!),
            _InfoRow(label: 'Dosis', value: tratamiento.dosis),
            _InfoRow(label: 'Frecuencia', value: tratamiento.frecuencia),
            _InfoRow(
                label: 'Duración', value: '${tratamiento.duracionDias} días'),
            _InfoRow(label: 'Inicio', value: fechaInicio),
            _InfoRow(label: 'Fin', value: fechaFin),
            if (completado && tratamiento.resultado != null)
              _InfoRow(label: 'Resultado', value: tratamiento.resultado!),
            if (tratamiento.costoTotal != null && tratamiento.costoTotal! > 0)
              _InfoRow(
                  label: 'Costo Total',
                  value: '\$${tratamiento.costoTotal?.toStringAsFixed(2)}'),
            if (tratamiento.efectosSecundarios != null &&
                tratamiento.efectosSecundarios!.isNotEmpty)
              _InfoRow(
                  label: 'Efectos Secundarios',
                  value: tratamiento.efectosSecundarios!),
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
      padding: EdgeInsets.symmetric(vertical: 4),
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
              style: TextStyle(
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
