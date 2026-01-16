import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'peso_registro.g.dart';

/// Registro de un pesaje de un animal
/// Forma parte del historial de pesos del animal
@HiveType(typeId: 20)
class PesoRegistro {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// ID del animal asociado
  @HiveField(1)
  final String animalId;

  /// Peso en kilogramos
  @HiveField(2)
  final double peso;

  /// Fecha del pesaje
  @HiveField(3)
  final DateTime fecha;

  /// Observaciones sobre el pesaje
  /// Ej: "Pesaje pre-venta", "Condición regular"
  @HiveField(4)
  final String? observacion;

  /// Fecha de creación del registro
  @HiveField(5)
  final DateTime fechaRegistro;

  PesoRegistro({
    String? id,
    required this.animalId,
    required this.peso,
    required this.fecha,
    this.observacion,
    DateTime? fechaRegistro,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now();

  /// Copia con campos opcionales actualizados
  PesoRegistro copyWith({
    String? id,
    String? animalId,
    double? peso,
    DateTime? fecha,
    String? observacion,
    DateTime? fechaRegistro,
  }) {
    return PesoRegistro(
      id: id ?? this.id,
      animalId: animalId ?? this.animalId,
      peso: peso ?? this.peso,
      fecha: fecha ?? this.fecha,
      observacion: observacion ?? this.observacion,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  @override
  String toString() => 'PesoRegistro(id: $id, peso: $peso kg, fecha: $fecha)';
}
