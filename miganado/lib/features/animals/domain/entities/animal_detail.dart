import 'package:flutter/material.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';

/// Modelo de dominio que representa los detalles completos de un animal
/// Agrega información de ubicación, observaciones e histórico de eventos
class AnimalDetail {
  final Animal animal;
  final String? ubicacionActual;
  final List<EventoHistorico> eventos; // Últimos 10 eventos
  final String? observaciones;
  final DateTime? ultimaActualizacionObservaciones;

  AnimalDetail({
    required this.animal,
    this.ubicacionActual,
    required this.eventos,
    this.observaciones,
    this.ultimaActualizacionObservaciones,
  });

  /// Crear una copia modificada del detalle
  AnimalDetail copyWith({
    Animal? animal,
    String? ubicacionActual,
    List<EventoHistorico>? eventos,
    String? observaciones,
    DateTime? ultimaActualizacionObservaciones,
  }) {
    return AnimalDetail(
      animal: animal ?? this.animal,
      ubicacionActual: ubicacionActual ?? this.ubicacionActual,
      eventos: eventos ?? this.eventos,
      observaciones: observaciones ?? this.observaciones,
      ultimaActualizacionObservaciones: ultimaActualizacionObservaciones ??
          this.ultimaActualizacionObservaciones,
    );
  }

  @override
  String toString() => '''AnimalDetail(
    animal: $animal,
    ubicacionActual: $ubicacionActual,
    eventos: ${eventos.length},
    observaciones: $observaciones,
    ultimaActualizacion: $ultimaActualizacionObservaciones
  )''';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimalDetail &&
          runtimeType == other.runtimeType &&
          animal == other.animal &&
          ubicacionActual == other.ubicacionActual &&
          eventos == other.eventos &&
          observaciones == other.observaciones &&
          ultimaActualizacionObservaciones ==
              other.ultimaActualizacionObservaciones;

  @override
  int get hashCode =>
      animal.hashCode ^
      ubicacionActual.hashCode ^
      eventos.hashCode ^
      observaciones.hashCode ^
      ultimaActualizacionObservaciones.hashCode;
}

/// Modelo que representa un evento en el histórico
/// Puede ser: Pesaje, Mantenimiento, Costo, Cambio de Ubicación
class EventoHistorico {
  final String id;
  final String tipo; // 'pesaje', 'mantenimiento', 'costo', 'ubicacion'
  final String descripcion;
  final DateTime fecha;
  final Map<String, dynamic>? datos; // Información adicional según tipo

  EventoHistorico({
    required this.id,
    required this.tipo,
    required this.descripcion,
    required this.fecha,
    this.datos,
  });

  /// Obtener icono según tipo de evento
  IconData getIcono() {
    switch (tipo.toLowerCase()) {
      case 'pesaje':
        return Icons.scale;
      case 'mantenimiento':
        return Icons.medical_services;
      case 'costo':
        return Icons.attach_money;
      case 'ubicacion':
        return Icons.location_on;
      default:
        return Icons.event;
    }
  }

  /// Obtener color según tipo de evento
  Color getColor() {
    switch (tipo.toLowerCase()) {
      case 'pesaje':
        return Colors.blue;
      case 'mantenimiento':
        return Colors.red;
      case 'costo':
        return Colors.orange;
      case 'ubicacion':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  @override
  String toString() =>
      'EventoHistorico(id: $id, tipo: $tipo, fecha: $fecha, desc: $descripcion)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventoHistorico &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          tipo == other.tipo &&
          descripcion == other.descripcion &&
          fecha == other.fecha &&
          datos == other.datos;

  @override
  int get hashCode =>
      id.hashCode ^
      tipo.hashCode ^
      descripcion.hashCode ^
      fecha.hashCode ^
      datos.hashCode;
}
