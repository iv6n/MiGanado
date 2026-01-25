import 'package:flutter_riverpod/flutter_riverpod.dart';
// ...existing code...
import 'package:miganado/features/mantenimiento/presentation/providers/vacunas_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/tratamientos_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/nutricion_providers.dart';
import 'package:miganado/features/mantenimiento/presentation/providers/desparasitaciones_providers.dart';

/// Modelo unificado para todos los eventos históricos de un animal
class EventoHistoricoUnificado {
  final String id;
  final String tipo; // 'vacuna', 'tratamiento', 'nutricion', 'desparasitacion'
  final String titulo;
  final String descripcion;
  final DateTime fecha;
  final Map<String, dynamic> datos;

  EventoHistoricoUnificado({
    required this.id,
    required this.tipo,
    required this.titulo,
    required this.descripcion,
    required this.fecha,
    required this.datos,
  });

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventoHistoricoUnificado &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

/// Provider que obtiene TODOS los historiales de un animal
/// Retorna una lista ordenada por fecha descendente (más recientes primero)
final todoHistorialAnimalProvider =
    FutureProvider.family<List<EventoHistoricoUnificado>, String>(
        (ref, animalUuid) async {
  final eventos = <EventoHistoricoUnificado>[];

  try {
    // Obtener vacunas
    final vacunas = await ref.watch(vacunasByAnimalProvider(animalUuid).future);
    for (final vacuna in vacunas) {
      eventos.add(EventoHistoricoUnificado(
        id: vacuna.uuid,
        tipo: 'vacuna',
        titulo: 'Vacuna: ${vacuna.enfermedad}',
        descripcion: '${vacuna.producto} - ${vacuna.dosis}',
        fecha: vacuna.fecha,
        datos: {
          'producto': vacuna.producto,
          'enfermedad': vacuna.enfermedad,
          'dosis': vacuna.dosis,
          'lote': vacuna.lote,
          'viaAplicacion': vacuna.viaAplicacion,
          'costo': vacuna.costo,
        },
      ));
    }
  } catch (e) {
    // Silenciar errores de carga
  }

  try {
    // Obtener tratamientos
    final tratamientos =
        await ref.watch(tratamientosByAnimalProvider(animalUuid).future);
    for (final tratamiento in tratamientos) {
      eventos.add(EventoHistoricoUnificado(
        id: tratamiento.uuid,
        tipo: 'tratamiento',
        titulo: 'Tratamiento: ${tratamiento.motivo}',
        descripcion:
            '${tratamiento.medicamento} - ${tratamiento.duracionDias}d',
        fecha: tratamiento.fechaInicio,
        datos: {
          'motivo': tratamiento.motivo,
          'medicamento': tratamiento.medicamento,
          'marca': tratamiento.marca,
          'dosis': tratamiento.dosis,
          'duracionDias': tratamiento.duracionDias,
          'costoTotal': tratamiento.costoTotal,
          'diagnosticoFinal': tratamiento.diagnosticoFinal,
        },
      ));
    }
  } catch (e) {
    // Silenciar errores de carga
  }

  try {
    // Obtener nutrición
    final nutricion =
        await ref.watch(nutricionByAnimalProvider(animalUuid).future);
    for (final nutriente in nutricion) {
      eventos.add(EventoHistoricoUnificado(
        id: nutriente.uuid,
        tipo: 'nutricion',
        titulo: 'Nutrición: ${nutriente.tipoAlimentacion}',
        descripcion: '${nutriente.alimentoPrincipal} + suplementos',
        fecha: nutriente.fechaInicio,
        datos: {
          'tipoAlimentacion': nutriente.tipoAlimentacion,
          'alimentoPrincipal': nutriente.alimentoPrincipal,
          'suplementos': nutriente.suplementos,
        },
      ));
    }
  } catch (e) {
    // Silenciar errores de carga
  }

  try {
    // Obtener desparasitaciones
    final desparasitaciones =
        await ref.watch(desparasitacionesProvider(animalUuid).future);
    for (final desparasitacion in desparasitaciones) {
      eventos.add(EventoHistoricoUnificado(
        id: desparasitacion.uuid,
        tipo: 'desparasitacion',
        titulo: 'Desparasitación',
        descripcion: desparasitacion.producto,
        fecha: desparasitacion.fecha,
        datos: {
          'producto': desparasitacion.producto,
          'proximaAplicacion': desparasitacion.proximaAplicacion,
        },
      ));
    }
  } catch (e) {
    // Silenciar errores de carga
  }

  // Ordenar por fecha descendente
  eventos.sort((a, b) => b.fecha.compareTo(a.fecha));

  return eventos;
});

/// Provider que obtiene solo los últimos N eventos históricos
final ultimosEventosAnimalProvider =
    FutureProvider.family<List<EventoHistoricoUnificado>, (String, int)>(
        (ref, params) async {
  final (animalUuid, cantidad) = params;
  final todosEventos =
      await ref.watch(todoHistorialAnimalProvider(animalUuid).future);
  return todosEventos.take(cantidad).toList();
});
