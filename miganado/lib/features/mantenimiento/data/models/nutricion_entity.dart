import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'nutricion_entity.g.dart';

@collection
class NutricionEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Tipo de alimentación
  late String tipoAlimentacion; // "Pastoreo", "Confinado", "Mixto"
  late String? alimentoPrincipal; // ej: "Pasto", "Heno", "Concentrado"

  // Período
  late DateTime fechaInicio;
  late DateTime? fechaFin;
  late bool activo; // Si está vigente

  // Suplementos
  late List<String>
      suplementos; // Lista de suplementos (ej: ["Sal mineralizada", "Probióticos"])
  String? cantidadDiaria; // ej: "500g/día"

  // Observaciones
  String? observaciones;
  String?
      cambiosObservados; // Cambios en el animal (ganancia de peso, estado general)

  // Costo
  double? costoPorDia;
  double? costoTotal;

  // Auditoría
  late DateTime fechaRegistro;
  late DateTime? fechaActualizacion;
  late String registradoPor;

  NutricionEntity({
    required this.animalUuid,
    required this.tipoAlimentacion,
    required this.fechaInicio,
    required this.registradoPor,
    this.alimentoPrincipal,
    this.fechaFin,
    this.suplementos = const [],
    this.cantidadDiaria,
    this.observaciones,
    this.cambiosObservados,
    this.costoPorDia,
    this.costoTotal,
  }) {
    uuid = const Uuid().v4();
    fechaRegistro = DateTime.now();
    activo = fechaFin == null;
  }

  NutricionEntity copyWith({
    String? tipoAlimentacion,
    String? alimentoPrincipal,
    DateTime? fechaInicio,
    DateTime? fechaFin,
    bool? activo,
    List<String>? suplementos,
    String? cantidadDiaria,
    String? observaciones,
    String? cambiosObservados,
    double? costoPorDia,
    double? costoTotal,
  }) {
    return NutricionEntity(
      animalUuid: animalUuid,
      tipoAlimentacion: tipoAlimentacion ?? this.tipoAlimentacion,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      registradoPor: registradoPor,
      alimentoPrincipal: alimentoPrincipal ?? this.alimentoPrincipal,
      fechaFin: fechaFin ?? this.fechaFin,
      suplementos: suplementos ?? this.suplementos,
      cantidadDiaria: cantidadDiaria ?? this.cantidadDiaria,
      observaciones: observaciones ?? this.observaciones,
      cambiosObservados: cambiosObservados ?? this.cambiosObservados,
      costoPorDia: costoPorDia ?? this.costoPorDia,
      costoTotal: costoTotal ?? this.costoTotal,
    )
      ..id = this.id
      ..uuid = uuid
      ..fechaRegistro = this.fechaRegistro
      ..fechaActualizacion = DateTime.now()
      ..activo = activo ?? this.activo;
  }
}
