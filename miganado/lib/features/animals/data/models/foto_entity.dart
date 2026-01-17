import 'package:isar/isar.dart';

part 'foto_entity.g.dart';

@collection
class FotoEntity {
  Id? id;

  @Index()
  late String uuid;

  @Index()
  late String animalUuid; // referencia al animal

  late String rutaLocal; // ruta del archivo local

  @Index()
  late DateTime fechaCaptura;
  late String? descripcion; // anotaciones sobre la foto
  late String? tituloFoto;

  // Campos de auditoría
  late String registradoPor;
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;

  FotoEntity({
    required this.uuid,
    required this.animalUuid,
    required this.rutaLocal,
    required this.fechaCaptura,
    this.descripcion,
    this.tituloFoto,
    required this.registradoPor,
    required this.fechaRegistro,
    this.fechaActualizacion,
  });

  FotoEntity copyWith({
    String? uuid,
    String? animalUuid,
    String? rutaLocal,
    DateTime? fechaCaptura,
    String? descripcion,
    String? tituloFoto,
    String? registradoPor,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
  }) {
    return FotoEntity(
      uuid: uuid ?? this.uuid,
      animalUuid: animalUuid ?? this.animalUuid,
      rutaLocal: rutaLocal ?? this.rutaLocal,
      fechaCaptura: fechaCaptura ?? this.fechaCaptura,
      descripcion: descripcion ?? this.descripcion,
      tituloFoto: tituloFoto ?? this.tituloFoto,
      registradoPor: registradoPor ?? this.registradoPor,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }
}
