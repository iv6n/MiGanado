import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'ganadero_entity.g.dart';

/// Entidad de Ganadero para Isar
@collection
class GanaderoEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID del ganadero para sincronización
  @Index(unique: true)
  late String uuid;

  /// Nombre del ganadero
  late String nombre;

  /// Teléfono
  String? telefono;

  /// Email
  @Index(unique: true)
  String? email;

  /// Ubicación
  String? ubicacion;

  /// Notas adicionales
  String? notas;

  /// Número de animales en el hato
  int? cantidadAnimales;

  /// Tipo de producción (lechero, carne, etc)
  String? tipoProduccion;

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

  GanaderoEntity({
    required this.nombre,
    this.telefono,
    this.email,
    this.ubicacion,
    this.notas,
    this.cantidadAnimales,
    this.tipoProduccion,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();
  }

  /// Crear una copia del ganadero
  GanaderoEntity copyWith({
    String? uuid,
    String? nombre,
    String? telefono,
    String? email,
    String? ubicacion,
    String? notas,
    int? cantidadAnimales,
    String? tipoProduccion,
    bool? sincronizado,
    String? idRemoto,
  }) {
    return GanaderoEntity(
      nombre: nombre ?? this.nombre,
      telefono: telefono ?? this.telefono,
      email: email ?? this.email,
      ubicacion: ubicacion ?? this.ubicacion,
      notas: notas ?? this.notas,
      cantidadAnimales: cantidadAnimales ?? this.cantidadAnimales,
      tipoProduccion: tipoProduccion ?? this.tipoProduccion,
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
