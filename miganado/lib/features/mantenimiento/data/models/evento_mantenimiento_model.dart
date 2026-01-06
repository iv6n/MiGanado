import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'evento_mantenimiento_model.g.dart';

enum TipoMantenimiento {
  vacunacion,
  desparasitante,
  vitaminas,
  revision_clinica,
  curacion,
  dentadura,
  castracion,
  otro,
}

/// Modelo de Evento de Mantenimiento con TypeAdapter para Hive
@HiveType(typeId: 5)
class EventoMantenimientoModel {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal
  @HiveField(1)
  final String animalId;

  /// Tipo de mantenimiento
  @HiveField(2)
  final TipoMantenimiento tipo;

  /// Descripción
  @HiveField(3)
  final String? descripcion;

  /// Notas
  @HiveField(4)
  final String? notas;

  /// Fecha del evento
  @HiveField(5)
  final DateTime fecha;

  /// Costo del evento
  @HiveField(6)
  final double? costo;

  /// Próxima fecha de mantenimiento sugerida
  @HiveField(7)
  final DateTime? proximaFecha;

  /// Fecha de creación
  @HiveField(8)
  final DateTime fechaRegistro;

  EventoMantenimientoModel({
    String? id,
    required this.animalId,
    required this.tipo,
    this.descripcion,
    this.notas,
    required this.fecha,
    this.costo,
    this.proximaFecha,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales
  EventoMantenimientoModel copyWith({
    String? id,
    String? animalId,
    TipoMantenimiento? tipo,
    String? descripcion,
    String? notas,
    DateTime? fecha,
    double? costo,
    DateTime? proximaFecha,
    DateTime? fechaRegistro,
  }) {
    return EventoMantenimientoModel(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      notas: notas ?? this.notas,
      fecha: fecha ?? this.fecha,
      costo: costo ?? this.costo,
      proximaFecha: proximaFecha ?? this.proximaFecha,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  @override
  String toString() =>
      'EventoMantenimientoModel(id: $id, animalId: $animalId, tipo: $tipo)';
}
