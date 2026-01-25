import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'desparasitacion_entity.g.dart';

@collection
class DesparasitacionEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Tipo de desparasitación
  late String tipo; // "Interna", "Externa", "Mixta"
  late String producto;
  late String? marca;
  late String? lote;

  // Información de aplicación
  late DateTime fecha;
  late String dosis;
  late String viaAplicacion; // Oral, IM, SQ, Tópica, etc
  late String? aplicadoPor;

  // Seguimiento
  late DateTime? proximaAplicacion;
  late int diasIntervalo; // Días entre aplicaciones

  // Costo
  double? costo;

  // Observaciones
  String? observaciones;
  String? efectosObservados;

  // Auditoría
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;
  late String registradoPor;

  DesparasitacionEntity({
    required this.animalUuid,
    required this.tipo,
    required this.producto,
    required this.fecha,
    required this.dosis,
    required this.viaAplicacion,
    required this.diasIntervalo,
    required this.registradoPor,
    this.marca,
    this.lote,
    this.aplicadoPor,
    this.proximaAplicacion,
    this.costo,
    this.observaciones,
    this.efectosObservados,
  }) {
    uuid = const Uuid().v4();
    fechaRegistro = DateTime.now();
    fechaActualizacion = null;
  }

  DesparasitacionEntity copyWith({
    String? tipo,
    String? producto,
    String? marca,
    String? lote,
    DateTime? fecha,
    String? dosis,
    String? viaAplicacion,
    String? aplicadoPor,
    DateTime? proximaAplicacion,
    int? diasIntervalo,
    double? costo,
    String? observaciones,
    String? efectosObservados,
  }) {
    return DesparasitacionEntity(
      animalUuid: animalUuid,
      tipo: tipo ?? this.tipo,
      producto: producto ?? this.producto,
      fecha: fecha ?? this.fecha,
      dosis: dosis ?? this.dosis,
      viaAplicacion: viaAplicacion ?? this.viaAplicacion,
      diasIntervalo: diasIntervalo ?? this.diasIntervalo,
      registradoPor: registradoPor,
      marca: marca ?? this.marca,
      lote: lote ?? this.lote,
      aplicadoPor: aplicadoPor ?? this.aplicadoPor,
      proximaAplicacion: proximaAplicacion ?? this.proximaAplicacion,
      costo: costo ?? this.costo,
      observaciones: observaciones ?? this.observaciones,
      efectosObservados: efectosObservados ?? this.efectosObservados,
    )
      ..id = this.id
      ..uuid = uuid
      ..fechaRegistro = this.fechaRegistro
      ..fechaActualizacion = DateTime.now();
  }
}
