import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'ubicacion_model.g.dart';

enum TipoUbicacion {
  corral,
  pastura,
  establo,
  otro,
}

/// Modelo de Ubicación con TypeAdapter para Hive
@HiveType(typeId: 2)
class UbicacionModel {
  /// Identificador único
  @HiveField(0)
  final String id;

  /// Nombre de la ubicación
  @HiveField(1)
  final String nombre;

  /// Tipo de ubicación
  @HiveField(2)
  final TipoUbicacion tipo;

  /// Descripción
  @HiveField(3)
  final String? descripcion;

  /// Ruta de la foto
  @HiveField(4)
  final String? fotoPath;

  /// Fecha de creación
  @HiveField(5)
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  @HiveField(6)
  final DateTime ultimaActualizacion;

  UbicacionModel({
    String? id,
    required this.nombre,
    required this.tipo,
    this.descripcion,
    this.fotoPath,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  /// Copia con campos opcionales
  UbicacionModel copyWith({
    String? id,
    String? nombre,
    TipoUbicacion? tipo,
    String? descripcion,
    String? fotoPath,
    DateTime? ultimaActualizacion,
  }) {
    return UbicacionModel(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      fotoPath: fotoPath ?? this.fotoPath,
      fechaRegistro: this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? DateTime.now(),
    );
  }

  @override
  String toString() => 'UbicacionModel(id: $id, nombre: $nombre)';
}
