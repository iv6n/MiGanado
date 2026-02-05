import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'tratamiento_entity.g.dart';

/// Entidad de Tratamiento para Isar
@collection
class TratamientoEntity {
  /// Identificador único
  Id? id;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Razón/Motivo del tratamiento (ej: "Mastitis", "Diarrea", "Infección respiratoria")
  late String reason;

  /// Nombre del medicamento
  late String medicine;

  /// Marca comercial
  late String? brand;

  /// Número de lote
  late String? lot;

  /// Fecha de inicio
  late DateTime startDate;

  /// Fecha de fin
  late DateTime? endDate;

  /// Dosis
  late String dose;

  /// Vía de aplicación (Oral, IM, IV, SQ, Topical, etc)
  late String administrationRoute;

  /// Duración total en días
  late int durationDays;

  /// Frecuencia de aplicación (ej: "Cada 12 horas", "Cada 8 horas")
  late String frequency;

  /// Resultado del tratamiento ("Improved", "Cured", "No changes", "Worsened")
  late String? result;

  /// Diagnóstico previo
  late String? previousDiagnosis;

  /// Diagnóstico final
  late String? finalDiagnosis;

  /// Costo del medicamento
  double? medicineCost;

  /// Costo veterinario
  double? veterinaryCost;

  /// Costo total
  double? totalCost;

  /// Observaciones
  String? observations;

  /// Efectos secundarios
  String? sideEffects;

  /// Notas adicionales
  String? notes;

  /// Fecha de registro
  late DateTime registrationDate;

  /// Fecha de última actualización
  late DateTime? updateDate;

  /// Registrado por
  late String registeredBy;

  /// Diagnosticado por
  String? diagnosedBy;

  /// Constructor con parámetros en español
  TratamientoEntity({
    required this.animalUuid,
    required String motivo,
    required String medicamento,
    required DateTime fechaInicio,
    required String dosis,
    required String viaAplicacion,
    required int duracionDias,
    required String registradoPor,
    String? marca,
    String? lote,
    DateTime? fechaFin,
    String? resultado,
    String? diagnosticoPrevio,
    String? diagnosticoFinal,
    double? costoMedicina,
    double? costoVeterinario,
    double? costoTotal,
    String? observaciones,
    String? efectosSecundarios,
    String? notas,
    String? diagnosticadoPor,
    String? frecuencia,
  }) {
    reason = motivo;
    medicine = medicamento;
    startDate = fechaInicio;
    dose = dosis;
    administrationRoute = viaAplicacion;
    durationDays = duracionDias;
    registeredBy = registradoPor;
    brand = marca;
    lot = lote;
    endDate = fechaFin;
    result = resultado;
    previousDiagnosis = diagnosticoPrevio;
    finalDiagnosis = diagnosticoFinal;
    medicineCost = costoMedicina;
    veterinaryCost = costoVeterinario;
    totalCost = costoTotal;
    observations = observaciones;
    sideEffects = efectosSecundarios;
    this.notes = notas;
    diagnosedBy = diagnosticadoPor;
    frequency = frecuencia ?? '';

    uuid = const Uuid().v4();
    registrationDate = DateTime.now();
    updateDate = null;
  }

  /// Copia con cambios opcionales
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
    double? costoMedicina,
    double? costoVeterinario,
    double? costoTotal,
    String? observaciones,
    String? efectosSecundarios,
    String? notas,
  }) {
    return TratamientoEntity(
      animalUuid: animalUuid,
      motivo: motivo ?? this.reason,
      medicamento: medicamento ?? this.medicine,
      fechaInicio: fechaInicio ?? this.startDate,
      dosis: dosis ?? this.dose,
      viaAplicacion: viaAplicacion ?? this.administrationRoute,
      duracionDias: duracionDias ?? this.durationDays,
      frecuencia: frecuencia ?? this.frequency,
      registradoPor: registeredBy,
      marca: marca ?? this.brand,
      lote: lote ?? this.lot,
      fechaFin: fechaFin ?? this.endDate,
      resultado: resultado ?? this.result,
      diagnosticoPrevio: diagnosticoPrevio ?? this.previousDiagnosis,
      diagnosticoFinal: diagnosticoFinal ?? this.finalDiagnosis,
      costoMedicina: costoMedicina ?? this.medicineCost,
      costoVeterinario: costoVeterinario ?? this.veterinaryCost,
      costoTotal: costoTotal ?? this.totalCost,
      observaciones: observaciones ?? this.observations,
      efectosSecundarios: efectosSecundarios ?? this.sideEffects,
      notas: notas ?? this.notes,
      diagnosticadoPor: diagnosedBy,
    )
      ..id = id
      ..uuid = uuid
      ..registrationDate = registrationDate
      ..updateDate = DateTime.now();
  }

  /// ============ SPANISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias para compatibilidad con UI en español: fechaInicio
  DateTime get fechaInicio => startDate;

  /// Alias para compatibilidad con UI en español: fechaFin
  DateTime? get fechaFin => endDate;

  /// Alias para compatibilidad con UI en español: motivo
  String get motivo => reason;

  /// Alias para compatibilidad con UI en español: medicamento
  String get medicamento => medicine;

  /// Alias para compatibilidad con UI en español: marca
  String? get marca => brand;

  /// Alias para compatibilidad con UI en español: lote
  String? get lote => lot;

  /// Alias para compatibilidad con UI en español: dosis
  String get dosis => dose;

  /// Alias para compatibilidad con UI en español: viaAplicacion
  String get viaAplicacion => administrationRoute;

  /// Alias para compatibilidad con UI en español: duracionDias
  int get duracionDias => durationDays;

  /// Alias para compatibilidad con UI en español: frecuencia
  String? get frecuencia => frequency;

  /// Alias para compatibilidad con UI en español: resultado
  String? get resultado => result;

  /// Alias para compatibilidad con UI en español: diagnosticoPrevio
  String? get diagnosticoPrevio => previousDiagnosis;

  /// Alias para compatibilidad con UI en español: diagnosticoFinal
  String? get diagnosticoFinal => finalDiagnosis;

  /// Alias para compatibilidad con UI en español: costoMedicina
  double? get costoMedicina => medicineCost;

  /// Alias para compatibilidad con UI en español: costoVeterinario
  double? get costoVeterinario => veterinaryCost;

  /// Alias para compatibilidad con UI en español: costoTotal
  double? get costoTotal => totalCost;

  /// Alias para compatibilidad con UI en español: observaciones
  String? get observaciones => observations;

  /// Alias para compatibilidad con UI en español: efectosSecundarios
  String? get efectosSecundarios => sideEffects;

  /// Alias para compatibilidad con UI en español: notas
  String? get notas => notes;

  /// Alias para compatibilidad con UI en español: diagnosticadoPor
  String? get diagnosticadoPor => diagnosedBy;

  /// Alias para compatibilidad con UI en español: fechaRegistro
  DateTime get fechaRegistro => registrationDate;

  /// Alias para compatibilidad con UI en español: fechaActualizacion
  DateTime? get fechaActualizacion => updateDate;

  /// Alias para compatibilidad con UI en español: registradoPor
  String get registradoPor => registeredBy;
}
