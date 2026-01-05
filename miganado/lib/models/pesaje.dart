import 'package:uuid/uuid.dart';

/// Modelo de Pesaje - Registro del peso de un animal en una fecha específica
class Pesaje {
  /// Identificador único (UUID)
  final String id;

  /// ID del animal al que pertenece este pesaje
  final String animalId;

  /// Peso en kilogramos
  final double pesoKg;

  /// Fecha y hora del pesaje
  final DateTime fecha;

  /// Notas opcionales sobre el pesaje
  final String? notas;

  /// Constructor
  Pesaje({
    String? id,
    required this.animalId,
    required this.pesoKg,
    DateTime? fecha,
    this.notas,
  })  : id = id ?? const Uuid().v4(),
        fecha = fecha ?? DateTime.now();

  /// Copia el objeto con campos opcionales actualizados
  Pesaje copyWith({
    String? id,
    String? animalId,
    double? pesoKg,
    DateTime? fecha,
    String? notas,
  }) {
    return Pesaje(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      pesoKg: pesoKg ?? this.pesoKg,
      fecha: fecha ?? this.fecha,
      notas: notas ?? this.notas,
    );
  }

  @override
  String toString() =>
      'Pesaje(id: $id, animalId: $animalId, pesoKg: $pesoKg, fecha: $fecha)';
}
