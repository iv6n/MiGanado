import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Fresh comprehensive seed with 20+ animals
/// Focus: Majority bovine with diverse breeds and life stages
/// Includes: Calves, heifers, young bulls, steers, cows, bulls
/// Plus: 2-3 equine animals for variety
class SeedDatabaseFresh {
  static Future<void> seedAll(MiGanadoDatabase database) async {
    // Check if data already exists
    final allAnimales = await database.getAllAnimales();
    if (allAnimales.isNotEmpty) {
      LoggerService.info(
          'Database already contains data, seed skipped', 'SeedDatabaseFresh');
      return; // Data already exists, skip seed
    }

    LoggerService.startOperation('seedAll', 'SeedDatabaseFresh');

    // ============ GANADERO ============
    final ganadero = GanaderoEntity(
      nombre: 'Hacienda El Porvenir',
      telefono: '(+57) 315 456 7890',
      correo: 'info@haciendalporvenir.com',
      ubicacion: 'Vereda La Suiza, Municipio de Manizales, Colombia',
      notas:
          'Ganadería especializada en producción de leche y carne. 26 animales en inventario.',
      cantidadAnimales: 26,
      tipoProduccion: 'Doble Propósito',
    );
    await database.saveGanadero(ganadero);

    // ============ ANIMALES - 26 TOTAL ============
    // Note: Species.cattle with Category.cow for all bovines
    // LifeStage is automatically calculated based on age, sex, and castration

    // ==== CALVES (2) ====

    final calf1 = AnimalEntity(
      earTagNumber: 'BEC-001',
      customName: 'Benji',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Holstein',
      birthDate: DateTime.now().subtract(const Duration(days: 60)),
      ageMonths: 2,
      isCastrated: false,
      notes: 'Male calf, born on farm, excellent health.',
      purchasePrice: 0,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final calf2 = AnimalEntity(
      earTagNumber: 'BEC-002',
      customName: 'Scarlett',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime.now().subtract(const Duration(days: 45)),
      ageMonths: 1,
      isCastrated: false,
      notes: 'Female Jersey calf, daughter of Daisy.',
      purchasePrice: 0,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ==== HEIFERS (5) - Young females 12-24 months ====

    final heifer1 = AnimalEntity(
      earTagNumber: 'HEI-003',
      customName: 'Valentina',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: DateTime(2024, 6, 10),
      ageMonths: 8,
      isCastrated: false,
      notes: 'Growing heifer, excellent genetics.',
      purchasePrice: 0,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 30)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectin',
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    final heifer2 = AnimalEntity(
      earTagNumber: 'HEI-004',
      customName: 'Luna',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime(2024, 3, 20),
      ageMonths: 11,
      isCastrated: false,
      notes: 'Jersey heifer, approaching breeding age.',
      purchasePrice: 1500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 25)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 40)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    final heifer3 = AnimalEntity(
      earTagNumber: 'HEI-005',
      customName: 'Aurora',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Simmental',
      birthDate: DateTime(2024, 1, 15),
      ageMonths: 13,
      isCastrated: false,
      notes: 'Simmental heifer, European genetics.',
      purchasePrice: 1800000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 20)),
      vaccineType: 'Leptospirosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 35)),
      dewormerType: 'Levamisole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    final heifer4 = AnimalEntity(
      earTagNumber: 'HEI-006',
      customName: 'Sofia',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: DateTime(2023, 11, 5),
      ageMonths: 15,
      isCastrated: false,
      notes: 'Golden Guernsey, premium milk quality.',
      purchasePrice: 2000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 35)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    final heifer5 = AnimalEntity(
      earTagNumber: 'HEI-007',
      customName: 'Rosa',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Brown Swiss',
      birthDate: DateTime(2023, 9, 25),
      ageMonths: 17,
      isCastrated: false,
      notes: 'Brown Swiss, strong frame, good udder.',
      purchasePrice: 1900000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 45)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 55)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    // ==== YOUNG BULLS (2) - Males 12-24 months NOT castrated ====

    final youngBull1 = AnimalEntity(
      earTagNumber: 'TJV-008',
      customName: 'Hercules',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Brahman',
      birthDate: DateTime(2023, 8, 10),
      ageMonths: 18,
      isCastrated: false,
      notes: 'Young Brahman bull, excellent growth.',
      purchasePrice: 4000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 40)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final youngBull2 = AnimalEntity(
      earTagNumber: 'TJV-009',
      customName: 'Titan',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Charolais',
      birthDate: DateTime(2023, 10, 20),
      ageMonths: 16,
      isCastrated: false,
      notes: 'Charolais young bull, meat quality genetics.',
      purchasePrice: 3800000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 35)),
      vaccineType: 'Leptospirosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Levamisole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ==== STEERS (2) - Castrated males 12-24 months ====

    final steer1 = AnimalEntity(
      earTagNumber: 'NOV-010',
      customName: 'Bruno',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Holstein',
      birthDate: DateTime(2023, 7, 15),
      ageMonths: 19,
      isCastrated: true,
      notes: 'Castrated Holstein, fattening program.',
      purchasePrice: 2500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 50)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 65)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 35)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final steer2 = AnimalEntity(
      earTagNumber: 'NOV-011',
      customName: 'Oscar',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Angus',
      birthDate: DateTime(2023, 5, 25),
      ageMonths: 21,
      isCastrated: true,
      notes: 'Black Angus steer, ready for market.',
      purchasePrice: 3200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 55)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 70)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 40)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ==== COWS (11) - Mature females >=24 months ====

    final cow1 = AnimalEntity(
      earTagNumber: 'VAC-012',
      customName: 'Daisy',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: DateTime(2020, 3, 10),
      ageMonths: 47,
      isCastrated: false,
      notes: 'Mature Holstein, excellent milk producer.',
      purchasePrice: 4500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 30)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 25)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 5)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow2 = AnimalEntity(
      earTagNumber: 'VAC-013',
      customName: 'Molly',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime(2019, 11, 20),
      ageMonths: 63,
      isCastrated: false,
      notes: 'Jersey cow, high butterfat milk.',
      purchasePrice: 4200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 28)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 20)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 8)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow3 = AnimalEntity(
      earTagNumber: 'VAC-014',
      customName: 'Bessie',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: DateTime(2019, 6, 5),
      ageMonths: 68,
      isCastrated: false,
      notes: 'Golden Guernsey, premium quality.',
      purchasePrice: 4800000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 32)),
      vaccineType: 'Leptospirosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 22)),
      dewormerType: 'Levamisole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow4 = AnimalEntity(
      earTagNumber: 'VAC-015',
      customName: 'Emma',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Brown Swiss',
      birthDate: DateTime(2020, 1, 15),
      ageMonths: 49,
      isCastrated: false,
      notes: 'Brown Swiss, versatile dairy animal.',
      purchasePrice: 4600000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 30)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 24)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 7)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow5 = AnimalEntity(
      earTagNumber: 'VAC-016',
      customName: 'Clarice',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Simmental',
      birthDate: DateTime(2018, 9, 30),
      ageMonths: 77,
      isCastrated: false,
      notes: 'Simmental cow, dual-purpose genetics.',
      purchasePrice: 5000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 35)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 30)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 12)),
      reproductiveStatus: ReproductiveStatus.empty,
    );

    final cow6 = AnimalEntity(
      earTagNumber: 'VAC-017',
      customName: 'Dolly',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: DateTime(2018, 4, 20),
      ageMonths: 82,
      isCastrated: false,
      notes: 'Mature Holstein, steady producer.',
      purchasePrice: 4300000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 40)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 28)),
      dewormerType: 'Levamisole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 14)),
      reproductiveStatus: ReproductiveStatus.pregnant,
    );

    final cow7 = AnimalEntity(
      earTagNumber: 'VAC-018',
      customName: 'Iris',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime(2019, 2, 10),
      ageMonths: 71,
      isCastrated: false,
      notes: 'Jersey cow, exceptional milk composition.',
      purchasePrice: 4400000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 33)),
      vaccineType: 'Leptospirosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 26)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 9)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow8 = AnimalEntity(
      earTagNumber: 'VAC-019',
      customName: 'Nancy',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Brown Swiss',
      birthDate: DateTime(2017, 12, 5),
      ageMonths: 85,
      isCastrated: false,
      notes: 'Brown Swiss, veteran producer.',
      purchasePrice: 4700000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 38)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 32)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 16)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow9 = AnimalEntity(
      earTagNumber: 'VAC-020',
      customName: 'Olivia',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: DateTime(2018, 7, 15),
      ageMonths: 79,
      isCastrated: false,
      notes: 'Golden Guernsey, reliable milker.',
      purchasePrice: 5000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 36)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 29)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 11)),
      reproductiveStatus: ReproductiveStatus.empty,
    );

    final cow10 = AnimalEntity(
      earTagNumber: 'VAC-021',
      customName: 'Penny',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Simmental',
      birthDate: DateTime(2017, 5, 20),
      ageMonths: 89,
      isCastrated: false,
      notes: 'Simmental cow, strong maternal instinct.',
      purchasePrice: 5100000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 42)),
      vaccineType: 'Leptospirosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 35)),
      dewormerType: 'Levamisole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 18)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final cow11 = AnimalEntity(
      earTagNumber: 'VAC-022',
      customName: 'Ginger',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: DateTime(2019, 8, 30),
      ageMonths: 65,
      isCastrated: false,
      notes: 'Holstein cow, consistent performer.',
      purchasePrice: 4500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 31)),
      vaccineType: 'Brucellosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 23)),
      dewormerType: 'Albendazole',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 6)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    // ==== BULL (1) - Mature male >=24 months ====

    final bull = AnimalEntity(
      earTagNumber: 'TOR-023',
      customName: 'Samson',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Brahman',
      birthDate: DateTime(2018, 2, 10),
      ageMonths: 84,
      isCastrated: false,
      notes: 'Elite breeding bull, proven bloodline.',
      purchasePrice: 15000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 60)),
      vaccineType: 'Foot and Mouth',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ==== EQUINE ANIMALS (3) ====

    final horse = AnimalEntity(
      earTagNumber: 'CAB-024',
      customName: 'Alcázar',
      species: Species.equine,
      category: Category.horse,
      sex: Sex.male,
      breed: 'Criollo Colombiano',
      birthDate: DateTime(2021, 6, 10),
      ageMonths: 32,
      isCastrated: true,
      notes: 'Work horse, well-trained.',
      purchasePrice: 3000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 90)),
      vaccineType: 'Equine Encephalitis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final mare = AnimalEntity(
      earTagNumber: 'YEG-025',
      customName: 'Paloma',
      species: Species.equine,
      category: Category.mare,
      sex: Sex.female,
      breed: 'Quarter Horse',
      birthDate: DateTime(2020, 3, 15),
      ageMonths: 47,
      isCastrated: false,
      notes: 'Excellent breeding mare.',
      purchasePrice: 5000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 85)),
      vaccineType: 'Equine Encephalitis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 55)),
      dewormerType: 'Ivermectin',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
      reproductiveStatus: ReproductiveStatus.empty,
    );

    final donkey = AnimalEntity(
      earTagNumber: 'BUR-026',
      customName: 'Platero',
      species: Species.equine,
      category: Category.donkey,
      sex: Sex.male,
      breed: 'Criollo Donkey',
      birthDate: DateTime(2019, 10, 20),
      ageMonths: 64,
      isCastrated: true,
      notes: 'Strong, docile pack animal.',
      purchasePrice: 1500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 100)),
      vaccineType: 'Equine Encephalitis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Levamisole',
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ============ SAVE ALL ANIMALS ============
    try {
      await database.saveAnimal(calf1);
      await database.saveAnimal(calf2);
      await database.saveAnimal(heifer1);
      await database.saveAnimal(heifer2);
      await database.saveAnimal(heifer3);
      await database.saveAnimal(heifer4);
      await database.saveAnimal(heifer5);
      await database.saveAnimal(youngBull1);
      await database.saveAnimal(youngBull2);
      await database.saveAnimal(steer1);
      await database.saveAnimal(steer2);
      await database.saveAnimal(cow1);
      await database.saveAnimal(cow2);
      await database.saveAnimal(cow3);
      await database.saveAnimal(cow4);
      await database.saveAnimal(cow5);
      await database.saveAnimal(cow6);
      await database.saveAnimal(cow7);
      await database.saveAnimal(cow8);
      await database.saveAnimal(cow9);
      await database.saveAnimal(cow10);
      await database.saveAnimal(cow11);
      await database.saveAnimal(bull);
      await database.saveAnimal(horse);
      await database.saveAnimal(mare);
      await database.saveAnimal(donkey);

      LoggerService.info(
          '✅ All 26 animals seeded successfully', 'SeedDatabaseFresh');
    } catch (e) {
      LoggerService.error('Error seeding animals: $e', null, null);
      rethrow;
    }
  }
}
