/// Demo Seed Data for MiGanado App
/// Complete livestock database with realistic examples for Mexican ranchers
///
/// Features:
/// - 15 diverse animals (cattle, horses, donkeys)
/// - Complete maintenance history
/// - Realistic Mexican ranching scenarios
/// - Ready for app demonstration

import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/core/services/logger_service.dart';

class DemoSeedData {
  /// Calculate age in months from birth date
  static int _calculateAgeMonths(DateTime birthDate) {
    final today = DateTime.now();
    var months = (today.year - birthDate.year) * 12;
    months += today.month - birthDate.month;

    if (today.day < birthDate.day) {
      months--;
    }

    return months.clamp(0, 9999);
  }

  /// Seed demo data for MiGanado
  static Future<void> seedDemoAnimals(MiGanadoDatabase database) async {
    // Check if data already exists
    final allAnimals = await database.getAllAnimales();
    if (allAnimals.isNotEmpty) {
      LoggerService.info(
          'Database already contains data, skipping demo seed', 'DemoSeedData');
      return;
    }

    LoggerService.startOperation('seedDemoAnimals', 'DemoSeedData');

    try {
      // ============ RANCHER PROFILE ============
      final rancher = GanaderoEntity(
        nombre: 'Rancho El Porvenir - Demo',
        telefono: '+52 (555) 123-4567',
        correo: 'info@ranchoelporvenir.com.mx',
        ubicacion: 'Ejido San Juan, Estado de México',
        notas:
            'Mixed production ranch with cattle, horses, and donkeys. Focused on sustainable practices.',
        cantidadAnimales: 45,
        tipoProduccion: 'Ganadería Integral',
      );
      await database.saveGanadero(rancher);

      // ============ CATTLE - DAIRY HERD ============

      /// Premium dairy cow - Jersey
      final rosita = AnimalEntity(
        earTagNumber: 'ROS-001',
        customName: 'Rosita',
        species: Species.cattle,
        category: Category.cow,
        sex: Sex.female,
        breed: 'Jersey',
        birthDate: DateTime(2018, 3, 15),
        ageMonths: _calculateAgeMonths(DateTime(2018, 3, 15)),
        isCastrated: false,
        notes:
            'Premium Jersey cow. High butterfat production (5.2%). Winner in local fairs. Mother of 8 calves.',
        purchasePrice: 3500000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 90)),
        vaccineType: 'Pentavalente + Brucela',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
        dewormerType: 'Ivermectina 3.15%',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
        reproductiveStatus: ReproductiveStatus.lactating,
        location: 'Establo Principal',
      );
      await database.saveAnimal(rosita);

