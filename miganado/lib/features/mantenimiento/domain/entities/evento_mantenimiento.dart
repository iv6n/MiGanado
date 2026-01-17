import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';

/// Tipos de mantenimiento sanitario
enum TipoMantenimientoSanitario {
  vacunacion,
  desparasitacion,
  tratamiento,
  curacion,
  medicacion,
  otro,
}

/// Modelo de dominio para evento de mantenimiento sanitario
class EventoMantenimiento {
  final String uuid;
  final String animalUuid;
  final TipoMantenimientoSanitario tipo;
  final String descripcion;
  final DateTime fecha;
  final String? veterinario;
  final String? medicamento;
  final String? dosisAplicada;
  final String? rutaAplicacion;
  final DateTime? proximaDosis;
  final String? observaciones;
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;

  EventoMantenimiento({
    required this.uuid,
    required this.animalUuid,
    required this.tipo,
    required this.descripcion,
    required this.fecha,
    this.veterinario,
    this.medicamento,
    this.dosisAplicada,
    this.rutaAplicacion,
    this.proximaDosis,
    this.observaciones,
    required this.fechaCreacion,
    required this.fechaActualizacion,
  });

  /// Convertir desde EventoMantenimientoEntity
  factory EventoMantenimiento.fromEntity(EventoMantenimientoEntity entity) {
    return EventoMantenimiento(
      uuid: entity.uuid,
      animalUuid: entity.animalUuid,
      tipo: _getTipo(entity.tipo),
      descripcion: entity.descripcion,
      fecha: entity.fecha,
      proximaDosis: entity.proximaFecha,
      observaciones: entity.notas,
      fechaCreacion: entity.fechaCreacion,
      fechaActualizacion: entity.fechaActualizacion,
    );
  }

  /// Convertir a EventoMantenimientoEntity
  EventoMantenimientoEntity toEntity() {
    return EventoMantenimientoEntity(
      animalUuid: animalUuid,
      tipo: _getTipoEnum(tipo),
      descripcion: descripcion,
      fecha: fecha,
      proximaFecha: proximaDosis,
      proximaDosis: proximaDosis,
      notas: observaciones,
      observaciones: observaciones,
      veterinario: veterinario,
      medicamento: medicamento,
      dosisAplicada: dosisAplicada,
      rutaAplicacion: rutaAplicacion,
    )
      ..uuid = uuid
      ..fechaCreacion = fechaCreacion
      ..fechaActualizacion = fechaActualizacion;
  }

  /// Crear copia modificada
  EventoMantenimiento copyWith({
    String? uuid,
    String? animalUuid,
    TipoMantenimientoSanitario? tipo,
    String? descripcion,
    DateTime? fecha,
    String? veterinario,
    String? medicamento,
    String? dosisAplicada,
    String? rutaAplicacion,
    DateTime? proximaDosis,
    String? observaciones,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
  }) {
    return EventoMantenimiento(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      fecha: fecha ?? this.fecha,
      veterinario: veterinario ?? this.veterinario,
      medicamento: medicamento ?? this.medicamento,
      dosisAplicada: dosisAplicada ?? this.dosisAplicada,
      rutaAplicacion: rutaAplicacion ?? this.rutaAplicacion,
      proximaDosis: proximaDosis ?? this.proximaDosis,
      observaciones: observaciones ?? this.observaciones,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  String toString() =>
      'EventoMantenimiento(animal: $animalUuid, tipo: $tipo, fecha: $fecha)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventoMantenimiento &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          animalUuid == other.animalUuid &&
          tipo == other.tipo;

  @override
  int get hashCode => uuid.hashCode ^ animalUuid.hashCode ^ tipo.hashCode;
}

/// Convertir enum a string
TipoMantenimientoSanitario _getTipo(TipoEventoMantenimiento tipo) {
  switch (tipo) {
    case TipoEventoMantenimiento.vacunacion:
      return TipoMantenimientoSanitario.vacunacion;
    case TipoEventoMantenimiento.desparasitacion:
      return TipoMantenimientoSanitario.desparasitacion;
    case TipoEventoMantenimiento.vitaminas:
    case TipoEventoMantenimiento.control_veterinario:
      return TipoMantenimientoSanitario.tratamiento;
    case TipoEventoMantenimiento.limpieza_corrales:
    case TipoEventoMantenimiento.alimentacion_especial:
    case TipoEventoMantenimiento.otro:
      return TipoMantenimientoSanitario.otro;
  }
}

/// Convertir TipoMantenimientoSanitario a TipoEventoMantenimiento
TipoEventoMantenimiento _getTipoEnum(TipoMantenimientoSanitario tipo) {
  switch (tipo) {
    case TipoMantenimientoSanitario.vacunacion:
      return TipoEventoMantenimiento.vacunacion;
    case TipoMantenimientoSanitario.desparasitacion:
      return TipoEventoMantenimiento.desparasitacion;
    case TipoMantenimientoSanitario.tratamiento:
      return TipoEventoMantenimiento.control_veterinario;
    case TipoMantenimientoSanitario.curacion:
    case TipoMantenimientoSanitario.medicacion:
    case TipoMantenimientoSanitario.otro:
      return TipoEventoMantenimiento.otro;
  }
}
