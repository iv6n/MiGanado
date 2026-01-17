import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';

/// Modelo de dominio para una ubicación en el establo
class Ubicacion {
  final String uuid;
  final String nombre;
  final String? descripcion;
  final String? tipo; // Potrero, Establo, Corral, etc.
  final int? capacidad;
  final List<String>? animalesPresentesUuids;
  final String? notas;
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;

  Ubicacion({
    required this.uuid,
    required this.nombre,
    this.descripcion,
    this.tipo,
    this.capacidad,
    this.animalesPresentesUuids,
    this.notas,
    required this.fechaCreacion,
    required this.fechaActualizacion,
  });

  /// Convertir desde UbicacionEntity (capa de datos)
  factory Ubicacion.fromEntity(UbicacionEntity entity) {
    return Ubicacion(
      uuid: entity.uuid,
      nombre: entity.nombre,
      descripcion: entity.descripcion,
      tipo: entity.tipo,
      capacidad: entity.capacidad,
      animalesPresentesUuids: entity.animalesPresentesUuids,
      notas: entity.notas,
      fechaCreacion: entity.fechaCreacion,
      fechaActualizacion: entity.fechaActualizacion,
    );
  }

  /// Convertir a UbicacionEntity (capa de datos)
  UbicacionEntity toEntity() {
    return UbicacionEntity(
      nombre: nombre,
      descripcion: descripcion,
      tipo: tipo,
      capacidad: capacidad,
      animalesPresentesUuids: animalesPresentesUuids,
      notas: notas,
    )
      ..uuid = uuid
      ..fechaCreacion = fechaCreacion
      ..fechaActualizacion = fechaActualizacion;
  }

  /// Crear una copia modificada
  Ubicacion copyWith({
    String? uuid,
    String? nombre,
    String? descripcion,
    String? tipo,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
  }) {
    return Ubicacion(
      uuid: uuid ?? this.uuid,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      tipo: tipo ?? this.tipo,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  String toString() => 'Ubicacion(uuid: $uuid, nombre: $nombre, tipo: $tipo)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ubicacion &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          nombre == other.nombre &&
          descripcion == other.descripcion &&
          tipo == other.tipo;

  @override
  int get hashCode =>
      uuid.hashCode ^ nombre.hashCode ^ descripcion.hashCode ^ tipo.hashCode;
}

/// Modelo para el histórico de cambio de ubicación de un animal
class CambioUbicacion {
  final String id;
  final String animalUuid;
  final String ubicacionUuidAnterior;
  final String ubicacionUuidNueva;
  final DateTime fecha;
  final String? razon;
  final String? observaciones;

  CambioUbicacion({
    required this.id,
    required this.animalUuid,
    required this.ubicacionUuidAnterior,
    required this.ubicacionUuidNueva,
    required this.fecha,
    this.razon,
    this.observaciones,
  });

  @override
  String toString() =>
      'CambioUbicacion(animal: $animalUuid, de: $ubicacionUuidAnterior a: $ubicacionUuidNueva, fecha: $fecha)';
}
