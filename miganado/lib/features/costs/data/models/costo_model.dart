import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'costo_model.g.dart';

enum TipoCosto {
  medicamento,
  alimento,
  servicio_veterinario,
  equipo,
  otro,
}

/// Modelo de Costo con TypeAdapter para Hive
@HiveType(typeId: 3)
class CostoModel {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal
  @HiveField(1)
  final String animalId;

  /// Tipo de costo
  @HiveField(2)
  final TipoCosto tipo;

  /// Monto
  @HiveField(3)
  final double monto;

  /// Descripción
  @HiveField(4)
  final String? descripcion;

  /// Fecha del costo
  @HiveField(5)
  final DateTime fecha;

  /// Fecha de creación
  @HiveField(6)
  final DateTime fechaRegistro;

  CostoModel({
    String? id,
    required this.animalId,
    required this.tipo,
    required this.monto,
    this.descripcion,
    required this.fecha,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales
  CostoModel copyWith({
    String? id,
    String? animalId,
    TipoCosto? tipo,
    double? monto,
    String? descripcion,
    DateTime? fecha,
    DateTime? fechaRegistro,
  }) {
    return CostoModel(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      tipo: tipo ?? this.tipo,
      monto: monto ?? this.monto,
      descripcion: descripcion ?? this.descripcion,
      fecha: fecha ?? this.fecha,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  @override
  String toString() =>
      'CostoModel(id: $id, animalId: $animalId, monto: $monto)';
}
