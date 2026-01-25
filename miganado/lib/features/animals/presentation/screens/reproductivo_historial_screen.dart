import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/animals/data/models/reproductivo_entity.dart';
import 'package:miganado/features/animals/presentation/providers/reproductivo_providers.dart';

class ReproductivHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const ReproductivHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reproductivoAsync = ref.watch(reproductivoProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial Reproductivo - $animalNombre'),
        elevation: 0,
      ),
      body: reproductivoAsync.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        data: (reproductivo) {
          if (reproductivo == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Sin datos reproductivos registrados'),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await ref.refresh(reproductivoProvider(animalUuid).future);
            },
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                // Estado actual
                _EstadoCard(reproductivo: reproductivo),
                SizedBox(height: 24),

                // Estadísticas
                _EstadisticasCard(reproductivo: reproductivo),
                SizedBox(height: 24),

                // Estado actual reproductivo
                if (reproductivo.estado == 'Gestante') ...[
                  _GestacionCard(reproductivo: reproductivo),
                  SizedBox(height: 24),
                ],

                // Historial de partos
                if (reproductivo.ultimoParto != null) ...[
                  Text(
                    'Historial de Partos',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 12),
                  _PartoInfoCard(
                    totalPartos: reproductivo.totalPartos,
                    primerParto: reproductivo.primerParto,
                    ultimoParto: reproductivo.ultimoParto,
                    totalCrias: reproductivo.totalCrias,
                  ),
                ],

                SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _EstadoCard extends StatelessWidget {
  final ReproductivEntity reproductivo;

  const _EstadoCard({required this.reproductivo, Key? key}) : super(key: key);

  Color _getEstadoColor() {
    switch (reproductivo.estado.toLowerCase()) {
      case 'gestante':
        return Colors.orange;
      case 'lactante':
        return Colors.green;
      case 'en pausa':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estado Reproductivo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: _getEstadoColor().withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    reproductivo.estado,
                    style: TextStyle(
                      color: _getEstadoColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            if (reproductivo.estado == 'Gestante') ...[
              _InfoRow(
                label: 'Fecha Empadre',
                value: reproductivo.fechaEmpadreActual != null
                    ? DateFormat('dd/MM/yyyy')
                        .format(reproductivo.fechaEmpadreActual!)
                    : 'N/A',
              ),
              _InfoRow(
                label: 'Semental',
                value: reproductivo.sementalUuid ?? 'N/A',
              ),
              if (reproductivo.fechaPartoEstimada != null)
                _InfoRow(
                  label: 'Parto Estimado',
                  value: DateFormat('dd/MM/yyyy')
                      .format(reproductivo.fechaPartoEstimada!),
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class _GestacionCard extends StatelessWidget {
  final ReproductivEntity reproductivo;

  const _GestacionCard({required this.reproductivo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (reproductivo.fechaPartoEstimada == null) return SizedBox.shrink();

    final diasRestantes =
        reproductivo.fechaPartoEstimada!.difference(DateTime.now()).inDays;
    final diasTotales = 283; // Período de gestación promedio
    final diasTranscurridos = diasTotales - diasRestantes;
    final progreso = diasTranscurridos / diasTotales;

    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gestación en Curso',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progreso,
                minHeight: 12,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Días transcurridos: $diasTranscurridos',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                Text(
                  'Falta: $diasRestantes días',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _EstadisticasCard extends StatelessWidget {
  final ReproductivEntity reproductivo;

  const _EstadisticasCard({required this.reproductivo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatTile(
            label: 'Partos',
            value: reproductivo.totalPartos.toString(),
            icon: Icons.child_care,
            color: Colors.pink,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _StatTile(
            label: 'Crías',
            value: reproductivo.totalCrias.toString(),
            icon: Icons.pets,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 32, color: color),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PartoInfoCard extends StatelessWidget {
  final int totalPartos;
  final DateTime? primerParto;
  final DateTime? ultimoParto;
  final int totalCrias;

  const _PartoInfoCard({
    required this.totalPartos,
    required this.primerParto,
    required this.ultimoParto,
    required this.totalCrias,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (primerParto != null)
              _InfoRow(
                label: 'Primer Parto',
                value: DateFormat('dd/MM/yyyy').format(primerParto!),
              ),
            if (ultimoParto != null)
              _InfoRow(
                label: 'Último Parto',
                value: DateFormat('dd/MM/yyyy').format(ultimoParto!),
              ),
            if (ultimoParto != null && primerParto != null) ...[
              SizedBox(height: 8),
              _InfoRow(
                label: 'Años en Reproducción',
                value: ((ultimoParto!.difference(primerParto!).inDays / 365)
                    .toStringAsFixed(1)),
              ),
            ],
            if (totalPartos > 0)
              _InfoRow(
                label: 'Promedio de Crías/Parto',
                value: (totalCrias / totalPartos).toStringAsFixed(1),
              ),
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
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
