import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'reproductivo_entity.g.dart';

@collection
class ReproductiveEntity {
  Id? id;

  @Index(unique: true)
  late String uuid;

  @Index()
  late String animalUuid;

  // Reproductive status
  late String status; // "virgin", "pregnant", "lactating", "empty", "blocked"
  DateTime? lastEstrusDate;

  // Matings / Services
  DateTime? currentMatingDate;
  DateTime? estimatedBirthDate;
  String? sireUuid; // UUID of the sire used
  String? matingObservations;

  // Reproductive history
  int totalBirths = 0;
  int totalOffspring = 0;
  DateTime? firstBirth;
  DateTime? lastBirth;

  // Notes
  String? observations;

  // Audit
  late DateTime registrationDate;
  late DateTime? lastUpdateDate;
  late String registeredBy;

  ReproductiveEntity({
    required this.animalUuid,
    required this.status,
    required this.registeredBy,
    this.lastEstrusDate,
    this.currentMatingDate,
    this.estimatedBirthDate,
    this.sireUuid,
    this.matingObservations,
    this.observations,
  }) {
    uuid = const Uuid().v4();
    registrationDate = DateTime.now();
    lastUpdateDate = DateTime.now();
  }

  ReproductiveEntity copyWith({
    String? status,
    DateTime? lastEstrusDate,
    DateTime? currentMatingDate,
    DateTime? estimatedBirthDate,
    String? sireUuid,
    String? matingObservations,
    String? observations,
  }) {
    return ReproductiveEntity(
      animalUuid: animalUuid,
      status: status ?? this.status,
      registeredBy: registeredBy,
      lastEstrusDate: lastEstrusDate ?? this.lastEstrusDate,
      currentMatingDate: currentMatingDate ?? this.currentMatingDate,
      estimatedBirthDate: estimatedBirthDate ?? this.estimatedBirthDate,
      sireUuid: sireUuid ?? this.sireUuid,
      matingObservations: matingObservations ?? this.matingObservations,
      observations: observations ?? this.observations,
    )
      ..id = id
      ..uuid = uuid
      ..registrationDate = this.registrationDate
      ..lastUpdateDate = DateTime.now()
      ..totalBirths = this.totalBirths
      ..totalOffspring = this.totalOffspring
      ..firstBirth = this.firstBirth
      ..lastBirth = this.lastBirth;
  }
}

/// Datos de empadre
class EmpadreData {
  final DateTime fecha;
  final String sementalUuid;
  final String? metodo; // "Natural", "Inseminación"
  final String? resultado; // "Positivo", "Negativo"
  final String? observaciones;

  EmpadreData({
    required this.fecha,
    required this.sementalUuid,
    this.metodo,
    this.resultado,
    this.observaciones,
  });
}

/// Datos de parto
class PartoData {
  final DateTime fecha;
  final int? numeroCrias;
  final String? tipoParto; // "Simple", "Gemelar", "Triple"
  final List<String>? sexoCrias; // ["M", "H"] - Macho, Hembra
  final String? resultado; // "Exitoso", "Complicado", "Con perdida"
  final String? complicaciones;
  final String? observaciones;

  PartoData({
    required this.fecha,
    this.numeroCrias,
    this.tipoParto,
    this.sexoCrias,
    this.resultado,
    this.complicaciones,
    this.observaciones,
  });
}
