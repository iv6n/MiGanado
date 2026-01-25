import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'vacuna_entity.g.dart';

@collection
class VacunaEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Datos de la vacuna
  late String tipo; // ej: "Triple viral", "Pentavalente"
  late String enfermedad; // ej: "Fiebre aftosa", "Brucelosis"
  late String? producto; // ej: "AFTOVAX"
  late String? lote;

  // Información de aplicación
  late DateTime fecha;
  late String? dosis;
  late String? viaAplicacion; // IM, IV, SQ, etc
  late String? aplicadoPor;

  // Seguimiento
  late DateTime? proximaFecha;
  late int diasIntervalo; // Días entre dosis

  // Costo
  double? costo;

  // Observaciones
  String? observaciones;
  String? reaccionesAdversas;

  // Auditoría
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;
  late String registradoPor;

  VacunaEntity({
    required this.animalUuid,
    required this.tipo,
    required this.enfermedad,
    required this.fecha,
    required this.diasIntervalo,
    required this.aplicadoPor,
    required this.registradoPor,
    this.producto,
    this.lote,
    this.dosis,
    this.viaAplicacion,
    this.proximaFecha,
    this.costo,
    this.observaciones,
    this.reaccionesAdversas,
  }) {
    uuid = const Uuid().v4();
    fechaRegistro = DateTime.now();
    fechaActualizacion = null;
  }

  VacunaEntity copyWith({
    String? tipo,
    String? enfermedad,
    String? producto,
    String? lote,
    DateTime? fecha,
    String? dosis,
    String? viaAplicacion,
    String? aplicadoPor,
    DateTime? proximaFecha,
    int? diasIntervalo,
    double? costo,
    String? observaciones,
    String? reaccionesAdversas,
  }) {
    return VacunaEntity(
      animalUuid: animalUuid,
      tipo: tipo ?? this.tipo,
      enfermedad: enfermedad ?? this.enfermedad,
      fecha: fecha ?? this.fecha,
      diasIntervalo: diasIntervalo ?? this.diasIntervalo,
      aplicadoPor: aplicadoPor ?? this.aplicadoPor,
      registradoPor: registradoPor,
      producto: producto ?? this.producto,
      lote: lote ?? this.lote,
      dosis: dosis ?? this.dosis,
      viaAplicacion: viaAplicacion ?? this.viaAplicacion,
      proximaFecha: proximaFecha ?? this.proximaFecha,
      costo: costo ?? this.costo,
      observaciones: observaciones ?? this.observaciones,
      reaccionesAdversas: reaccionesAdversas ?? this.reaccionesAdversas,
    )
      ..id = this.id
      ..uuid = uuid
      ..fechaRegistro = this.fechaRegistro
      ..fechaActualizacion = DateTime.now();
  }
}