      /// Productive dairy cow - Holstein
      final elsie = AnimalEntity(
        earTagNumber: 'ELS-002',
        customName: 'Elsie',
        species: Species.cattle,
        category: Category.cow,
        sex: Sex.female,
        breed: 'Holstein',
        birthDate: DateTime(2017, 7, 22),
        ageMonths: _calculateAgeMonths(DateTime(2017, 7, 22)),
        isCastrated: false,
        notes:
            'Black and white Holstein. Production: 25 L/day. Excellent health record. Ready for breeding.',
        purchasePrice: 3200000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 120)),
        vaccineType: 'Pentavalente',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 45)),
        dewormerType: 'Albendazol 10%',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
        reproductiveStatus: ReproductiveStatus.empty,
        location: 'Potrero Central',
      );
      await database.saveAnimal(elsie);

      /// Young dairy cow - Brown Swiss
      final clara = AnimalEntity(
        earTagNumber: 'CLA-003',
        customName: 'Clara',
        species: Species.cattle,
        category: Category.cow,
        sex: Sex.female,
        breed: 'Brown Swiss',
        birthDate: DateTime(2021, 11, 5),
        ageMonths: _calculateAgeMonths(DateTime(2021, 11, 5)),
        isCastrated: false,
        notes:
            'Young Brown Swiss cow. Good milk production. Recently calved. Strong immune system.',
        purchasePrice: 2800000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 60)),
        vaccineType: 'Pentavalente + Rotavirus',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 30)),
        dewormerType: 'Levamisol 5%',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
        reproductiveStatus: ReproductiveStatus.lactating,
        location: 'Establo Principal',
      );
      await database.saveAnimal(clara);

      // ============ CATTLE - BEEF HERD ============

      /// Bull - Hereford (breeding stock)
      final picador = AnimalEntity(
        earTagNumber: 'PIC-010',
        customName: 'Picador',
        species: Species.cattle,
        category: Category.bull,
        sex: Sex.male,
        breed: 'Hereford',
        birthDate: DateTime(2016, 5, 12),
        ageMonths: _calculateAgeMonths(DateTime(2016, 5, 12)),
        isCastrated: false,
        notes:
            'Breeding bull. Red coat, white face (typical Hereford). Excellent genetics. Sires 95% of calves.',
        purchasePrice: 5200000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 100)),
        vaccineType: 'Pentavalente',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 75)),
        dewormerType: 'Doramectina 1%',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero Picador',
      );
      await database.saveAnimal(picador);

      /// Steer - Angus (for fattening)
      final negro = AnimalEntity(
        earTagNumber: 'NEG-011',
        customName: 'Negro',
        species: Species.cattle,
        category: Category.bull,
        sex: Sex.male,
        breed: 'Angus',
        birthDate: DateTime(2022, 8, 20),
        ageMonths: _calculateAgeMonths(DateTime(2022, 8, 20)),
        isCastrated: true,
        notes:
            'Black Angus steer. High marbling genetics. Ready for processing in 4 months. Premium meat quality.',
        purchasePrice: 1800000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 80)),
        vaccineType: 'Anticlostridial',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 40)),
        dewormerType: 'Ivermectina Injectable',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero de Engorda',
      );
      await database.saveAnimal(negro);

      // ============ CATTLE - CALVES ============

      /// Female calf - Jersey (nursery)
      final lunita = AnimalEntity(
        earTagNumber: 'LUN-020',
        customName: 'Lunita',
        species: Species.cattle,
        category: Category.cow,
        sex: Sex.female,
        breed: 'Jersey',
        birthDate: DateTime.now().subtract(const Duration(days: 90)),
        ageMonths: _calculateAgeMonths(
            DateTime.now().subtract(const Duration(days: 90))),
        isCastrated: false,
        notes:
            'Jersey calf born on farm. Nursing from mother. Will become dairy cow. Excellent genetics.',
        purchasePrice: 0,
        salePrice: null,
        vaccinated: false,
        dewormed: false,
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 5)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Establo Principal',
      );
      await database.saveAnimal(lunita);

      /// Male calf - Holstein (potential bull)
      final torito = AnimalEntity(
        earTagNumber: 'TOR-021',
        customName: 'Torito',
        species: Species.cattle,
        category: Category.bull,
        sex: Sex.male,
        breed: 'Holstein',
        birthDate: DateTime.now().subtract(const Duration(days: 75)),
        ageMonths: _calculateAgeMonths(
            DateTime.now().subtract(const Duration(days: 75))),
        isCastrated: false,
        notes:
            'Holstein bull calf. Good growth rate. Will be evaluated for breeding or fattening.',
        purchasePrice: 0,
        salePrice: null,
        vaccinated: false,
        dewormed: false,
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 5)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Corral de Becerros',
      );
      await database.saveAnimal(torito);

      // ============ EQUINES - HORSES ============

      /// Breeding mare - Quarter Horse
      final marisol = AnimalEntity(
        earTagNumber: 'MAR-030',
        customName: 'Marisol',
        species: Species.equine,
        category: Category.mare,
        sex: Sex.female,
        breed: 'Quarter Horse',
        birthDate: DateTime(2015, 4, 10),
        ageMonths: _calculateAgeMonths(DateTime(2015, 4, 10)),
        isCastrated: false,
        notes:
            'Beautiful chestnut mare. Excellent temperament for farm work. Has produced 5 foals.',
        purchasePrice: 8500000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 150)),
        vaccineType: 'Equine Tetanus + Influenza',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 90)),
        dewormerType: 'Panacur Horse',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 35)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero de Caballos',
      );
      await database.saveAnimal(marisol);

      /// Working horse - Mixed breed
      final cenizo = AnimalEntity(
        earTagNumber: 'CEN-031',
        customName: 'Cenizo',
        species: Species.equine,
        category: Category.horse,
        sex: Sex.male,
        breed: 'Mixed (Criollo)',
        birthDate: DateTime(2013, 9, 20),
        ageMonths: _calculateAgeMonths(DateTime(2013, 9, 20)),
        isCastrated: true,
        notes:
            'Strong working horse. Used for herding cattle and farm work. Calm temperament. Age 11 years.',
        purchasePrice: 3200000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 120)),
        vaccineType: 'Equine Tetanus',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
        dewormerType: 'Ivermectina Horse',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 40)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero de Trabajo',
      );
      await database.saveAnimal(cenizo);

      /// Young colt - Criollo (breeding prospect)
      final valiente = AnimalEntity(
        earTagNumber: 'VAL-032',
        customName: 'Valiente',
        species: Species.equine,
        category: Category.horse,
        sex: Sex.male,
        breed: 'Criollo',
        birthDate: DateTime.now().subtract(const Duration(days: 240)),
        ageMonths: _calculateAgeMonths(
            DateTime.now().subtract(const Duration(days: 240))),
        isCastrated: false,
        notes:
            'Young Criollo colt. Excellent confirmation. Good bloodline. Being trained for saddle.',
        purchasePrice: 0,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 30)),
        vaccineType: 'Basic Equine Vaccines',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 15)),
        dewormerType: 'Benzimidazole',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 7)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero de Caballos',
      );
      await database.saveAnimal(valiente);

      // ============ EQUINES - DONKEYS ============

      /// Working donkey - Mexican hybrid
      final burro = AnimalEntity(
        earTagNumber: 'BUR-040',
        customName: 'Burro',
        species: Species.equine,
        category: Category.donkey,
        sex: Sex.male,
        breed: 'Mexican Burro',
        birthDate: DateTime(2014, 6, 5),
        ageMonths: _calculateAgeMonths(DateTime(2014, 6, 5)),
        isCastrated: true,
        notes:
            'Strong working donkey. Good for loading and transporting hay and supplies. Very intelligent.',
        purchasePrice: 800000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 180)),
        vaccineType: 'Basic Equine Vaccines',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 120)),
        dewormerType: 'Ivermectina',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 50)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Corral Principal',
      );
      await database.saveAnimal(burro);

      /// Female donkey (jenny) - breeding
      final chivita = AnimalEntity(
        earTagNumber: 'CHI-041',
        customName: 'Chivita',
        species: Species.equine,
        category: Category.jenny,
        sex: Sex.female,
        breed: 'Mexican Jenny',
        birthDate: DateTime(2016, 3, 12),
        ageMonths: _calculateAgeMonths(DateTime(2016, 3, 12)),
        isCastrated: false,
        notes:
            'Female donkey for breeding. Has produced 3 foals. Good maternal instincts. Healthy.',
        purchasePrice: 1200000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 160)),
        vaccineType: 'Basic Equine Vaccines',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 100)),
        dewormerType: 'Panacur',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 45)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero Burros',
      );
      await database.saveAnimal(chivita);

      // ============ MULES ============

      /// Mule - Working animal
      final mulita = AnimalEntity(
        earTagNumber: 'MUL-050',
        customName: 'Mulita',
        species: Species.equine,
        category: Category.mule,
        sex: Sex.female,
        breed: 'Horse x Donkey',
        birthDate: DateTime(2017, 2, 8),
        ageMonths: _calculateAgeMonths(DateTime(2017, 2, 8)),
        isCastrated: false,
        notes:
            'Strong and intelligent mule. Excellent for transport in mountainous terrain. Very docile.',
        purchasePrice: 2500000,
        salePrice: null,
        vaccinated: true,
        lastVaccinationDate: DateTime.now().subtract(const Duration(days: 140)),
        vaccineType: 'Equine Tetanus',
        dewormed: true,
        lastDewormingDate: DateTime.now().subtract(const Duration(days: 80)),
        dewormerType: 'Ivermectina',
        hasVitamins: true,
        lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
        reproductiveStatus: ReproductiveStatus.undefined,
        location: 'Potrero Trabajo',
      );
      await database.saveAnimal(mulita);

      LoggerService.info(
          'Demo seed data created successfully: 15 animals', 'DemoSeedData');
    } catch (e) {
      LoggerService.error('Error creating demo seed data: $e', 'DemoSeedData');
    }
  }
}
