import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'ganadero_model.g.dart';

/// Modelo de Ganadero con TypeAdapter para Hive
@HiveType(typeId: 4)
class GanaderoModel {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// Nombre del ganadero
  @HiveField(1)
  final String nombre;

  /// Teléfono de contacto
  @HiveField(2)
  final String? telefono;

  /// Email
  @HiveField(3)
  final String? email;

  /// Ubicación/Finca
  @HiveField(4)
  final String? ubicacion;

  /// Notas
  @HiveField(5)
  final String? notas;

  /// Fecha de creación
  @HiveField(6)
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  @HiveField(7)
  final DateTime ultimaActualizacion;

  GanaderoModel({
    String? id,
    required this.nombre,
    this.telefono,
    this.email,
    this.ubicacion,
    this.notas,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  /// Copia con campos opcionales
  GanaderoModel copyWith({
    String? id,
    String? nombre,
    String? telefono,
    String? email,
    String? ubicacion,
    String? notas,
    DateTime? ultimaActualizacion,
  }) {
    return GanaderoModel(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      telefono: telefono ?? this.telefono,
      email: email ?? this.email,
      ubicacion: ubicacion ?? this.ubicacion,
      notas: notas ?? this.notas,
      fechaRegistro: this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? DateTime.now(),
    );
  }

  @override
  String toString() => 'GanaderoModel(id: $id, nombre: $nombre)';
}
