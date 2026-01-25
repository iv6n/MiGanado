import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/vacunas_providers.dart';

class VacunasHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const VacunasHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Usar el provider FutureProvider que ya está configurado
    final vacunasAsync = ref.watch(vacunasByAnimalProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Vacunas - $animalNombre'),
        elevation: 0,
      ),
      body: vacunasAsync.when(
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
        data: (vacunas) {
          if (vacunas.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.health_and_safety, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('No hay vacunas registradas'),
                ],
              ),
            );
          }

          // Ordenar por fecha descendente
          final sortedVacunas = [...vacunas]
            ..sort((a, b) => b.fecha.compareTo(a.fecha));

          return RefreshIndicator(
            onRefresh: () async {
              await ref.refresh(vacunasByAnimalProvider(animalUuid).future);
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: sortedVacunas.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final vacuna = sortedVacunas[index];
                final fechaFormato =
                    DateFormat('dd/MM/yyyy').format(vacuna.fecha);
                final proximaFechaFormato = vacuna.proximaFecha != null
                    ? DateFormat('dd/MM/yyyy').format(vacuna.proximaFecha!)
                    : 'N/A';

                return _VacunaCard(
                  vacuna: vacuna,
                  fechaFormato: fechaFormato,
                  proximaFechaFormato: proximaFechaFormato,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _VacunaCard extends StatelessWidget {
  final VacunaEntity vacuna;
  final String fechaFormato;
  final String proximaFechaFormato;

  const _VacunaCard({
    required this.vacuna,
    required this.fechaFormato,
    required this.proximaFechaFormato,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        vacuna.tipo,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Enfermedad: ${vacuna.enfermedad}',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Aplicada',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            _InfoRow(label: 'Producto', value: vacuna.producto ?? 'N/A'),
            _InfoRow(label: 'Lote', value: vacuna.lote ?? 'N/A'),
            _InfoRow(label: 'Dosis', value: vacuna.dosis ?? 'N/A'),
            _InfoRow(label: 'Fecha', value: fechaFormato),
            _InfoRow(label: 'Próxima Dosis', value: proximaFechaFormato),
            _InfoRow(label: 'Intervalo', value: '${vacuna.diasIntervalo} días'),
            if (vacuna.costo != null && vacuna.costo! > 0)
              _InfoRow(
                  label: 'Costo',
                  value: '\$${vacuna.costo?.toStringAsFixed(2)}'),
            if (vacuna.reaccionesAdversas != null &&
                vacuna.reaccionesAdversas!.isNotEmpty)
              _InfoRow(label: 'Reacciones', value: vacuna.reaccionesAdversas!),
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
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
