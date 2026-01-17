import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'pesaje_entity.g.dart';

/// Entidad de Pesaje para Isar
@collection
class PesajeEntity {
  /// Identificador único
  Id id = Isar.autoIncrement;

  /// UUID del pesaje para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Peso en kilogramos
  late double peso;

  /// Unidad de peso: 'kg' o 'lb'
  late String unidad;

  /// Fecha del pesaje
  @Index()
  late DateTime fecha;

  /// Notas del pesaje
  String? notas;

  /// Quien registró el pesaje
  String? registradoPor;

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

  PesajeEntity({
    required this.animalUuid,
    required this.peso,
    required this.unidad,
    required this.fecha,
    this.notas,
    this.registradoPor,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();
  }

  /// Crear una copia del pesaje
  PesajeEntity copyWith({
    String? uuid,
    String? animalUuid,
    double? peso,
    String? unidad,
    DateTime? fecha,
    String? notas,
    String? registradoPor,
    bool? sincronizado,
    String? idRemoto,
  }) {
    return PesajeEntity(
      animalUuid: animalUuid ?? this.animalUuid,
      peso: peso ?? this.peso,
      unidad: unidad ?? this.unidad,
      fecha: fecha ?? this.fecha,
      notas: notas ?? this.notas,
      registradoPor: registradoPor ?? this.registradoPor,
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
