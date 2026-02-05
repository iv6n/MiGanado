import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';

/// Modelo de dominio para una ubicación en el establo
class Ubicacion {
  final String uuid;
  final String name;
  final String? description;
  final String? type; // Potrero, Establo, Corral, etc.
  final int? capacity;
  final List<String>? presentAnimalUuids;
  final String? notes;
  final DateTime creationDate;
  final DateTime lastUpdateDate;

  Ubicacion({
    required this.uuid,
    required this.name,
    this.description,
    this.type,
    this.capacity,
    this.presentAnimalUuids,
    this.notes,
    required this.creationDate,
    required this.lastUpdateDate,
  });

  /// Convertir desde UbicacionEntity (capa de datos)
  factory Ubicacion.fromEntity(UbicacionEntity entity) {
    return Ubicacion(
      uuid: entity.uuid,
      name: entity.name,
      description: entity.description,
      type: entity.type,
      capacity: entity.capacity,
      presentAnimalUuids: entity.presentAnimalUuids,
      notes: entity.notes,
      creationDate: entity.creationDate,
      lastUpdateDate: entity.lastUpdateDate,
    );
  }

  /// Convertir a UbicacionEntity (capa de datos)
  UbicacionEntity toEntity() {
    return UbicacionEntity(
      name: name,
      description: description,
      type: type,
      capacity: capacity,
      presentAnimalUuids: presentAnimalUuids,
      notes: notes,
    )
      ..uuid = uuid
      ..creationDate = creationDate
      ..lastUpdateDate = lastUpdateDate;
  }

  /// Crear una copia modificada
  Ubicacion copyWith({
    String? uuid,
    String? name,
    String? description,
    String? type,
    int? capacity,
    List<String>? presentAnimalUuids,
    String? notes,
    DateTime? creationDate,
    DateTime? lastUpdateDate,
  }) {
    return Ubicacion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      capacity: capacity ?? this.capacity,
      presentAnimalUuids: presentAnimalUuids ?? this.presentAnimalUuids,
      notes: notes ?? this.notes,
      creationDate: creationDate ?? this.creationDate,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
    );
  }

  @override
  String toString() => 'Ubicacion(uuid: $uuid, name: $name, type: $type)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ubicacion &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          name == other.name &&
          description == other.description &&
          type == other.type;

  @override
  int get hashCode =>
      uuid.hashCode ^ name.hashCode ^ description.hashCode ^ type.hashCode;
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
