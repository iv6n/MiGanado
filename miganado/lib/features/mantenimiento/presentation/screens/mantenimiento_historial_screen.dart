import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/mantenimiento_providers.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart'
    as evento_domain;

class MantenimientoHistorialScreen extends ConsumerWidget {
  final String animalUuid;
  final String animalNombre;

  const MantenimientoHistorialScreen({
    required this.animalUuid,
    required this.animalNombre,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historialAsync =
        ref.watch(historialMantenimientoProvider(animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Mantenimiento - $animalNombre'),
        elevation: 0,
      ),
      body: historialAsync.when(
        loading: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Cargando historial...'),
            ],
          ),
        ),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.red),
              SizedBox(height: 16),
              Text('Error al cargar el historial'),
              SizedBox(height: 8),
              Text(error.toString(), style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        data: (eventos) {
          if (eventos.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.history, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Sin eventos de mantenimiento registrados'),
                  SizedBox(height: 8),
                  Text(
                    'Los eventos de mantenimiento aparecerán aquí',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: eventos.length,
            itemBuilder: (context, index) {
              final evento = eventos[index];
              return _EventoMantenimientoCard(evento: evento);
            },
          );
        },
      ),
    );
  }
}

class _EventoMantenimientoCard extends StatelessWidget {
  final evento_domain.EventoMantenimiento evento;

  const _EventoMantenimientoCard({required this.evento});

  @override
  Widget build(BuildContext context) {
    final tipoEmoji = _getTipoEmoji(evento.tipo.toString().split('.')[1]);
    final tipoNombre = _getTipoNombre(evento.tipo.toString().split('.')[1]);
    final fechaFormato = DateFormat('dd/MM/yyyy').format(evento.fecha);

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: ExpansionTile(
        leading: Text(
          tipoEmoji,
          style: TextStyle(fontSize: 28),
        ),
        title: Text(
          tipoNombre,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          fechaFormato,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Descripción
                _ItemDetalle('Descripción', evento.descripcion),
                if (evento.veterinario != null &&
                    evento.veterinario!.isNotEmpty)
                  _ItemDetalle('Veterinario', evento.veterinario),
                if (evento.medicamento != null &&
                    evento.medicamento!.isNotEmpty)
                  _ItemDetalle('Medicamento', evento.medicamento),
                if (evento.dosisAplicada != null &&
                    evento.dosisAplicada!.isNotEmpty)
                  _ItemDetalle('Dosis', evento.dosisAplicada),
                if (evento.rutaAplicacion != null &&
                    evento.rutaAplicacion!.isNotEmpty)
                  _ItemDetalle('Ruta', evento.rutaAplicacion),
                if (evento.observaciones != null &&
                    evento.observaciones!.isNotEmpty)
                  _ItemDetalle('Observaciones', evento.observaciones),
                // Fecha de creación
                SizedBox(height: 8),
                Divider(),
                Text(
                  'Registrado: ${DateFormat('dd/MM/yyyy HH:mm').format(evento.fechaCreacion)}',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getTipoEmoji(String tipo) {
    switch (tipo) {
      case 'vacunacion':
        return '💉';
      case 'desparasitacion':
        return '🔬';
      case 'vitaminas':
        return '💊';
      case 'control_veterinario':
        return '🩺';
      case 'limpieza_corrales':
        return '🧹';
      case 'alimentacion_especial':
        return '🌾';
      default:
        return '📋';
    }
  }

  String _getTipoNombre(String tipo) {
    switch (tipo) {
      case 'vacunacion':
        return 'Vacunación';
      case 'desparasitacion':
        return 'Desparasitación';
      case 'vitaminas':
        return 'Vitaminas';
      case 'control_veterinario':
        return 'Control Veterinario';
      case 'limpieza_corrales':
        return 'Limpieza de Corrales';
      case 'alimentacion_especial':
        return 'Alimentación Especial';
      default:
        return 'Otro';
    }
  }
}

class _ItemDetalle extends StatelessWidget {
  final String etiqueta;
  final String? valor;

  const _ItemDetalle(this.etiqueta, this.valor);

  @override
  Widget build(BuildContext context) {
    if (valor == null || valor!.isEmpty) return SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$etiqueta: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          Expanded(
            child: Text(
              valor ?? '',
              style: TextStyle(fontSize: 12),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
