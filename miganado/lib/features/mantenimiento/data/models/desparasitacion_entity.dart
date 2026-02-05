import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'desparasitacion_entity.g.dart';

/// Entidad de Desparasitación para Isar
@collection
class DesparasitacionEntity {
  /// Identificador único
  Id? id;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Tipo de desparasitación ("Internal", "External", "Mixed")
  late String type;

  /// Producto comercial
  late String product;

  /// Marca comercial
  late String? brand;

  /// Número de lote
  late String? lot;

  /// Fecha de aplicación
  late DateTime date;

  /// Dosis aplicada
  late String dose;

  /// Vía de aplicación (Oral, IM, SQ, Topical, etc)
  late String administrationRoute;

  /// Aplicado por (nombre del veterinario/técnico)
  late String? appliedBy;

  /// Siguiente fecha programada
  late DateTime? nextApplication;

  /// Intervalo en días entre aplicaciones
  late int intervalDays;

  /// Costo
  double? cost;

  /// Observaciones
  String? observations;

  /// Efectos observados
  String? observedEffects;

  /// Fecha de registro
  late DateTime registrationDate;

  /// Fecha de última actualización
  late DateTime? updateDate;

  /// Registrado por
  late String registeredBy;

  /// Constructor con parámetros en español
  DesparasitacionEntity({
    required this.animalUuid,
    required String tipo,
    required String producto,
    required DateTime fecha,
    required String dosis,
    required String viaAplicacion,
    required int diasIntervalo,
    required String registradoPor,
    String? marca,
    String? lote,
    String? aplicadoPor,
    DateTime? proximaAplicacion,
    double? costo,
    String? observaciones,
    String? efectosObservados,
  }) {
    type = tipo;
    product = producto;
    date = fecha;
    dose = dosis;
    administrationRoute = viaAplicacion;
    intervalDays = diasIntervalo;
    registeredBy = registradoPor;
    brand = marca;
    lot = lote;
    appliedBy = aplicadoPor;
    nextApplication = proximaAplicacion;
    cost = costo;
    observations = observaciones;
    observedEffects = efectosObservados;

    uuid = const Uuid().v4();
    registrationDate = DateTime.now();
    updateDate = null;
  }

  /// Copia con cambios opcionales
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
      tipo: tipo ?? this.type,
      producto: producto ?? this.product,
      fecha: fecha ?? this.date,
      dosis: dosis ?? this.dose,
      viaAplicacion: viaAplicacion ?? this.administrationRoute,
      diasIntervalo: diasIntervalo ?? this.intervalDays,
      registradoPor: registeredBy,
      marca: marca ?? this.brand,
      lote: lote ?? this.lot,
      aplicadoPor: aplicadoPor ?? this.appliedBy,
      proximaAplicacion: proximaAplicacion ?? this.nextApplication,
      costo: costo ?? this.cost,
      observaciones: observaciones ?? this.observations,
      efectosObservados: efectosObservados ?? this.observedEffects,
    )
      ..id = id
      ..uuid = uuid
      ..registrationDate = registrationDate
      ..updateDate = DateTime.now();
  }

  /// ============ SPANISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias para compatibilidad con UI en español: fecha
  DateTime get fecha => date;

  /// Alias para compatibilidad con UI en español: tipo
  String get tipo => type;

  /// Alias para compatibilidad con UI en español: producto
  String get producto => product;

  /// Alias para compatibilidad con UI en español: marca
  String? get marca => brand;

  /// Alias para compatibilidad con UI en español: lote
  String? get lote => lot;

  /// Alias para compatibilidad con UI en español: dosis
  String get dosis => dose;

  /// Alias para compatibilidad con UI en español: viaAplicacion
  String get viaAplicacion => administrationRoute;

  /// Alias para compatibilidad con UI en español: aplicadoPor
  String? get aplicadoPor => appliedBy;

  /// Alias para compatibilidad con UI en español: proximaAplicacion
  DateTime? get proximaAplicacion => nextApplication;

  /// Alias para compatibilidad con UI en español: diasIntervalo
  int get diasIntervalo => intervalDays;

  /// Alias para compatibilidad con UI en español: costo
  double? get costo => cost;

  /// Alias para compatibilidad con UI en español: observaciones
  String? get observaciones => observations;

  /// Alias para compatibilidad con UI en español: reaccionesAdversas
  String? get reaccionesAdversas => observedEffects;

  /// Alias para compatibilidad con UI en español: efectosObservados
  String? get efectosObservados => observedEffects;

  /// Alias para compatibilidad con UI en español: fechaRegistro
  DateTime get fechaRegistro => registrationDate;

  /// Alias para compatibilidad con UI en español: fechaActualizacion
  DateTime? get fechaActualizacion => updateDate;

  /// Alias para compatibilidad con UI en español: registradoPor
  String get registradoPor => registeredBy;
}
