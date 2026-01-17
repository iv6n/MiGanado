import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'ubicacion_entity.g.dart';

/// Entidad de Ubicación para Isar
@collection
class UbicacionEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID de la ubicación para sincronización
  @Index(unique: true)
  late String uuid;

  /// Nombre de la ubicación
  @Index()
  late String nombre;

  /// Descripción de la ubicación
  String? descripcion;

  /// Tipo de ubicación (potrero, corral, establo, etc)
  String? tipo;

  /// Capacidad de animales
  int? capacidad;

  /// Animales actuales (referencia a UUIDs de animales)
  List<String>? animalesPresentesUuids;

  /// Notas adicionales
  String? notas;

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

  UbicacionEntity({
    required this.nombre,
    this.descripcion,
    this.tipo,
    this.capacidad,
    this.animalesPresentesUuids,
    this.notas,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();
  }

  /// Crear una copia de la ubicación
  UbicacionEntity copyWith({
    String? uuid,
    String? nombre,
    String? descripcion,
    String? tipo,
    int? capacidad,
    List<String>? animalesPresentesUuids,
    String? notas,
    bool? sincronizado,
    String? idRemoto,
  }) {
    return UbicacionEntity(
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      tipo: tipo ?? this.tipo,
      capacidad: capacidad ?? this.capacidad,
      animalesPresentesUuids:
          animalesPresentesUuids ?? this.animalesPresentesUuids,
      notas: notas ?? this.notas,
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
