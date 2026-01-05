import 'package:uuid/uuid.dart';

/// Modelo de Ganadero - Información personal del ganadero
class Ganadero {
  /// Identificador único (UUID)
  final String id;

  /// Nombre del ganadero
  final String nombre;

  /// Marca de herrado (hierro único para marcar animales)
  final String? marcaHerrado;

  /// Señal de oreja (corte característico en la oreja)
  final String? senalOreja;

  /// UPP (Unidad de Producción Pecuaria - número de registro)
  final String? upp;

  /// Teléfono de contacto
  final String? telefono;

  /// Dirección de la finca
  final String? direccion;

  /// Notas adicionales
  final String? notas;

  /// Fecha de creación del registro
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  final DateTime ultimaActualizacion;

  /// Constructor
  Ganadero({
    String? id,
    required this.nombre,
    this.marcaHerrado,
    this.senalOreja,
    this.upp,
    this.telefono,
    this.direccion,
    this.notas,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  })  : id = id ?? const Uuid().v4(),
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  /// Copia el objeto con campos opcionales actualizados
  Ganadero copyWith({
    String? id,
    String? nombre,
    String? marcaHerrado,
    String? senalOreja,
    String? upp,
    String? telefono,
    String? direccion,
    String? notas,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
  }) {
    return Ganadero(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      marcaHerrado: marcaHerrado ?? this.marcaHerrado,
      senalOreja: senalOreja ?? this.senalOreja,
      upp: upp ?? this.upp,
      telefono: telefono ?? this.telefono,
      direccion: direccion ?? this.direccion,
      notas: notas ?? this.notas,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? this.ultimaActualizacion,
    );
  }

  @override
  String toString() => 'Ganadero(id: $id, nombre: $nombre)';
}
