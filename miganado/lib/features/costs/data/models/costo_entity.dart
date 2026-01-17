import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'costo_entity.g.dart';

/// Tipos de costos
enum TipoCosto {
  alimentacion,
  medicinas,
  vacunas,
  veterinario,
  mantenimiento,
  energetico,
  agua,
  transporte,
  otro,
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
  late TipoCosto tipo;

  /// Descripción del costo
  late String descripcion;

  /// Monto del costo
  late double monto;

  /// Fecha del costo
  @Index()
  late DateTime fecha;

  /// Detalles adicionales
  String? detalles;

  /// Responsable del pago
  String? responsable;

  /// Comprobante de pago (puede ser URL o referencia)
  String? comprobante;

  /// Fecha de creación
  late DateTime fechaCreacion;

  /// Fecha de última actualización
  late DateTime fechaActualizacion;

  /// Sincronizado con servidor
  bool sincronizado = false;

  /// ID remoto (para sincronización)
  String? idRemoto;

  /// Campos de auditoría
  DateTime? fechaSincronizacion;
  String? hashContenido;

  CostoEntity({
    this.animalUuid,
    required this.tipo,
    required this.descripcion,
    required this.monto,
    required this.fecha,
    this.detalles,
    this.responsable,
    this.comprobante,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();
  }

  /// Crear una copia del costo
  CostoEntity copyWith({
    String? uuid,
    String? animalUuid,
    TipoCosto? tipo,
    String? descripcion,
    double? monto,
    DateTime? fecha,
    String? detalles,
    String? responsable,
    String? comprobante,
    bool? sincronizado,
    String? idRemoto,
  }) {
    return CostoEntity(
      animalUuid: animalUuid ?? this.animalUuid,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      monto: monto ?? this.monto,
      fecha: fecha ?? this.fecha,
      detalles: detalles ?? this.detalles,
      responsable: responsable ?? this.responsable,
      comprobante: comprobante ?? this.comprobante,
    )
      ..id = this.id
      ..uuid = uuid ?? this.uuid
      ..fechaCreacion = this.fechaCreacion
      ..fechaActualizacion = DateTime.now()
      ..sincronizado = sincronizado ?? this.sincronizado
      ..idRemoto = idRemoto ?? this.idRemoto
      ..fechaSincronizacion = this.fechaSincronizacion
      ..hashContenido = this.hashContenido;
  }
}
