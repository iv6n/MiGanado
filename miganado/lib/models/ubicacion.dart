import 'package:uuid/uuid.dart';

/// Modelo de Ubicación - Lugares donde pueden estar los animales
class Ubicacion {
  /// Identificador único (UUID)
  final String id;

  /// Nombre de la ubicación (Ej: Corral 1, Potrero Norte, Monte)
  final String nombre;

  /// Descripción detallada de la ubicación (opcional)
  final String? descripcion;

  /// Tipo de ubicación (corral, potrero, monte, establo, etc.)
  final String tipo;

  /// Foto o imagen de la ubicación (opcional)
  final String? fotoPath;

  /// Fecha de creación del registro
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  final DateTime ultimaActualizacion;

  /// Constructor
  Ubicacion({
    String? id,
    required this.nombre,
    this.descripcion,
    required this.tipo,
    this.fotoPath,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  /// Copia el objeto con campos opcionales actualizados
  Ubicacion copyWith({
    String? id,
    String? nombre,
    String? descripcion,
    String? tipo,
    String? fotoPath,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  }) {
    return Ubicacion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      tipo: tipo ?? this.tipo,
      fotoPath: fotoPath ?? this.fotoPath,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? this.ultimaActualizacion,
    );
  }

  @override
  String toString() => 'Ubicacion(id: $id, nombre: $nombre, tipo: $tipo)';
}
