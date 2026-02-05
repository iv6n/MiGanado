import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

part 'animal_entity.g.dart';

/// Animal entity for Isar
@collection
class AnimalEntity {
  /// Identificador único (UUID) - Clave primaria
  Id id = Isar.autoIncrement;

  /// UUID for animal sync
  @Index(unique: true)
  late String uuid;

  /// Ear tag number
  @Index()
  late String earTagNumber;

  /// Custom animal name
  String? customName;

  /// Animal species
  @enumerated
  late Species species;

  /// Adult category (does not change by age or sex)
  /// Represents WHAT TYPE of animal it is (cow, horse, donkey, mule)
  @enumerated
  late Category category;

  /// Life stage (automatically calculated based on age, sex, and castration)
  /// Represents the DEVELOPMENT PHASE of the animal
  @enumerated
  late LifeStage lifeStage;

  /// Sex
  @enumerated
  late Sex sex;

  /// Age in months
  late int ageMonths;

  /// Is castrated (only applies to male cattle)
  bool isCastrated = false;

  /// Breed
  late String breed;

  /// Birth date
  late DateTime birthDate;

  /// General notes
  String? notes;

  /// Purchase price
  double? purchasePrice;

  /// Sale price
  double? salePrice;

  /// Vaccinated
  bool vaccinated = false;

  /// Last vaccination date
  DateTime? lastVaccinationDate;

  /// Vaccine type
  String? vaccineType;

  /// Dewormed
  bool dewormed = false;

  /// Last deworming date
  DateTime? lastDewormingDate;

  /// Dewormer type
  String? dewormerType;

  /// Has vitamins
  bool hasVitamins = false;

  /// Last vitamin application date
  DateTime? lastVitaminDate;

  /// Reproductive status
  @enumerated
  ReproductiveStatus reproductiveStatus = ReproductiveStatus.undefined;

  /// Current location
  String? location;

  /// Custom observations
  String? observations;

  /// Under observation (marks if the animal is being observed for any reason)
  bool underObservation = false;

  /// Current weight (kg)
  double? currentWeight;

  /// Last weighing date
  DateTime? lastWeighingDate;

  /// Creation date
  late DateTime creationDate;

  /// Last update date
  late DateTime lastUpdateDate;

  /// Synced with server
  bool synced = false;

  /// Remote ID (for sync)
  String? remoteId;

  /// Audit fields for sync
  DateTime? syncDate;
  String? contentHash;

  AnimalEntity({
    required this.earTagNumber,
    this.customName,
    required this.species,
    required this.category,
    required this.sex,
    required this.breed,
    required this.birthDate,
    required this.ageMonths,
    this.isCastrated = false,
    this.notes,
    this.purchasePrice,
    this.salePrice,
    this.vaccinated = false,
    this.lastVaccinationDate,
    this.vaccineType,
    this.dewormed = false,
    this.lastDewormingDate,
    this.dewormerType,
    this.hasVitamins = false,
    this.lastVitaminDate,
    this.reproductiveStatus = ReproductiveStatus.undefined,
    this.location,
  }) {
    uuid = const Uuid().v4();
    creationDate = DateTime.now();
    lastUpdateDate = DateTime.now();

    // Validar compatibilidad especie-categoría
    _validateSpeciesCategory(species, category);

    // SIEMPRE calcular etapa automáticamente basada en los parámetros
    lifeStage = calculateLifeStage();
  }

  /// Validar que la categoría sea compatible con la especie
  void _validateSpeciesCategory(Species species, Category category) {
    if (species == Species.cattle &&
        ![Category.cow, Category.bull].contains(category)) {
      throw ArgumentError(
          'Para especie Bovino, la categoría debe ser "cow" o "bull". '
          'Recibido: $category');
    }

    if (species == Species.equine &&
        [Category.cow, Category.bull].contains(category)) {
      throw ArgumentError(
          'Para especie Equino, la categoría debe ser horse, mare, donkey, jenny o mule. '
          'No puede ser "cow" ni "bull"');
    }
  }

  /// Calculate life stage automatically
  ///
  /// BUSINESS RULES:
  ///
  /// CATTLE:
  /// - < 12 months: Calf (male/female)
  /// - 12-24 months:
  ///   * Female: Heifer
  ///   * Male not castrated: Young bull
  ///   * Male castrated: Steer
  /// - >= 24 months: Cow (female) / Bull (male)
  ///
  /// EQUINE:
  /// - Horse:
  ///   * < 36 months: Colt (male) / Filly (female)
  ///   * >= 36 months: Horse (male) / Mare (female)
  /// - Donkey:
  ///   * Donkey (male) / Jenny (female)
  /// - Mule: Mule (always female)
  LifeStage calculateLifeStage() {
    if (species == Species.cattle) {
      // Cattle: logic by age, sex and castration
      if (ageMonths < 12) {
        return sex == Sex.male ? LifeStage.calfMale : LifeStage.calfFemale;
      } else if (ageMonths < 24) {
        if (sex == Sex.female) {
          return LifeStage.heifer;
        }
        // Males between 12-24 months
        if (isCastrated) {
          return LifeStage.steer;
        } else {
          return LifeStage.youngBull;
        }
      } else {
        // >= 24 months
        return sex == Sex.female ? LifeStage.cow : LifeStage.bull;
      }
    } else if (species == Species.equine) {
      // Equine: logic by category, age and sex
      switch (category) {
        case Category.horse:
          if (ageMonths < 36) {
            return sex == Sex.male ? LifeStage.colt : LifeStage.filly;
          } else {
            return sex == Sex.male ? LifeStage.horse : LifeStage.mare;
          }
        case Category.mare:
          // Mare is always female, show stage by age
          if (ageMonths < 36) {
            return LifeStage.filly;
          } else {
            return LifeStage.mare;
          }
        case Category.donkey:
          return LifeStage.donkey; // Donkey male
        case Category.jenny:
          return LifeStage.donkeyFemale; // Female donkey
        case Category.mule:
          return LifeStage.mule; // Mule always female
        default:
          throw StateError('Invalid category for equine: $category');
      }
    }

    // Fallback: should not reach here if validations work
    throw StateError('Unrecognized species: $species');
  }

