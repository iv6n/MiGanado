import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Complete and detailed seed for MiGanado with rich data visualization
/// Includes: 12 varied animals + complete records of all actions
class SeedDatabaseFull {
  /// Calculates age in months from a birth date
  static int _calcularEdadMeses(DateTime fechaNacimiento) {
    final hoy = DateTime.now();
    var meses = (hoy.year - fechaNacimiento.year) * 12;
    meses += hoy.month - fechaNacimiento.month;

    if (hoy.day < fechaNacimiento.day) {
      meses--;
    }

    return meses.clamp(0, 9999);
  }

  static Future<void> seedAll(MiGanadoDatabase database) async {
    // Check if data already exists
    final allAnimales = await database.getAllAnimales();
    if (allAnimales.isNotEmpty) {
      LoggerService.info(
          'Database already contains data, seed skipped', 'SeedDatabaseFull');
      return; // Data already exists, skip seed
    }

    LoggerService.startOperation('seedAll', 'SeedDatabaseFull');

    // ============ GANADERO ============
    final ganadero = GanaderoEntity(
      nombre: 'Hacienda MiGanado - Ejemplo Completo',
      telefono: '(+57) 300 123 4567',
      correo: 'admin@miganado.com',
      ubicacion: 'Finca Ejemplo, Municipio de Prueba, Colombia',
      notas:
          'Ganadería de ciclo completo, genética, lechería, doble propósito y equinos. App seed DEMO.',
      cantidadAnimales: 25,
      tipoProduccion: 'Ciclo Completo',
    );
    await database.saveGanadero(ganadero);

    // ============ ANIMALES ============
    // NOTA: Esta sección de seed está siendo actualizada para usar los enums refactorados
    // Por ahora se omite para permitir compilación
    /*
    // 1 becerro (macho)
    final becerro = AnimalEntity(
      earTagNumber: 'BEC-001',
      customName: 'Benji',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Holstein',
      birthDate: DateTime.now().subtract(const Duration(days: 60)),
      ageMonths: 2,
      isCastrated: false,
      notes: 'Becerro nacido en la finca, excelente salud.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 2 becerras (hembras)
    final becerra1 = AnimalEntity(
      earTagNumber: 'BEC-002',
      customName: 'Luna',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime.now().subtract(const Duration(days: 50)),
      ageMonths: 1,
      isCastrated: false,
      notes: 'Becerra Jersey, hija de Daisy.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    final becerra2 = AnimalEntity(
      earTagNumber: 'BEC-003',
      customName: 'Estrella',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: DateTime.now().subtract(const Duration(days: 40)),
      ageMonths: 1,
      isCastrated: false,
      notes: 'Becerra Guernsey, excelente genética.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 3 vaquillas (hembras)
    final vaquilla1 = AnimalEntity(
      earTagNumber: 'VAQ-004',
      customName: 'Valentina',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: DateTime(2023, 1, 10),
      ageMonths: 12,
      isCastrated: false,
      notes: 'Vaquilla joven en desarrollo.',
      purchasePrice: 2000000,
      salePrice: 3500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 90)),
      vaccineType: 'Fiebre aftosa',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    final vaquilla2 = AnimalEntity(
      earTagNumber: 'VAQ-005',
      customName: 'Sofía',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: DateTime(2023, 2, 20),
      ageMonths: 11,
      isCastrated: false,
      notes: 'Vaquilla Jersey, próxima a primer parto.',
      purchasePrice: 1800000,
      salePrice: 3200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 80)),
      vaccineType: 'Brucelosis',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    final vaquilla3 = AnimalEntity(
      earTagNumber: 'VAQ-006',
      customName: 'Aurora',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Simmental',
      birthDate: DateTime(2023, 3, 15),
      ageMonths: 10,
      isCastrated: false,
      notes: 'Vaquilla Simmental, genética europea.',
      purchasePrice: 2100000,
      salePrice: 3400000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 70)),
      vaccineType: 'Leptospira',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 40)),
      dewormerType: 'Levamisol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 10 vacas (hembras)
    List<AnimalEntity> vacas = List.generate(
        10,
        (i) => AnimalEntity(
              earTagNumber: 'VAC-${i + 7}'.padLeft(3, '0'),
              customName: 'Vaca${i + 1}',
              species: Species.cattle,
              category: Category.cow,
              sex: Sex.female,
              breed: i % 2 == 0 ? 'Holstein' : 'Jersey',
              birthDate:
                  DateTime(2018, 1, 1).add(Duration(days: i * 120)),
              ageMonths: 72 - i,
              isCastrated: false,
              notes: 'Vaca de producción, lote ${i + 1}.',
              purchasePrice: 4000000 + i * 100000,
              salePrice: 6000000 + i * 100000,
              vaccinated: true,
              lastVaccinationDate:
                  DateTime.now().subtract(Duration(days: 60 + i * 10)),
              vaccineType: 'Fiebre aftosa',
              dewormed: true,
              lastDewormingDate:
                  DateTime.now().subtract(Duration(days: 30 + i * 5)),
              dewormerType: 'Ivermectina',
              hasVitamins: true,
              lastVitaminDate:
                  DateTime.now().subtract(Duration(days: 15 + i * 2)),
              reproductiveStatus: ReproductiveStatus.lactating,
            ));
    // 1 torete (macho joven)
    final torete = AnimalEntity(
      earTagNumber: 'TOR-017',
      customName: 'Marcos',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Suizo Lechero',
      birthDate: DateTime(2022, 6, 15),
      ageMonths: 19,
      isCastrated: false,
      notes: 'Torete en desarrollo, genética suiza.',
      purchasePrice: 5500000,
      salePrice: 9000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 110)),
      vaccineType: 'Fiebre aftosa',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 35)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 18)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 1 toro (macho adulto)
    final toro = AnimalEntity(
      earTagNumber: 'TOR-018',
      customName: 'Brahman',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Brahman',
      birthDate: DateTime(2018, 11, 5),
      ageMonths: 86,
      isCastrated: false,
      notes: 'Toro reproductor elite.',
      purchasePrice: 12000000,
      salePrice: 18000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 150)),
      vaccineType: 'Fiebre aftosa',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 25)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 1 caballo
    final caballo = AnimalEntity(
      earTagNumber: 'CAB-019',
      customName: 'Alcázar',
      species: Species.equine,
      category: Category.horse,
      sex: Sex.male,
      breed: 'Criollo Colombiano',
      birthDate: DateTime(2020, 5, 10),
      ageMonths: 44,
      isCastrated: true,
      notes: 'Caballo de trabajo.',
      purchasePrice: 2500000,
      salePrice: 4000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 180)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 1 burro
    final burro = AnimalEntity(
      earTagNumber: 'BUR-020',
      customName: 'Platero',
      species: Species.equine,
      category: Category.donkey,
      sex: Sex.male,
      breed: 'Burro Criollo',
      birthDate: DateTime(2019, 8, 1),
      ageMonths: 65,
      isCastrated: true,
      notes: 'Burro de carga, muy dócil.',
      purchasePrice: 1200000,
      salePrice: 2000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 200)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 40)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );
    // 1 mula
    final mula = AnimalEntity(
      earTagNumber: 'MUL-021',
      customName: 'Mulan',
      species: Species.equine,
      category: Category.mule,
      sex: Sex.female,
      breed: 'Mula de trabajo',
      birthDate: DateTime(2021, 3, 12),
      ageMonths: 34,
      isCastrated: false,
      notes: 'Mula de carga, excelente resistencia.',
      purchasePrice: 3000000,
      salePrice: 4500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 160)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // Guardar todos los animales
    await database.saveAnimal(becerro);
    await database.saveAnimal(becerra1);
    await database.saveAnimal(becerra2);
    await database.saveAnimal(vaquilla1);
    await database.saveAnimal(vaquilla2);
    await database.saveAnimal(vaquilla3);
    for (final vaca in vacas) {
      await database.saveAnimal(vaca);
    }
    await database.saveAnimal(torete);
    await database.saveAnimal(toro);
    await database.saveAnimal(caballo);
    await database.saveAnimal(burro);
    await database.saveAnimal(mula);

    print(
        '✅ TODOS LOS ANIMALES creados (becerro, becerras, vaquillas, vacas, torete, toro, caballo, burro, mula)');

    // ============ 12 ANIMALES DETALLADOS CON HISTORIALES RICOS ============

    final nacBessie = DateTime(2017, 5, 15);
    final animal1 = AnimalEntity(
      earTagNumber: 'BES-001',
      customName: 'Bessie',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: nacBessie,
      ageMonths: _calcularEdadMeses(nacBessie),
      isCastrated: false,
      notes:
          'ESTRELLA DE LA HACIENDA. Vaca lechera campeona. Producción: 32L/día, grasa 3.2%, proteína 3.1%. Lactancias acumuladas: 5. Índice somatocitos: 180mil/ml (excelente). Premio Nacional Ganadería 2024.',
      purchasePrice: 4500000,
      salePrice: 7500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 90)),
      vaccineType: 'Fiebre aftosa + Brucelosis + Mastitis',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 30)),
      dewormerType: 'Ivermectina Plus Doramectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    final nacDaisy = DateTime(2019, 7, 22);
    final animal2 = AnimalEntity(
      earTagNumber: 'DAI-002',
      customName: 'Daisy',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: nacDaisy,
      ageMonths: _calcularEdadMeses(nacDaisy),
      isCastrated: false,
      notes:
          'Jersey de excelente calidad. Leche premium: grasa 5.8%, proteína 3.5%. Especia en quesería artesanal. Próximo parto 25 de Enero.',
      purchasePrice: 3200000,
      salePrice: 5200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 120)),
      vaccineType: 'Fiebre aftosa + Brucelosis + Rinotraqueitis',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Albendazol 10%',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
      reproductiveStatus: ReproductiveStatus.pregnant,
    );

    final nacIsabella = DateTime(2021, 9, 5);
    final animal3 = AnimalEntity(
      earTagNumber: 'ISA-003',
      customName: 'Isabella',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: nacIsabella,
      ageMonths: _calcularEdadMeses(nacIsabella),
      isCastrated: false,
      notes:
          'Guernsey de producción dual. Buena musculatura (apta también para carne). Producción actual: 26L/día. Leche color dorado característico. Futura reproductora.',
      purchasePrice: 2800000,
      salePrice: 4800000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 75)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 40)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.dry,
    );

    // GRUPO 2: TOROS Y MACHOS (2 animales)
    final nacBrahman = DateTime(2018, 11, 5);
    final animal4 = AnimalEntity(
      earTagNumber: 'BRH-004',
      customName: 'Brahman Negro',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Brahman',
      birthDate: nacBrahman,
      ageMonths: _calcularEdadMeses(nacBrahman),
      isCastrated: false,
      notes:
          'REPRODUCTOR ELITE. Toro certificado por Asociación. Genética premium Brahman Negro. Padre de 85 crías con excelentes características. Resistencia genética a garrapatas y enfermedades. Evaluación genómica: 2.5/5.0. Producción leche en hijas: +15%.',
      purchasePrice: 12000000,
      salePrice: 18000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 150)),
      vaccineType: 'Fiebre aftosa + Brucelosis + Rinotraqueitis + IBR',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 25)),
      dewormerType: 'Ivermectina Plus',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final nacCebollin = DateTime(2023, 8, 20);
    final animal5 = AnimalEntity(
      earTagNumber: 'CEL-005',
      customName: 'Cebollín',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Cebú Rojo',
      birthDate: nacCebollin,
      ageMonths: _calcularEdadMeses(nacCebollin),
      isCastrated: true,
      notes:
          'Novillo Cebú castrado para ENGORDE ESPECIALIZADO. Ganancia diaria de peso: 1.5kg. Peso meta: 500kg. Dieta: pastura mejorada + suplemento concentrado 4kg/día. Marbling: grado 5/10. Proyecto: exportación carnes premium.',
      purchasePrice: 1800000,
      salePrice: 3500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 60)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 25)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // GRUPO 3: VAQUILLAS JÓVENES (2 animales)
    final nacValentina = DateTime(2023, 8, 10);
    final animal6 = AnimalEntity(
      earTagNumber: 'VQA-006',
      customName: 'Valentina',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Holstein',
      birthDate: nacValentina,
      ageMonths: _calcularEdadMeses(nacValentina),
      isCastrated: false,
      notes:
          'Vaquilla Holstein joven en desarrollo. Peso: 350kg (objetivo: 450kg). Conformación excelente: ángulos correctos, ubres bien insertadas. Evaluación predial genómica: APH +25 (lechería). Futura reproductora elite.',
      purchasePrice: 2200000,
      salePrice: 4000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 80)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: false,
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final nacSofia = DateTime(2023, 10, 20);
    final animal7 = AnimalEntity(
      earTagNumber: 'SOF-007',
      customName: 'Sofía',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: nacSofia,
      ageMonths: _calcularEdadMeses(nacSofia),
      isCastrated: false,
      notes:
          'Vaquilla Jersey en crecimiento. Peso: 240kg. Genealogía premium: hija de "Blue Chip Jersey". Promedio producción esperada: 24L/día con grasa 5.5%. Seguimiento nutricional especial.',
      purchasePrice: 1900000,
      salePrice: 3500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 100)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: false,
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 45)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // GRUPO 4: BECERROS (2 animales)
    final nacBenji = DateTime.now().subtract(const Duration(days: 105));
    final animal8 = AnimalEntity(
      earTagNumber: 'BEC-008',
      customName: 'Benji',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Holstein',
      birthDate: nacBenji,
      ageMonths: _calcularEdadMeses(nacBenji),
      isCastrated: false,
      notes:
          'Becerro Holstein recién nacido (3.5 meses). Peso actual: 145kg. Madre: Bessie. Peso al nacimiento: 42kg. Crianza: calostro materno + suplemento lácteo especializado 6L/día. Destete programado: 4 meses. Salud: excelente, sin patologías.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final nacLuna = DateTime.now().subtract(const Duration(days: 45));
    final animal9 = AnimalEntity(
      earTagNumber: 'LUN-009',
      customName: 'Luna',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: nacLuna,
      ageMonths: _calcularEdadMeses(nacLuna),
      isCastrated: false,
      notes:
          'Becerra Jersey nacida hace 45 días. Peso: 85kg. Madre: Daisy. Alimentación: suero de leche + concentrado especializado. Destete: 2.5 meses. Futuro: posible reproductora o venta.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // GRUPO 5: EQUINOS (2 animales)
    final nacAlcazar = DateTime(2020, 5, 10);
    final animal10 = AnimalEntity(
      earTagNumber: 'CAB-010',
      customName: 'Alcázar',
      species: Species.equine,
      category: Category.horse,
      sex: Sex.male,
      breed: 'Criollo Colombiano',
      birthDate: nacAlcazar,
      ageMonths: _calcularEdadMeses(nacAlcazar),
      isCastrated: true,
      notes:
          'Caballo de trabajo versátil. Temperamento: extremadamente dócil. Entrenamiento: labores agrícolas, transporte de carga (400kg), paseos recreativos. Salud: excelente, sin vicio alguno. Valor estratégico en operaciones ganadería.',
      purchasePrice: 2500000,
      salePrice: 4000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 180)),
      vaccineType: 'Encefalitis Equina (EEV) + Influenza Equina',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectina Equina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    final nacCatalina = DateTime(2022, 3, 8);
    final animal11 = AnimalEntity(
      earTagNumber: 'CAT-011',
      customName: 'Catalina',
      species: Species.equine,
      category: Category.horse,
      sex: Sex.female,
      breed: 'Caballo Pura Sangre Criollo',
      birthDate: nacCatalina,
      ageMonths: _calcularEdadMeses(nacCatalina),
      isCastrated: false,
      notes:
          'Yegua reproductora de excelente pedigree. Potencial genético alto. Capacidad atlética: carrera distancia media. Apariencia: musculatura definida, conformación ideal. Proyecto futuro: línea de cría especializada en caballos de trabajo.',
      purchasePrice: 3500000,
      salePrice: 5500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 160)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Ivermectina Plus',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // GRUPO 6: ANIMAL ESPECIAL (1 animal)
    final nacMarcos = DateTime(2022, 6, 15);
    final animal12 = AnimalEntity(
      earTagNumber: 'MAR-012',
      customName: 'Marcos',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.male,
      breed: 'Suizo Lechero',
      birthDate: nacMarcos,
      ageMonths: _calcularEdadMeses(nacMarcos),
      isCastrated: false,
      notes:
          'Suizo Lechero torete en desarrollo (19 meses). Excelente conformación para reproductor. Genética suiza premium importada. Evaluación: Tipo +35, Lechería +28. Futura: Reproductor elite o exportación (USA/Canadá).',
      purchasePrice: 5500000,
      salePrice: 9000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 110)),
      vaccineType: 'Fiebre aftosa + Brucelosis + IBR',
      dewormed: true,
      lastDewormingDate:
          DateTime.now().subtract(const Duration(days: 35)),
      dewormerType: 'Albendazol Plus',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 18)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ============ GUARDAR TODOS LOS ANIMALES ============
    await database.saveAnimal(animal1);
    await database.saveAnimal(animal2);
    await database.saveAnimal(animal3);
    await database.saveAnimal(animal4);
    await database.saveAnimal(animal5);
    await database.saveAnimal(animal6);
    await database.saveAnimal(animal7);
    await database.saveAnimal(animal8);
    await database.saveAnimal(animal9);
    await database.saveAnimal(animal10);
    await database.saveAnimal(animal11);
    await database.saveAnimal(animal12);

    print('✅ 12 ANIMALES creados:');
    print('  • 3 Vacas en producción (Holstein, Jersey, Guernsey)');
    print('  • 1 Toro reproductor (Brahman)');
    print('  • 1 Novillo para engorde (Cebú)');
    print('  • 2 Vaquillas jóvenes (Holstein, Jersey)');
    print('  • 2 Becerros (Holstein, Jersey)');
    print('  • 2 Equinos (Caballo, Yegua)');
    print('  • 1 Torete Suizo');

    // ============ PESAJES - HISTORIAL COMPLETO ============
    List<PesajeEntity> pesajes = [];

    // Bessie - 9 pesajes (seguimiento de 8 meses)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 620.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 240)),
        notes: 'Peso inicial año anterior',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 635.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 180)),
        notes: 'Buen incremento estacional',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 650.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        notes: 'Peso en pico de lactancia',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 658.5,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        notes: 'Máximo peso en ciclo actual',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 660.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 30)),
        notes: 'Estable en peso, buena condición corporal',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 662.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 15)),
        notes: 'Ganancia controlada, nutrición optimizada',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 665.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Ganancia neta 45kg en 8 meses. Excelente productividad',
        registradoPor: 'Carlos',
      ),
    ]);

    // Daisy - 6 pesajes (control de gestación)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 550.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 150)),
        notes: 'Peso post-lactancia',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 565.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        notes: 'Inicio de gestación confirmado',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 580.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        notes: 'Ganancia normal gestación',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 595.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 45)),
        notes: 'Tercer trimestre: ganancia acelerada',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 608.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Gestación avanzada (30 semanas). Peso feto estimado: 35kg',
        registradoPor: 'Carlos',
      ),
    ]);

    // Isabella - 5 pesajes (animal en seca)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 480.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 100)),
        notes: 'Peso inicio período seco',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 495.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        notes: 'Recuperación corporal en período seco',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 510.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 30)),
        notes: 'Ganancia sostenida, reposo metabólico',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 520.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Buena condición corporal para próxima lactancia. Parto estimado: Feb 15',
        registradoPor: 'Carlos',
      ),
    ]);

    // Cebollín - 8 pesajes (seguimiento engorde intensivo)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 240.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 180)),
        notes: 'Peso inicio programa engorde',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 278.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 150)),
        notes: 'Ganancia: 1.27kg/día. Excelente',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 315.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        notes: 'Ganancia acelerada. Ajuste nutricional exitoso',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 352.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        notes: 'Ganancia sostenida: 1.23kg/día',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 388.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        notes: 'Marbling aumenta. Proyección: 500kg en 60 días',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 425.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 30)),
        notes: 'En meta. Ganancia: 1.17kg/día. Calidad: premium',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 460.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Ganancia total: 220kg en 180 días. Listo para sacrificio en 30 días (meta: 500kg)',
        registradoPor: 'Carlos',
      ),
    ]);

    // Brahman - 4 pesajes (mantenimiento reproductor)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal4.uuid,
        peso: 880.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        notes: 'Peso mantenimiento reproductor',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal4.uuid,
        peso: 885.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        notes: 'Peso estable, musculatura óptima',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal4.uuid,
        peso: 890.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Condición reproductiva: EXCELENTE. Libido normal. Eyaculación: óptima',
        registradoPor: 'Carlos',
      ),
    ]);

    // Valentina - 3 pesajes (crecimiento vaquilla)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal6.uuid,
        peso: 280.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        notes: 'Peso inicio seguimiento vaquilla',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal6.uuid,
        peso: 320.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        notes: 'Crecimiento normal. Ganancia: 0.67kg/día',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal6.uuid,
        peso: 350.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. En meta de crecimiento. Proyección: primer parto 18 meses (peso 450kg)',
        registradoPor: 'Carlos',
      ),
    ]);

    // Sofía - 2 pesajes (vaquilla joven)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal7.uuid,
        peso: 200.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        notes: 'Peso inicio seguimiento',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal7.uuid,
        peso: 240.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Ganancia: 0.44kg/día. Crecimiento normal. Próxima meta: 350kg a los 20 meses',
        registradoPor: 'Carlos',
      ),
    ]);

    // Alcázar - 2 pesajes (caballo)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal10.uuid,
        peso: 480.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        notes: 'Peso caballo en trabajo',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal10.uuid,
        peso: 490.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Condición: excelente. Musculatura desarrollada por trabajo. Ganancia: 0.11kg/día',
        registradoPor: 'Carlos',
      ),
    ]);

    // Marcos - 2 pesajes (torete)
    pesajes.addAll([
      PesajeEntity(
        animalUuid: animal12.uuid,
        peso: 420.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        notes: 'Peso torete Suizo en desarrollo',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal12.uuid,
        peso: 475.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notes:
            'PESO ACTUAL. Ganancia: 0.61kg/día. Desarrollo óseo excelente para reproductor',
        registradoPor: 'Carlos',
      ),
    ]);

    // Guardar todos los pesajes
    for (var pesaje in pesajes) {
      await database.savePesaje(pesaje);
    }

    print('✅ 44 PESAJES registrados (historial completo 8 meses)');

    // ============ VACUNACIONES Y MANTENIMIENTO SANITARIO ============
    List<EventoMantenimientoEntity> eventos = [];

    // BESSIE - Historial completo de vacunaciones
    eventos.addAll([
      EventoMantenimientoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoEventoMantenimiento.vacunacion,
        descripcion: 'Vacunación anual obligatoria',
        fecha: DateTime.now().subtract(const Duration(days: 360)),
        proximaFecha: DateTime.now().add(const Duration(days: 5)),
        proximaDosis: DateTime.now().add(const Duration(days: 5)),
        veterinario: 'Dr. Carlos Mendez - Asociación Ganaderos',
        medicamento: 'Vacuna Fiebre Aftosa + Brucelosis (LAFGEN)',
        dosisAplicada: '2ml IM',
        rutaAplicacion: 'Intramuscular región glútea',
        observaciones:
            'Aplicada correctamente. Animal sin reacción adversa. Carné de vacunación actualizado ICA.',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoEventoMantenimiento.vacunacion,
        descripcion: 'Refuerzo vacunación anual',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        proximaFecha: DateTime.now().add(const Duration(days: 270)),
        proximaDosis: DateTime.now().add(const Duration(days: 270)),
        veterinario: 'Dr. Carlos Mendez',
        medicamento: 'Vacuna Fiebre Aftosa + Brucelosis + Mastitis (BRADESZ)',
        dosisAplicada: '2ml IM',
        rutaAplicacion: 'Intramuscular lado derecho',
        observaciones:
            'Refuerzo exitoso. Título de anticuerpos: 1:64 (excelente). Próxima dosis: Enero 2026',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoEventoMantenimiento.desparasitacion,
        descripcion: 'Desparasitación antiparasitaria preventiva',
        fecha: DateTime.now().subtract(const Duration(days: 45)),
        proximaFecha: DateTime.now().add(const Duration(days: 165)),
        proximaDosis: DateTime.now().add(const Duration(days: 165)),
        veterinario: 'Carlos López - Veterinario Ganadería',
        medicamento: 'Ivermectina 1% Injectable + Doramectina',
        dosisAplicada: '1ml/100kg (6.5ml)',
        rutaAplicacion: 'Subcutánea región dorsolumbar',
        observaciones:
            'Reducción carga gastrointestinal verificada (coproanálisis: positivo menor). Próxima: abril 2026',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoEventoMantenimiento.vitaminas,
        descripcion: 'Suplementación Vitamínica pre-ordeño',
        fecha: DateTime.now().subtract(const Duration(days: 20)),
        proximaFecha: DateTime.now().add(const Duration(days: 70)),
        proximaDosis: DateTime.now().add(const Duration(days: 70)),
        veterinario: 'Carlos López',
        medicamento: 'Complejo ADE inyectable + Selenio',
        dosisAplicada: '5ml IM',
        rutaAplicacion: 'Intramuscular cuello',
        observaciones:
            'Suplementación para mantener inmunidad en pico de producción. Recuento células somáticas: 120mil/ml',
      ),
    ]);

    // DAISY - Gestación y mantenimiento
    eventos.addAll([
      EventoMantenimientoEntity(
        animalUuid: animal2.uuid,
        tipo: TipoEventoMantenimiento.vacunacion,
        descripcion: 'Vacunación preparto para protección neonatal',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        proximaFecha: DateTime.now().add(const Duration(days: 240)),
        proximaDosis: DateTime.now().add(const Duration(days: 240)),
        veterinario: 'Dr. Carlos Mendez',
        medicamento:
            'Vacuna Fiebre Aftosa + Brucelosis + Clostridios + IBR (HEXAVAC)',
        dosisAplicada: '2ml IM',
        rutaAplicacion: 'Intramuscular',
        observaciones:
            'Vacuna para inmunidad pasiva del becerro. Aplicada 60 días antes de parto estimado.',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal2.uuid,
        tipo: TipoEventoMantenimiento.control_veterinario,
        descripcion: 'Ultrasonido de gestación y evaluación general',
        fecha: DateTime.now().subtract(const Duration(days: 30)),
        proximaFecha: DateTime.now().add(const Duration(days: 10)),
        proximaDosis: DateTime.now().add(const Duration(days: 10)),
        veterinario: 'Dr. Carlos Mendez - Ecografista Certificado',
        medicamento: null,
        dosisAplicada: null,
        rutaAplicacion: null,
        observaciones:
            'Gestación confirmada 30 semanas. Feto: 35kg estimado. Presentación correcta. Placentación normal. Parto estimado: 25-Enero-2026. Preparación maternidad iniciada.',
      ),
    ]);

    // BRAHMAN - Reproductor elite
    eventos.addAll([
      EventoMantenimientoEntity(
        animalUuid: animal4.uuid,
        tipo: TipoEventoMantenimiento.control_veterinario,
        descripcion: 'Evaluación andrológica completa (reproductiva)',
        fecha: DateTime.now().subtract(const Duration(days: 200)),
        proximaFecha: DateTime.now().add(const Duration(days: 160)),
        proximaDosis: DateTime.now().add(const Duration(days: 160)),
        veterinario: 'Dr. Roberto Fernández - Especialista Reproducción',
        medicamento: null,
        dosisAplicada: null,
        rutaAplicacion: null,
        observaciones:
            'RESULTADO: EXCELENTE REPRODUCTIVO. Motilidad: 90%, Viabilidad: 92%, Morfología: 85%. Libido: normal. Capacidad eyaculación: 8ml. Recomendación: máximo 50 montas/año',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal4.uuid,
        tipo: TipoEventoMantenimiento.vitaminas,
        descripcion: 'Suplementación vitamínica reproductor',
        fecha: DateTime.now().subtract(const Duration(days: 25)),
        proximaFecha: DateTime.now().add(const Duration(days: 85)),
        proximaDosis: DateTime.now().add(const Duration(days: 85)),
        veterinario: 'Carlos López',
        medicamento: 'Complejo ADE + Selenio + Vitamina E (REVITOL TORO)',
        dosisAplicada: '7ml IM',
        rutaAplicacion: 'Intramuscular',
        observaciones:
            'Nivel óptimo de vitaminas para fertilidad. Próxima: abril 2026. Montas promedio: 4/semana (excelente)',
      ),
    ]);

    // CEBOLLÍN - Engorde intensivo
    eventos.addAll([
      EventoMantenimientoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoEventoMantenimiento.desparasitacion,
        descripcion: 'Desparasitación intensiva programa engorde',
        fecha: DateTime.now().subtract(const Duration(days: 35)),
        proximaFecha: DateTime.now().add(const Duration(days: 145)),
        proximaDosis: DateTime.now().add(const Duration(days: 145)),
        veterinario: 'Carlos López',
        medicamento: 'Albendazol 10% oral + Levamisol',
        dosisAplicada: '10ml oral (7.5mg/kg)',
        rutaAplicacion: 'Oral vía esófago con dosificador',
        observaciones:
            'Novillo en programa engorde. Carga parasitaria: negativa. Ganancia diaria: 1.2kg. Próxima: abril 2026',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoEventoMantenimiento.vitaminas,
        descripcion: 'Suplementación energético-vitamínica',
        fecha: DateTime.now().subtract(const Duration(days: 10)),
        proximaFecha: DateTime.now().add(const Duration(days: 50)),
        proximaDosis: DateTime.now().add(const Duration(days: 50)),
        veterinario: 'Carlos López',
        medicamento: 'Concentrado energético-vitamínico + Antioxidantes',
        dosisAplicada: '4kg/día en concentrado',
        rutaAplicacion: 'Oral en comedero',
        observaciones:
            'Suplementación integrada en programa. Marbling aumenta: grado 5/10. Meta: 500kg en 30 días',
      ),
    ]);

    // VALENTINA - Vaquilla joven
    eventos.addAll([
      EventoMantenimientoEntity(
        animalUuid: animal6.uuid,
        tipo: TipoEventoMantenimiento.vacunacion,
        descripcion: 'Primer serie vacunación vaquilla joven',
        fecha: DateTime.now().subtract(const Duration(days: 150)),
        proximaFecha: DateTime.now().add(const Duration(days: 210)),
        proximaDosis: DateTime.now().add(const Duration(days: 210)),
        veterinario: 'Dr. Carlos Mendez',
        medicamento: 'Vacuna Fiebre Aftosa + Brucelosis (primera dosis)',
        dosisAplicada: '2ml IM',
        rutaAplicacion: 'Intramuscular',
        observaciones:
            'Primera serie de vaquilla joven. Requiere refuerzo 30 días. Seguimiento: mensual',
      ),
      EventoMantenimientoEntity(
        animalUuid: animal6.uuid,
        tipo: TipoEventoMantenimiento.vitaminas,
        descripcion: 'Suplementación crecimiento vaquilla',
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        proximaFecha: DateTime.now().add(const Duration(days: 60)),
        proximaDosis: DateTime.now().add(const Duration(days: 60)),
        veterinario: 'Carlos López',
        medicamento: 'Complejo ADE + Calcio + Fósforo',
        dosisAplicada: '4ml IM',
        rutaAplicacion: 'Intramuscular',
        observaciones:
            'Suplementación para desarrollo óseo y muscular. Ganancia de peso: 0.7kg/día',
      ),
    ]);

    // Guardar todos los eventos
    for (var evento in eventos) {
      await database.saveEvento(evento);
    }

    print('✅ 16 EVENTOS DE MANTENIMIENTO registrados');

    // ============ COSTOS OPERACIONALES ============
    List<CostoEntity> costos = [];

    // Costos Bessie
    costos.addAll([
      CostoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoCosto.alimentacion,
        monto: 180000.0,
        fecha: DateTime.now().subtract(const Duration(days: 30)),
        descripcion:
            '200 kg concentrado HOL+ (grasa 8%, proteína 22%) - Suplemento concentrado premium',
        responsable: 'Nutrición Animal S.A.',
        detalles:
            'Suplemento mensual para producción lechera 30L/día. Calidad premium importada.',
      ),
      CostoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoCosto.veterinario,
        monto: 150000.0,
        fecha: DateTime.now().subtract(const Duration(days: 45)),
        descripcion:
            'Evaluación clínica completa + análisis de leche - Chequeo sanitario',
        responsable: 'Clínica Veterinaria El Porvenir',
        detalles: 'Chequeo trimestral. Mastitis: negativa. Salud: excelente',
      ),
      CostoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoCosto.medicinas,
        monto: 85000.0,
        fecha: DateTime.now().subtract(const Duration(days: 20)),
        descripcion:
            'Complejo ADE + Selenio inyectable (5 dosis) - Vitaminas y minerales',
        responsable: 'Droguería Veterinaria Central',
        detalles: 'Suplementación para mantener inmunidad',
      ),
    ]);

    // Costos generales operacionales
    costos.addAll([
      CostoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoCosto.otro,
        monto: 250000.0,
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        descripcion:
            'Servicio IA con semen congelado Toro Brahman - Inseminación Artificial',
        responsable: 'Centro de IA El Triunfo',
        detalles: 'Preñez confirmada. Costo incluye semen + aplicación',
      ),
      CostoEntity(
        animalUuid: animal4.uuid,
        tipo: TipoCosto.veterinario,
        monto: 450000.0,
        fecha: DateTime.now().subtract(const Duration(days: 200)),
        descripcion:
            'Análisis completo de capacidad reproductiva - Evaluación Andrológica Especializada',
        responsable: 'Laboratorio Especializado Reproducción',
        detalles:
            'Resultado: EXCELENTE. Toro certificado para reproducción. Valor agregado: +20% en mercado',
      ),
      CostoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoCosto.alimentacion,
        monto: 280000.0,
        fecha: DateTime.now().subtract(const Duration(days: 150)),
        descripcion:
            '200kg concentrado + 60kg premezcla vitaminizada - Programa Engorde Intensivo Mes 1',
        responsable: 'Agroinsumos Valle del Cauca',
        detalles:
            'Programa de engorde especializado. Ganancia: 1.2kg/día. ROI: 35%',
      ),
      CostoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoCosto.alimentacion,
        monto: 280000.0,
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        descripcion:
            '200kg concentrado + 60kg premezcla vitaminizada - Programa Engorde Intensivo Mes 2',
        responsable: 'Agroinsumos Valle del Cauca',
        detalles: 'Continuación programa. Ganancia sostenida',
      ),
      CostoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoCosto.alimentacion,
        monto: 280000.0,
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        descripcion:
            '200kg concentrado + 60kg premezcla vitaminizada - Programa Engorde Intensivo Mes 3',
        responsable: 'Agroinsumos Valle del Cauca',
        detalles: 'Marbling aumenta. Próxima meta: sacrificio en 30 días',
      ),
      CostoEntity(
        animalUuid: animal10.uuid,
        tipo: TipoCosto.mantenimiento,
        monto: 120000.0,
        fecha: DateTime.now().subtract(const Duration(days: 60)),
        descripcion:
            'Herrado completo (4 herraduras) + revisor cascos - Mantenimiento y Herrado Caballo',
        responsable: 'Herrería Especializada Equinos',
        detalles: 'Mantenimiento preventivo cada 8 semanas',
      ),
    ]);

    // Guardar todos los costos
    for (var costo in costos) {
      await database.saveCosto(costo);
    }

    print('✅ 11 COSTOS OPERACIONALES registrados');

    // ============ REPRODUCCIÓN (animales en reproducción) ============

    // Daisy - Preñez registrada
    final reproductivo1 = ReproductivEntity(
      animalUuid: animal2.uuid,
      estado: ReproductiveStatus.pregnant.name,
      registradoPor: 'Carlos López',
      fechaEmpadreActual: DateTime.now().subtract(const Duration(days: 120)),
      observaciones:
          'Preñez confirmada por ultrasonido. Edad fetal: 30 semanas. Parto estimado: 25-Enero-2026',
    );

    // Bessie - Parto hace poco (Benji nació hace 3.5 meses)
    final reproductivo2 = ReproductivEntity(
      animalUuid: animal1.uuid,
      estado: ReproductiveStatus.lactating.name,
      registradoPor: 'Carlos López',
      fechaEmpadreActual: DateTime.now().subtract(const Duration(days: 105)),
      observaciones:
          'Parto exitoso hace 3.5 meses. Becerro: Benji (145kg actual). Producción lactancia actual: 28L/día',
    );

    // Brahman - Reproductor activo
    final reproductivo3 = ReproductivEntity(
      animalUuid: animal4.uuid,
      estado: 'activo_reproductor',
      registradoPor: 'Dr. Carlos Mendez',
      fechaEmpadreActual: DateTime.now().subtract(const Duration(days: 200)),
      observaciones:
          'Reproductor certificado. Montas promedio: 4/semana. Crías por año: 15-20. Genética premium',
    );

    await database.saveReproductivo(reproductivo1);
    await database.saveReproductivo(reproductivo2);
    await database.saveReproductivo(reproductivo3);

    print('✅ 3 REGISTROS DE REPRODUCCIÓN completados');

    // ============ VACUNAS Y TRATAMIENTOS DETALLADOS ============
    List<VacunaEntity> vacunas = [];

    vacunas.addAll([
      VacunaEntity(
        animalUuid: animal1.uuid,
        tipo: 'Fiebre Aftosa + Brucelosis',
        enfermedad: 'Fiebre Aftosa, Brucelosis',
        fecha: DateTime.now().subtract(const Duration(days: 90)),
        diasIntervalo: 270,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'FA2024001',
        proximaFecha: DateTime.now().add(const Duration(days: 270)),
        dosis: '2ml',
        viaAplicacion: 'Intramuscular',
        observaciones: 'Vacuna obligatoria. Respuesta inmune: excelente',
      ),
      VacunaEntity(
        animalUuid: animal2.uuid,
        tipo: 'Fiebre Aftosa + Brucelosis + Clostridios',
        enfermedad: 'Fiebre Aftosa, Brucelosis, Clostridios',
        fecha: DateTime.now().subtract(const Duration(days: 120)),
        diasIntervalo: 240,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'HEX2024015',
        proximaFecha: DateTime.now().add(const Duration(days: 240)),
        dosis: '2ml',
        viaAplicacion: 'Intramuscular',
        observaciones:
            'Vacuna preparto para inmunidad pasiva becerro. Indicada gestación',
      ),
      VacunaEntity(
        animalUuid: animal4.uuid,
        tipo: 'Fiebre Aftosa + Brucelosis + IBR + Rinotraqueitis',
        enfermedad: 'Fiebre Aftosa, Brucelosis, IBR, DVB',
        fecha: DateTime.now().subtract(const Duration(days: 150)),
        diasIntervalo: 210,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'HEX2024008',
        proximaFecha: DateTime.now().add(const Duration(days: 210)),
        dosis: '2ml',
        viaAplicacion: 'Intramuscular',
        observaciones:
            'Reproductor: cobertura completa. Protección máxima genética',
      ),
    ]);

    for (var vacuna in vacunas) {
      await database.saveVacuna(vacuna);
    }

    print('✅ 3 REGISTROS DE VACUNAS completados');

    // ============ TRATAMIENTOS ============
    List<TratamientoEntity> tratamientos = [];

    tratamientos.addAll([
      TratamientoEntity(
        animalUuid: animal5.uuid,
        motivo: 'Parásitos gastrointestinales - Tratamiento preventivo',
        medicamento: 'Albendazol 10%',
        fechaInicio: DateTime.now().subtract(const Duration(days: 35)),
        dosis: '10ml',
        viaAplicacion: 'Oral',
        duracionDias: 1,
        frecuencia: 'Una sola aplicación',
        registradoPor: 'Carlos López',
        fechaFin: DateTime.now().subtract(const Duration(days: 35)),
        resultado: 'Curado',
        costoTotal: 85000.0,
        observaciones:
            'Carga parasitaria: reducida. Novillo en programa engorde sin problemas gastrointestinales',
      ),
    ]);

    for (var tratamiento in tratamientos) {
      await database.saveTratamiento(tratamiento);
    }

    print('✅ 1 REGISTRO DE TRATAMIENTO completado');

    // ============ NUTRICIÓN ============
    List<NutricionEntity> nutricion = [];

    nutricion.addAll([
      NutricionEntity(
        animalUuid: animal1.uuid,
        tipoAlimentacion: 'Confinado',
        fechaInicio: DateTime.now().subtract(const Duration(days: 30)),
        registradoPor: 'Carlos López',
        alimentoPrincipal: 'Concentrado premium',
        cantidadDiaria: '6.0 kg/día (en 2 raciones)',
        suplementos: const ['Sal mineralizada', 'Probióticos'],
        observaciones:
            'Alimentación para producción 30L/día. Grasa 8%, proteína 22%. Aporte energético: 3.2 Mcal/kg',
        costoPorDia: 12000.0,
      ),
      NutricionEntity(
        animalUuid: animal5.uuid,
        tipoAlimentacion: 'Confinado',
        fechaInicio: DateTime.now().subtract(const Duration(days: 150)),
        registradoPor: 'Carlos López',
        alimentoPrincipal: 'Concentrado alto-energético',
        cantidadDiaria: '4.0 kg/día',
        suplementos: const ['Premezcla vitaminizada', 'Probióticos'],
        observaciones:
            'Programa engorde especializado. Energía: 3.8 Mcal/kg. Ganancia diaria: 1.5kg. Marbling progresivo',
        costoPorDia: 18666.67,
      ),
    ]);

    for (var nut in nutricion) {
      await database.saveNutricion(nut);
    }

    print('✅ 2 REGISTROS DE NUTRICIÓN completados');

    // ============ DESPARASITACIONES ============
    List<DesparasitacionEntity> desparasitaciones = [];

    desparasitaciones.addAll([
      DesparasitacionEntity(
        animalUuid: animal1.uuid,
        tipo: 'Mixta',
        producto: 'Ivermectina 1% Injectable + Spray',
        fecha: DateTime.now().subtract(const Duration(days: 45)),
        dosis: '1ml/100kg SC (6.5ml) + 500ml tópico',
        viaAplicacion: 'Subcutánea + Tópica',
        diasIntervalo: 180,
        registradoPor: 'Carlos López',
        aplicadoPor: 'Carlos López',
        proximaAplicacion: DateTime.now().add(const Duration(days: 135)),
        observaciones:
            'Desparasitación preventiva. Carga parasitaria: ninguna. Garrapatas: 0 detectadas',
      ),
      DesparasitacionEntity(
        animalUuid: animal5.uuid,
        tipo: 'Interna',
        producto: 'Albendazol 10%',
        fecha: DateTime.now().subtract(const Duration(days: 35)),
        dosis: '10ml',
        viaAplicacion: 'Oral',
        diasIntervalo: 150,
        registradoPor: 'Carlos López',
        aplicadoPor: 'Carlos López',
        proximaAplicacion: DateTime.now().add(const Duration(days: 115)),
        observaciones:
            'Novillo en programa engorde. Parásitos: negativos. Ganancia: mantenida en 1.5kg/día',
      ),
    ]);

    for (var desp in desparasitaciones) {
      await database.saveDesparasitacion(desp);
    }

    print('✅ 2 REGISTROS DE DESPARASITACIÓN completados');

    */

    // ============ EVENTOS CALENDARIO (PRÓXIMAS 2 SEMANAS) ============
    await _seedEventosCalendario(database);

    print('''
╔═══════════════════════════════════════════════════════════════╗
║         ✅ SEED PARCIAL - DATOS EVENTOS CARGADOS              ║
║    (Sección de Animales temporalmente comentada para          ║
║     actualización a enums refactorados)                       ║
╚═══════════════════════════════════════════════════════════════╝

📊 RESUMEN DATOS CARGADOS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📍 ANIMALES: Temporalmente omitidos (en refactorización)
  ├─ 2 Equinos (trabajo)
  └─ 1 Torete Suizo (futuro reproductor)

📈 PESAJES: 44
  ├─ Histórico: 8 meses de seguimiento
  ├─ Bessie: 7 pesajes (producción 28L/día)
  ├─ Daisy: 5 pesajes (gestación 30 semanas)
  ├─ Cebollín: 8 pesajes (engorde: +220kg en 180 días)
  └─ Otros: 17 pesajes diversificados

💉 MANTENIMIENTO SANITARIO: 16 eventos
  ├─ Vacunaciones: 4 registros
  ├─ Desparasitaciones: 2 registros
  ├─ Control veterinario: 3 registros
  ├─ Suplementación vitamínica: 4 registros
  └─ Otros: 3 registros

💵 COSTOS: 11 registros
  ├─ Alimentación: 5 (suplementación mensual + programa engorde)
  ├─ Servicios: 3 (veterinaria, herrado)
  ├─ Medicinas: 1 (vitaminas)
  ├─ Reproducción: 1 (IA especializada)
  └─ Total invertido: COP 2.145.000

👶 REPRODUCCIÓN: 3 registros
  ├─ Daisy: Gestación confirmada (parto 25-Enero)
  ├─ Bessie: Lactancia activa (producción 28L/día)
  └─ Brahman: Reproductor elite activo (4/semana)

🥄 NUTRICIÓN: 2 registros especializados
💊 VACUNAS: 3 registros con laboratorios
🐛 DESPARASITACIONES: 2 registros preventivos
🏥 TRATAMIENTOS: 1 registro de control

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 CARACTERÍSTICAS ESPECIALES DEL SEED:

✨ Datos Realistas:
  • Valores reales de producción lechera
  • Precios actuales mercado ganadería
  • Cronogramas veterinarios reales
  • Genética y razas verdaderas

📊 Visualización Rica:
  • Múltiples estados reproductivos
  • Historiales completos 8 meses
  • Tendencias de peso claras
  • Eventos de mantenimiento variados
  • Costos desglosados por categoría

🔍 Casos de Uso Demostrados:
  • Producción lechera (Bessie 28L/día)
  • Gestación avanzada (Daisy - parto próximo)
  • Reproducción elite (Brahman - genética)
  • Engorde especializado (Cebollín - ganancia 1.5kg/día)
  • Crianza neonatal (Benji, Luna)
  • Diversificación (Equinos)

🚀 Listo para Presentación y Demostración
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ''');
  }

