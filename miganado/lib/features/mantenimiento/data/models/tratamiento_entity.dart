import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'tratamiento_entity.g.dart';

@collection
class TratamientoEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Información del tratamiento
  late String motivo; // ej: "Mastitis", "Diarrea", "Infección respiratoria"
  late String medicamento;
  late String? marca;
  late String? lote;

  // Aplicación
  late DateTime fechaInicio;
  late DateTime? fechaFin;
  late String dosis;
  late String viaAplicacion; // Oral, IM, IV, SQ, Tópica, etc
  late int duracionDias; // Duración total del tratamiento
  late String frecuencia; // ej: "Cada 12 horas", "Cada 8 horas"

  // Resultado
  late String? resultado; // "Mejorado", "Curado", "Sin cambios", "Empeorado"
  late String? diagnosticoPrevio;
  late String? diagnosticoFinal;

  // Costos
  double? costoMedicamento;
  double? costoVeterinario;
  double? costoTotal;

  // Observaciones
  String? observaciones;
  String? efectosSecundarios;
  String? notas;

  // Auditoría
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;
  late String registradoPor;
  String? diagnosticadoPor;

  TratamientoEntity({
    required this.animalUuid,
    required this.motivo,
    required this.medicamento,
    required this.fechaInicio,
    required this.dosis,
    required this.viaAplicacion,
    required this.duracionDias,
    required this.frecuencia,
    required this.registradoPor,
    this.marca,
    this.lote,
    this.fechaFin,
    this.resultado,
    this.diagnosticoPrevio,
    this.diagnosticoFinal,
    this.costoMedicamento,
    this.costoVeterinario,
    this.costoTotal,
    this.observaciones,
    this.efectosSecundarios,
    this.notas,
    this.diagnosticadoPor,
  }) {
    uuid = const Uuid().v4();
    fechaRegistro = DateTime.now();
    fechaActualizacion = null;
  }

  TratamientoEntity copyWith({
    String? motivo,
    String? medicamento,
    String? marca,
    String? lote,
    DateTime? fechaInicio,
    DateTime? fechaFin,
    String? dosis,
    String? viaAplicacion,
    int? duracionDias,
    String? frecuencia,
    String? resultado,
    String? diagnosticoPrevio,
    String? diagnosticoFinal,
    double? costoMedicamento,
    double? costoVeterinario,
    double? costoTotal,
    String? observaciones,
    String? efectosSecundarios,
    String? notas,
  }) {
    return TratamientoEntity(
      animalUuid: animalUuid,
      motivo: motivo ?? this.motivo,
      medicamento: medicamento ?? this.medicamento,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      dosis: dosis ?? this.dosis,
      viaAplicacion: viaAplicacion ?? this.viaAplicacion,
      duracionDias: duracionDias ?? this.duracionDias,
      frecuencia: frecuencia ?? this.frecuencia,
      registradoPor: registradoPor,
      marca: marca ?? this.marca,
      lote: lote ?? this.lote,
      fechaFin: fechaFin ?? this.fechaFin,
      resultado: resultado ?? this.resultado,
      diagnosticoPrevio: diagnosticoPrevio ?? this.diagnosticoPrevio,
      diagnosticoFinal: diagnosticoFinal ?? this.diagnosticoFinal,
      costoMedicamento: costoMedicamento ?? this.costoMedicamento,
      costoVeterinario: costoVeterinario ?? this.costoVeterinario,
      costoTotal: costoTotal ?? this.costoTotal,
      observaciones: observaciones ?? this.observaciones,
      efectosSecundarios: efectosSecundarios ?? this.efectosSecundarios,
      notas: notas ?? this.notas,
      diagnosticadoPor: diagnosticadoPor,
    )
      ..id = this.id
      ..uuid = uuid
      ..fechaRegistro = this.fechaRegistro
      ..fechaActualizacion = DateTime.now();
  }
}
