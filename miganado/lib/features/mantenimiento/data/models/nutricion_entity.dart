import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'nutricion_entity.g.dart';

/// Entidad de Nutrición para Isar
@collection
class NutricionEntity {
  /// Identificador único
  Id? id;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// ID del animal (referencia)
  @Index()
  late String animalUuid;

  /// Tipo de alimentación ("Grazing", "Confined", "Mixed")
  late String feedingType;

  /// Alimento principal (ej: "Grass", "Hay", "Concentrated feed")
  late String? mainFeed;

  /// Fecha de inicio
  late DateTime startDate;

  /// Fecha de fin
  late DateTime? endDate;

  /// Si está activo
  late bool active;

  /// Suplementos (lista de suplementos ej: ["Mineralized salt", "Probiotics"])
  late List<String> supplements;

  /// Cantidad diaria (ej: "500g/día")
  String? dailyAmount;

  /// Observaciones
  String? observations;

  /// Cambios observados (Cambios en el animal como ganancia de peso, estado general)
  String? observedChanges;

  /// Costo por día
  double? costPerDay;

  /// Costo total
  double? totalCost;

  /// Fecha de registro
  late DateTime registrationDate;

  /// Fecha de última actualización
  late DateTime? updateDate;

  /// Registrado por
  late String registeredBy;

  /// Constructor con parámetros en español
  NutricionEntity({
    required this.animalUuid,
    required String tipoAlimentacion,
    required DateTime fechaInicio,
    required String registradoPor,
    String? alimentoPrincipal,
    DateTime? fechaFin,
    List<String> suplementos = const [],
    String? cantidadDiaria,
    String? observaciones,
    String? cambiosObservados,
    double? costoPorDia,
    double? costoTotal,
  }) {
    feedingType = tipoAlimentacion;
    startDate = fechaInicio;
    registeredBy = registradoPor;
    mainFeed = alimentoPrincipal;
    endDate = fechaFin;
    supplements = suplementos;
    dailyAmount = cantidadDiaria;
    observations = observaciones;
    observedChanges = cambiosObservados;
    costPerDay = costoPorDia;
    totalCost = costoTotal;

    uuid = const Uuid().v4();
    registrationDate = DateTime.now();
    updateDate = null;
    active = fechaFin == null;
  }

  /// Copia con cambios opcionales
  NutricionEntity copyWith({
    String? tipoAlimentacion,
    String? alimentoPrincipal,
    DateTime? fechaInicio,
    DateTime? fechaFin,
    bool? active,
    List<String>? suplementos,
    String? cantidadDiaria,
    String? observaciones,
    String? cambiosObservados,
    double? costoPorDia,
    double? costoTotal,
  }) {
    return NutricionEntity(
      animalUuid: animalUuid,
      tipoAlimentacion: tipoAlimentacion ?? this.feedingType,
      fechaInicio: fechaInicio ?? this.startDate,
      registradoPor: registeredBy,
      alimentoPrincipal: alimentoPrincipal ?? this.mainFeed,
      fechaFin: fechaFin ?? this.endDate,
      suplementos: suplementos ?? this.supplements,
      cantidadDiaria: cantidadDiaria ?? this.dailyAmount,
      observaciones: observaciones ?? this.observations,
      cambiosObservados: cambiosObservados ?? this.observedChanges,
      costoPorDia: costoPorDia ?? this.costPerDay,
      costoTotal: costoTotal ?? this.totalCost,
    )
      ..id = id
      ..uuid = uuid
      ..registrationDate = registrationDate
      ..updateDate = DateTime.now()
      ..active = active ?? this.active;
  }

  /// ============ SPANISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias para compatibilidad con UI en español: activo
  bool get activo => active;

  /// Alias para compatibilidad con UI en español: fechaInicio
  DateTime get fechaInicio => startDate;

  /// Alias para compatibilidad con UI en español: fechaFin
  DateTime? get fechaFin => endDate;

  /// Alias para compatibilidad con UI en español: tipoAlimentacion
  String get tipoAlimentacion => feedingType;

  /// Alias para compatibilidad con UI en español: alimentoPrincipal
  String? get alimentoPrincipal => mainFeed;

  /// Alias para compatibilidad con UI en español: suplementos
  List<String> get suplementos => supplements;

  /// Alias para compatibilidad con UI en español: cantidadDiaria
  String? get cantidadDiaria => dailyAmount;

  /// Alias para compatibilidad con UI en español: costoPorDia
  double? get costoPorDia => costPerDay;

  /// Alias para compatibilidad con UI en español: costoTotal
  double? get costoTotal => totalCost;

  /// Alias para compatibilidad con UI en español: cambiosObservados
  String? get cambiosObservados => observedChanges;

  /// Alias para compatibilidad con UI en español: fechaRegistro
  DateTime get fechaRegistro => registrationDate;

  /// Alias para compatibilidad con UI en español: fechaActualizacion
  DateTime? get fechaActualizacion => updateDate;

  /// Alias para compatibilidad con UI en español: registradoPor
  String get registradoPor => registeredBy;
}
