import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/nutricion_providers.dart';

class NutricionHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const NutricionHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Usar el provider FutureProvider que ya está configurado
    final nutricionAsync = ref.watch(nutricionByAnimalProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Nutrición - $animalNombre'),
        elevation: 0,
      ),
      body: nutricionAsync.when(
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
        data: (nutricion) {
          if (nutricion.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.restaurant, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('No hay registros de nutrición'),
                ],
              ),
            );
          }

          // Separar activos e históricos
          final activos = nutricion.where((n) => n.activo).toList();
          final historicos = nutricion.where((n) => !n.activo).toList();

          // Ordenar por fecha
          activos.sort((a, b) => b.fechaInicio.compareTo(a.fechaInicio));
          historicos.sort((a, b) => b.fechaInicio.compareTo(a.fechaInicio));

          return RefreshIndicator(
            onRefresh: () async {
              ref.refresh(nutricionByAnimalProvider(animalUuid));
            },
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (activos.isNotEmpty) ...[
                  _SectionHeader('Nutrición Actual'),
                  const SizedBox(height: 12),
                  ...activos
                      .map((n) => _NutricionCard(nutricion: n, activo: true)),
                  SizedBox(height: 24),
                ],
                if (historicos.isNotEmpty) ...[
                  _SectionHeader('Historial'),
                  SizedBox(height: 12),
                  ...historicos
                      .map((n) => _NutricionCard(nutricion: n, activo: false)),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[700],
      ),
    );
  }
}

class _NutricionCard extends StatelessWidget {
  final NutricionEntity nutricion;
  final bool activo;

  const _NutricionCard({
    required this.nutricion,
    required this.activo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inicio = DateFormat('dd/MM/yyyy').format(nutricion.fechaInicio);
    final fin = nutricion.fechaFin != null
        ? DateFormat('dd/MM/yyyy').format(nutricion.fechaFin!)
        : 'En curso';

    return Card(
      margin: EdgeInsets.only(bottom: 12),
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
                        nutricion.tipoAlimentacion,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Principal: ${nutricion.alimentoPrincipal}',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: activo
                        ? Colors.blue.withOpacity(0.2)
                        : Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    activo ? 'Activo' : 'Histórico',
                    style: TextStyle(
                      color: activo ? Colors.blue : Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            if (nutricion.suplementos.isNotEmpty) ...[
              _InfoRow(
                  label: 'Suplementos',
                  value: nutricion.suplementos.join(', ')),
              SizedBox(height: 8),
            ],
            _InfoRow(
                label: 'Cantidad Diaria', value: '${nutricion.cantidadDiaria}'),
            _InfoRow(
                label: 'Costo/Día',
                value: '\$${nutricion.costoPorDia?.toStringAsFixed(2)}'),
            _InfoRow(label: 'Inicio', value: inicio),
            _InfoRow(label: 'Fin', value: fin),
            if (nutricion.costoTotal != null && nutricion.costoTotal! > 0)
              _InfoRow(
                  label: 'Costo Total',
                  value: '\$${nutricion.costoTotal?.toStringAsFixed(2)}'),
            if (nutricion.cambiosObservados != null &&
                nutricion.cambiosObservados!.isNotEmpty)
              _InfoRow(label: 'Cambios', value: nutricion.cambiosObservados!),
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
