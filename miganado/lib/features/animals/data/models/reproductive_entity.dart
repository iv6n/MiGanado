import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'reproductive_entity.g.dart';

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

/// Breeding data
class BreedingData {
  final DateTime date;
  final String stallionUuid;
  final String? method; // "Natural", "Insemination"
  final String? result; // "Positive", "Negative"
  final String? observations;

  BreedingData({
    required this.date,
    required this.stallionUuid,
    this.method,
    this.result,
    this.observations,
  });
}

/// Birth data
class BirthData {
  final DateTime date;
  final int? numberOfOffspring;
  final String? birthType; // "Single", "Twin", "Triple"
  final List<String>? offspringGender; // ["M", "F"] - Male, Female
  final String? result; // "Successful", "Complicated", "With loss"
  final String? complications;
  final String? observations;

  BirthData({
    required this.date,
    this.numberOfOffspring,
    this.birthType,
    this.offspringGender,
    this.result,
    this.complications,
    this.observations,
  });
}