  /// Validate that animal data is consistent
  /// Useful before saving or updating
  bool validateConsistency() {
    // Validate species-category
    if (species == Species.cattle &&
        ![Category.cow, Category.bull].contains(category)) {
      return false;
    }
    if (species == Species.equine &&
        [Category.cow, Category.bull].contains(category)) {
      return false;
    }

    // Validate castration (only male cattle)
    if (isCastrated && (sex != Sex.male || species != Species.cattle)) {
      return false;
    }

    // Validate age not negative
    if (ageMonths < 0) {
      return false;
    }

    // Validate birth date not in future
    if (birthDate.isAfter(DateTime.now())) {
      return false;
    }

    return true;
  }

  /// Recalculate age in months based on birth date
  /// Useful for periodic updates
  int recalculateAgeMonths() {
    final now = DateTime.now();
    int months = (now.year - birthDate.year) * 12;
    months += now.month - birthDate.month;

    // Adjust if day hasn't arrived yet
    if (now.day < birthDate.day) {
      months--;
    }

    return months.clamp(0, 9999);
  }

  /// Update age and recalculate stage
  /// Returns true if stage changed
  bool updateAgeAndLifeStage() {
    final previousAge = ageMonths;
    final previousStage = lifeStage;

    ageMonths = recalculateAgeMonths();
    lifeStage = calculateLifeStage();
    lastUpdateDate = DateTime.now();

    return previousStage != lifeStage || previousAge != ageMonths;
  }

  /// Create a copy of the animal
  AnimalEntity copyWith({
    String? uuid,
    String? earTagNumber,
    Species? species,
    Category? category,
    Sex? sex,
    String? breed,
    DateTime? birthDate,
    int? ageMonths,
    bool? isCastrated,
    String? customName,
    String? notes,
    double? purchasePrice,
    double? salePrice,
    bool? vaccinated,
    DateTime? lastVaccinationDate,
    String? vaccineType,
    bool? dewormed,
    DateTime? lastDewormingDate,
    String? dewormerType,
    bool? hasVitamins,
    DateTime? lastVitaminDate,
    ReproductiveStatus? reproductiveStatus,
    String? location,
    bool? synced,
    String? remoteId,
  }) {
    final newSpecies = species ?? this.species;
    final newCategory = category ?? this.category;
    final newSex = sex ?? this.sex;
    final newAgeMonths = ageMonths ?? this.ageMonths;
    final newCastrated = isCastrated ?? this.isCastrated;

    // Create new entity with updated parameters
    // Stage is recalculated automatically in constructor
    return AnimalEntity(
      earTagNumber: earTagNumber ?? this.earTagNumber,
      customName: customName ?? this.customName,
      species: newSpecies,
      category: newCategory,
      sex: newSex,
      breed: breed ?? this.breed,
      birthDate: birthDate ?? this.birthDate,
      ageMonths: newAgeMonths,
      isCastrated: newCastrated,
      notes: notes ?? this.notes,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      salePrice: salePrice ?? this.salePrice,
      vaccinated: vaccinated ?? this.vaccinated,
      lastVaccinationDate: lastVaccinationDate ?? this.lastVaccinationDate,
      vaccineType: vaccineType ?? this.vaccineType,
      dewormed: dewormed ?? this.dewormed,
      lastDewormingDate: lastDewormingDate ?? this.lastDewormingDate,
      dewormerType: dewormerType ?? this.dewormerType,
      hasVitamins: hasVitamins ?? this.hasVitamins,
      lastVitaminDate: lastVitaminDate ?? this.lastVitaminDate,
      reproductiveStatus: reproductiveStatus ?? this.reproductiveStatus,
      location: location ?? this.location,
    )
      ..id = id
      ..uuid = uuid ?? this.uuid
      ..creationDate = creationDate
      ..lastUpdateDate = DateTime.now()
      ..synced = synced ?? this.synced
      ..remoteId = remoteId ?? this.remoteId
      ..syncDate = syncDate
      ..contentHash = contentHash
      ..observations = observations;
  }
}
