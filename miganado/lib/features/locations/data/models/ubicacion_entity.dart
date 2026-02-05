import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'ubicacion_entity.g.dart';

@collection
class UbicacionEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String name;

  /// Descripción de la ubicación
  String? description;

  /// Tipo de ubicación (potrero, corral, establo, etc)
  String? type;

  /// Capacidad de animales
  int? capacity;

  /// Animales actuales (referencia a UUIDs de animales)
  List<String>? presentAnimalUuids;

  /// Notas adicionales
  String? notes;

  /// Fecha de creación
  late DateTime creationDate;

  /// Fecha de última actualización
  late DateTime lastUpdateDate;

  /// Sincronizado con servidor
  bool synced = false;

  /// ID remoto (para sincronización)
  String? remoteId;

  /// Fecha de sincronización
  DateTime? syncDate;

  /// Hash de contenido
  String? contentHash;

  /// Constructor con valores iniciales
  UbicacionEntity({
    required this.name,
    this.description,
    this.type,
    this.capacity,
    this.presentAnimalUuids,
    this.notes,
  }) {
    uuid = const Uuid().v4();
    creationDate = DateTime.now();
    lastUpdateDate = DateTime.now();
  }

  /// Constructor vacío (requerido por Isar)
  UbicacionEntity.empty() {
    uuid = const Uuid().v4();
    creationDate = DateTime.now();
    lastUpdateDate = DateTime.now();
    name = '';
  }

  /// Copia con cambios opcionales
  UbicacionEntity copyWith({
    String? uuid,
    String? name,
    String? description,
    String? type,
    int? capacity,
    List<String>? presentAnimalUuids,
    String? notes,
    bool? synced,
    String? remoteId,
    DateTime? syncDate,
    String? contentHash,
  }) {
    return UbicacionEntity(
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      capacity: capacity ?? this.capacity,
      presentAnimalUuids: presentAnimalUuids ?? this.presentAnimalUuids,
      notes: notes ?? this.notes,
    )
      ..id = id
      ..uuid = uuid ?? this.uuid
      ..creationDate = creationDate
      ..lastUpdateDate = DateTime.now()
      ..synced = synced ?? this.synced
      ..remoteId = remoteId ?? this.remoteId
      ..syncDate = syncDate ?? this.syncDate
      ..contentHash = contentHash ?? this.contentHash;
  }
}
