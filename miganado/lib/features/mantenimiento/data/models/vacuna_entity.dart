import 'package:isar/isar.dart';

part 'vacuna_entity.g.dart';

/// Entidad de Vacuna para Isar
@collection
class VacunaEntity {
  /// Identificador único
  Id? id;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Nombre/Tipo de la vacuna (ej: "Triple viral", "Pentavalente")
  late String type;

  /// Enfermedad contra la que protege (ej: "Fiebre aftosa", "Brucelosis")
  late String disease;

  /// Producto comercial (ej: "AFTOVAX")
  late String? product;

  /// Número de lote
  late String? lot;

  /// Fecha de aplicación
  late DateTime date;

  /// Dosis aplicada
  late String? dose;

  /// Vía de aplicación (IM, IV, SQ, etc)
  late String? administrationRoute;

  /// Aplicado por (nombre del veterinario/técnico)
  late String? appliedBy;

  /// Siguiente fecha programada
  late DateTime? nextDate;

  /// Intervalo en días entre dosis
  late int intervalDays;

  /// Costo de la vacuna
  double? cost;

  /// Observaciones generales
  String? observations;

  /// Reacciones adversas observadas
  String? adverseReactions;

  /// Fecha de registro
  late DateTime registrationDate;

  /// Fecha de última actualización
  late DateTime? updateDate;

  /// Constructor vacío para Isar
  VacunaEntity();

  /// Constructor con parámetros en español
  VacunaEntity.crear({
    required String animalUuid,
    required String tipo,
    required String enfermedad,
    required DateTime fecha,
    int diasIntervalo = 0,
    String? aplicadoPor,
    String? registradoPor,
    String? producto,
    String? lote,
    String? dosis,
    String? viaAplicacion,
    DateTime? proximaFecha,
    double? costo,
    String? observaciones,
    String? reaccionesAdversas,
  }) {
    this.animalUuid = animalUuid;
    type = tipo;
    disease = enfermedad;
    date = fecha;
    intervalDays = diasIntervalo;
    appliedBy = aplicadoPor;
    product = producto;
    lot = lote;
    dose = dosis;
    administrationRoute = viaAplicacion;
    nextDate = proximaFecha;
    cost = costo;
    observations = observaciones;
    adverseReactions = reaccionesAdversas;

    uuid = '';
    registrationDate = DateTime.now();
    updateDate = null;
  }

  /// Representación en string
  @override
  String toString() {
    return 'VacunaEntity{'
        'uuid: $uuid,'
        'animalUuid: $animalUuid,'
        'type: $type,'
        'disease: $disease,'
        'date: $date'
        '}';
  }

  /// ============ SPANISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias para compatibilidad con UI en español: fecha
  DateTime get fecha => date;

  /// Alias para compatibilidad con UI en español: tipo
  String get tipo => type;

  /// Alias para compatibilidad con UI en español: enfermedad
  String get enfermedad => disease;

  /// Alias para compatibilidad con UI en español: producto
  String? get producto => product;

  /// Alias para compatibilidad con UI en español: lote
  String? get lote => lot;

  /// Alias para compatibilidad con UI en español: dosis
  String? get dosis => dose;

  /// Alias para compatibilidad con UI en español: viaAplicacion
  String? get viaAplicacion => administrationRoute;

  /// Alias para compatibilidad con UI en español: aplicadoPor
  String? get aplicadoPor => appliedBy;

  /// Alias para compatibilidad con UI en español: proximaFecha
  DateTime? get proximaFecha => nextDate;

  /// Alias para compatibilidad con UI en español: diasIntervalo
  int get diasIntervalo => intervalDays;

  /// Alias para compatibilidad con UI en español: costo
  double? get costo => cost;

  /// Alias para compatibilidad con UI en español: observaciones
  String? get observaciones => observations;

  /// Alias para compatibilidad con UI en español: reaccionesAdversas
  String? get reaccionesAdversas => adverseReactions;

  /// Alias para compatibilidad con UI en español: fechaRegistro
  DateTime get fechaRegistro => registrationDate;

  /// Alias para compatibilidad con UI en español: fechaActualizacion
  DateTime? get fechaActualizacion => updateDate;
}
