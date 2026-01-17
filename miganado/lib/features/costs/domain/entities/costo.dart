import 'package:miganado/features/costs/data/models/costo_entity.dart';

/// Modelo de dominio para un costo asociado a un animal
class Costo {
  final String uuid;
  final String? animalUuid;
  final String descripcion;
  final double monto;
  final DateTime fecha;
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;
  final String? detalles;
  final String? responsable;
  final String? comprobante;

  Costo({
    required this.uuid,
    this.animalUuid,
    required this.descripcion,
    required this.monto,
    required this.fecha,
    required this.fechaCreacion,
    required this.fechaActualizacion,
    this.detalles,
    this.responsable,
    this.comprobante,
  });

  /// Convertir desde CostoEntity
  factory Costo.fromEntity(CostoEntity entity) {
    return Costo(
      uuid: entity.uuid,
      animalUuid: entity.animalUuid,
      descripcion: entity.descripcion,
      monto: entity.monto,
      fecha: entity.fecha,
      fechaCreacion: entity.fechaCreacion,
      fechaActualizacion: entity.fechaActualizacion,
      detalles: entity.detalles,
      responsable: entity.responsable,
      comprobante: entity.comprobante,
    );
  }

  /// Convertir a CostoEntity
  CostoEntity toEntity() {
    return CostoEntity(
      animalUuid: animalUuid,
      tipo: TipoCosto.otro,
      descripcion: descripcion,
      monto: monto,
      fecha: fecha,
      detalles: detalles,
      responsable: responsable,
      comprobante: comprobante,
    )
      ..uuid = uuid
      ..fechaCreacion = fechaCreacion
      ..fechaActualizacion = fechaActualizacion;
  }

  /// Crear copia modificada
  Costo copyWith({
    String? uuid,
    String? animalUuid,
    String? descripcion,
    double? monto,
    DateTime? fecha,
    String? detalles,
    String? responsable,
    String? comprobante,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
  }) {
    return Costo(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      descripcion: descripcion ?? this.descripcion,
      monto: monto ?? this.monto,
      fecha: fecha ?? this.fecha,
      detalles: detalles ?? this.detalles,
      responsable: responsable ?? this.responsable,
      comprobante: comprobante ?? this.comprobante,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  String toString() =>
      'Costo(animal: $animalUuid, descripcion: $descripcion, monto: $monto)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Costo &&
          runtimeType == other.runtimeType &&
          uuid == other.uuid &&
          animalUuid == other.animalUuid &&
          descripcion == other.descripcion;

  @override
  int get hashCode =>
      uuid.hashCode ^ animalUuid.hashCode ^ descripcion.hashCode;
}

/// Modelo para resumenes financieros
class ResumenFinanciero {
  final String animalUuid;
  final double costoTotal;
  final int totalEventos;
  final DateTime desde;
  final DateTime hasta;

  ResumenFinanciero({
    required this.animalUuid,
    required this.costoTotal,
    required this.totalEventos,
    required this.desde,
    required this.hasta,
  });

  /// Obtener costo promedio
  double get costoPromedio => totalEventos > 0 ? costoTotal / totalEventos : 0;

  @override
  String toString() =>
      'ResumenFinanciero(animal: $animalUuid, total: $costoTotal, eventos: $totalEventos)';
}
