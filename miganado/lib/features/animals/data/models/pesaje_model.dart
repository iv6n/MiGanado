import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'pesaje_model.g.dart';

/// Modelo de Pesaje con TypeAdapter para Hive
@HiveType(typeId: 1)
class PesajeModel {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal
  @HiveField(1)
  final String animalId;

  /// Peso en kg
  @HiveField(2)
  final double peso;

  /// Fecha del pesaje
  @HiveField(3)
  final DateTime fecha;

  /// Notas adicionales
  @HiveField(4)
  final String? notas;

  /// Fecha de creación
  @HiveField(5)
  final DateTime fechaRegistro;

  PesajeModel({
    String? id,
    required this.animalId,
    required this.peso,
    required this.fecha,
    this.notas,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales
  PesajeModel copyWith({
    String? id,
    String? animalId,
    double? peso,
    DateTime? fecha,
    String? notas,
    DateTime? fechaRegistro,
  }) {
    return PesajeModel(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      peso: peso ?? this.peso,
      fecha: fecha ?? this.fecha,
      notas: notas ?? this.notas,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  @override
  String toString() => 'PesajeModel(id: $id, animalId: $animalId, peso: $peso)';
}