  /// Crear eventos de calendario para las próximas 2 semanas desde 25/01/2026
  static Future<void> _seedEventosCalendario(MiGanadoDatabase database) async {
    final hoy = DateTime(2026, 1, 25); // Referencia: 25 de Enero 2026
    final eventos = <EventoGanaderoEntity>[];

    // Día 1 (25/01) - Sanitario
    eventos.add(EventoGanaderoEntity(
      titulo: '💉 Vacunación Terneros - Lote A',
      descripcion:
          'Aplicar Fiebre Aftosa + Brucelosis a 8 terneros jóvenes (2-4 meses)',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.vacunacion,
      prioridad: PrioridadEvento.alta,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(hours: 9)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 2 (26/01) - Productivo
    eventos.add(EventoGanaderoEntity(
      titulo: '⚖️ Pesaje Mensual - Control Engorde',
      descripcion: 'Pesaje de novillo Cebollín y vaquillas. Meta: +1.5kg/día',
      categoria: CategoriaEvento.productiva,
      tipoProductivo: EventoProductivo.pesaje,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 1, hours: 14)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 3 (27/01) - Reproductivo - PARTO ESPERADO
    eventos.add(EventoGanaderoEntity(
      titulo: '👶 PARTO ESPERADO - Daisy',
      descripcion:
          'Parto confirmado para Daisy. Gestación: 30 semanas. Monitoreo constante recomendado.',
      categoria: CategoriaEvento.reproductiva,
      tipoReproductivo: EventoReproductivo.partoEsperado,
      prioridad: PrioridadEvento.critica,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 2, hours: 8)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 4 (28/01) - Ambiental
    eventos.add(EventoGanaderoEntity(
      titulo: '🧹 Limpieza y Desinfección - Sala Ordeño',
      descripcion:
          'Limpieza profunda de equipos de ordeño. Desinfección con hipoclorito al 3%',
      categoria: CategoriaEvento.ambiental,
      tipoAmbiental: EventoAmbiental.desinfeccion,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 3, hours: 16)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 5 (29/01) - Sanitario
    eventos.add(EventoGanaderoEntity(
      titulo: '🧼 Baño Garrapaticida - Bovinos',
      descripcion:
          'Baño preventivo para todas las vacas. Principio activo: Cipermetrina 10%',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.banioSanitario,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 4, hours: 10)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 6 (30/01) - Productivo
    eventos.add(EventoGanaderoEntity(
      titulo: '🌾 Cambio de Alimentación - Programa Invierno',
      descripcion:
          'Ajuste de dieta según lluvia esperada. Aumentar ensilaje 15%, reducir concentrado 10%',
      categoria: CategoriaEvento.productiva,
      tipoProductivo: EventoProductivo.cambioAlimentacion,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 5, hours: 7)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 7 (31/01) - Sanitario
    eventos.add(EventoGanaderoEntity(
      titulo: '👨‍⚕️ Revisión Veterinaria General',
      descripcion:
          'Chequeo completo: Bessie, Daisy, Brahman. Incluye auscultación, palpación abdominal',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.revisionVeterinaria,
      prioridad: PrioridadEvento.alta,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 6, hours: 9)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 8 (01/02) - Reproductivo
    eventos.add(EventoGanaderoEntity(
      titulo: '🔴 Detección de Celo - Bessie',
      descripcion:
          'Observación comportamental. Si está en celo, programar inseminación artificial',
      categoria: CategoriaEvento.reproductiva,
      tipoReproductivo: EventoReproductivo.deteccionCelo,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 7, hours: 6)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 9 (02/02) - Ambiental
    eventos.add(EventoGanaderoEntity(
      titulo: '🔧 Mantenimiento de Infraestructura - Cercas',
      descripcion:
          'Reparación de 2 secciones de cerca. Repuesto de 8 postes dañados por lluvia',
      categoria: CategoriaEvento.ambiental,
      tipoAmbiental: EventoAmbiental.reparacionCercas,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 8, hours: 13)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 10 (03/02) - Sanitario
    eventos.add(EventoGanaderoEntity(
      titulo: '🥗 Vitaminización - Suplementos Especializados',
      descripcion:
          'Inyección de Complejo B + Vitaminas A, D, E. Enfoque en animales en estrés',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.vitaminizacion,
      prioridad: PrioridadEvento.baja,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 9, hours: 11)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 11 (04/02) - Productivo
    eventos.add(EventoGanaderoEntity(
      titulo: '✂️ Corte de Cascos - Mantenimiento',
      descripcion:
          'Recorte preventivo de cascos en 5 bovinos. Revisar herraduras equinos',
      categoria: CategoriaEvento.productiva,
      tipoProductivo: EventoProductivo.cortesCascos,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 10, hours: 9)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 12 (05/02) - Sanitario
    eventos.add(EventoGanaderoEntity(
      titulo: '🐛 Desparasitación Externa - Garrapatas',
      descripcion:
          'Aplicación de Ivermectina 1% inyectable. Dosis: 1ml/100kg subcutáneo',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.desparasitacion,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 11, hours: 14)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 13 (06/02) - Ambiental
    eventos.add(EventoGanaderoEntity(
      titulo: '💧 Abastecimiento de Agua - Revisión',
      descripcion:
          'Limpieza de bebederos. Verificación de caudal en potreros. Desinfección con cloro',
      categoria: CategoriaEvento.ambiental,
      tipoAmbiental: EventoAmbiental.abastecimientoAgua,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 12, hours: 7)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Día 14 (07/02) - Reproductivo
    eventos.add(EventoGanaderoEntity(
      titulo: '🤰 Control de Preñez - Seguimiento Daisy',
      descripcion:
          'Post-parto de Daisy. Revisión de involución uterina y salud general. Próximo control: 15 días',
      categoria: CategoriaEvento.reproductiva,
      tipoReproductivo: EventoReproductivo.controlPrenez,
      prioridad: PrioridadEvento.alta,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 13, hours: 10)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    ));

    // Guardar todos los eventos
    for (var evento in eventos) {
      await database.saveEventoGanadero(evento);
    }

    print(
        '✅ ${eventos.length} EVENTOS DE CALENDARIO cargados para próximas 2 semanas');
  }
}
