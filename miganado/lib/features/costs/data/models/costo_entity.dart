import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'costo_entity.g.dart';

/// Tipos de costos
enum CostType {
  feed,
  medicines,
  vaccines,
  veterinary,
  maintenance,
  energy,
  water,
  transport,
  other,
}

/// Entidad de Costo para Isar
@collection
class CostoEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID del costo para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia, puede ser null para costos generales)
  @Index()
  String? animalUuid;

  /// Tipo de costo
  @enumerated
  late CostType type;

  /// Descripción del costo
  late String description;

  /// Monto del costo
  late double amount;

  /// Fecha del costo
  @Index()
  late DateTime date;

  /// Detalles adicionales
  String? details;

  /// Responsable del pago
  String? responsible;

  /// Comprobante de pago (puede ser URL o referencia)
  String? receipt;

  /// Fecha de creación
  late DateTime creationDate;

  /// Fecha de última actualización
  late DateTime updateDate;

  /// Sincronizado con servidor
  bool synced = false;

  /// ID remoto (para sincronización)
  String? remoteId;

  /// Campos de auditoría
  DateTime? syncDate;
  String? contentHash;

  /// Constructor
  CostoEntity({
    this.animalUuid,
    required this.type,
    required this.description,
    required this.amount,
    required this.date,
    this.details,
    this.responsible,
    this.receipt,
  }) {
    uuid = const Uuid().v4();
    creationDate = DateTime.now();
    updateDate = DateTime.now();
  }

  /// Crear una copia del costo
  CostoEntity copyWith({
    String? uuid,
    String? animalUuid,
    CostType? type,
    String? description,
    double? amount,
    DateTime? date,
    String? details,
    String? responsible,
    String? receipt,
    bool? synced,
    String? remoteId,
  }) {
    return CostoEntity(
      animalUuid: animalUuid ?? this.animalUuid,
      type: type ?? this.type,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      details: details ?? this.details,
      responsible: responsible ?? this.responsible,
      receipt: receipt ?? this.receipt,
    )
      ..id = id
      ..uuid = uuid ?? this.uuid
      ..creationDate = creationDate
      ..updateDate = DateTime.now()
      ..synced = synced ?? this.synced
      ..remoteId = remoteId ?? this.remoteId
      ..syncDate = syncDate
      ..contentHash = contentHash;
  }

  /// ============ SPANISH PROPERTY ALIASES FOR DOMAIN COMPATIBILITY ============

  /// Alias para compatibilidad: descripcion
  String get descripcion => description;

  /// Alias para compatibilidad: monto
  double get monto => amount;

  /// Alias para compatibilidad: fecha
  DateTime get fecha => date;

  /// Alias para compatibilidad: fechaCreacion
  DateTime get fechaCreacion => creationDate;

  /// Alias para compatibilidad: fechaActualizacion
  DateTime get fechaActualizacion => updateDate;

  /// Alias para compatibilidad: detalles
  String? get detalles => details;

  /// Alias para compatibilidad: responsable
  String? get responsable => responsible;

  /// Alias para compatibilidad: comprobante
  String? get comprobante => receipt;

  /// Alias para compatibilidad: tipo (returns Spanish TipoCosto equivalent)
  String get tipo => switch (type) {
        CostType.feed => 'alimento',
        CostType.medicines => 'medicinas',
        CostType.vaccines => 'vacunas',
        CostType.veterinary => 'veterinario',
        CostType.maintenance => 'mantenimiento',
        CostType.energy => 'energia',
        CostType.water => 'agua',
        CostType.transport => 'transporte',
        CostType.other => 'otro',
      };
}
