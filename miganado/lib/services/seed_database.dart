import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

/// Servicio para cargar datos de ejemplo en la BD Isar
/// SEED EXPANDIDO: 12 animales de diferentes especies y 16 eventos de mantenimiento
class SeedDatabase {
  /// Calcula edad en meses desde una fecha de nacimiento
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
    // Verificar si ya hay datos
    final allAnimales = await database.getAllAnimales();
    if (allAnimales.isNotEmpty) {
      print('âœ“ Base de datos ya contiene datos, seed omitido');
      return; // Ya hay datos, no hacer seed
    }

    print('ðŸŒ± Iniciando seed de base de datos con datos corregidos...');

    // Agregar ganadero de ejemplo
    final ganadero = GanaderoEntity(
      nombre: 'Carlos LÃ³pez Mendez',
      telefono: '(+57) 315 654 3210',
      correo: 'carlos@haciendaelporvenir.com',
      ubicacion: 'Vereda El Porvenir, Municipio de UbatÃ©, Cundinamarca',
      notas:
          'Ganadero con 15 aÃ±os de experiencia en producciÃ³n lechera. ProducciÃ³n diaria de 150L aprox.',
      cantidadAnimales: 12,
      tipoProduccion: 'Lechero',
    );
    await database.saveGanadero(ganadero);

    // ============ ANIMALES DE EJEMPLO ============
    // ANIMAL 1: Vaca lechera adulta en producciÃ³n (4 aÃ±os)
    final nacBessie = DateTime(2021, 3, 15); // Hace ~4 aÃ±os
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
          'Excelente lechera, producciÃ³n de 28L/dÃ­a. Pedigree Holstein puro.',
      purchasePrice: 3500000,
      salePrice: 5500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 90)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.lactating,
    );

    // ANIMAL 2: Vaca lechera adulta gestante (5 aÃ±os)
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
          'Jersey de excelente calidad lechera. Leche con alto contenido de grasa (5.8%). PrÃ³ximo parto en 30 dÃ­as.',
      purchasePrice: 2800000,
      salePrice: 4500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 120)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.pregnant,
    );

    // ANIMAL 3: Toro reproductor adulto (6+ aÃ±os)
    final nacBrahman = DateTime(2018, 11, 5);
    final animal3 = AnimalEntity(
      earTagNumber: 'BRH-003',
      customName: 'Brahman Negro',
      species: Species.cattle,
      category: Category.bull,
      sex: Sex.male,
      breed: 'Brahman',
      birthDate: nacBrahman,
      ageMonths: _calcularEdadMeses(nacBrahman),
      isCastrated: false,
      notes:
          'Toro reproductor certificado. Excelente genÃ©tica. Padre de 45+ crÃ­as. Resistente al calor y garrapatas.',
      purchasePrice: 8000000,
      salePrice: 12000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 150)),
      vaccineType: 'Fiebre aftosa + Brucelosis + Rinotraqueitis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 30)),
      dewormerType: 'Ivermectina Plus',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 25)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 4: Vaquilla joven lista para primera monta (23 meses)
    final nacValentina = DateTime(2023, 2, 10);
    final animal4 = AnimalEntity(
      earTagNumber: 'VQA-004',
      customName: 'Valentina',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Guernsey',
      birthDate: nacValentina,
      ageMonths: _calcularEdadMeses(nacValentina),
      isCastrated: false,
      notes:
          'Vaquilla joven de excelente conformaciÃ³n. Peso actual 380kg. Lista para primera monta en 1 mes.',
      purchasePrice: 1800000,
      salePrice: 3200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 60)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: false,
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 40)),
      reproductiveStatus: ReproductiveStatus.virgin,
    );

    // ANIMAL 5: Novillo para engorde (17 meses, castrado)
    final nacCebollin = DateTime(2023, 8, 20);
    final animal5 = AnimalEntity(
      earTagNumber: 'CEL-005',
      customName: 'CebollÃ­n',
      species: Species.cattle,
      category: Category.bull,
      sex: Sex.male,
      breed: 'CebÃº Rojo',
      birthDate: nacCebollin,
      ageMonths: _calcularEdadMeses(nacCebollin),
      isCastrated: true, // Castrado para engorde
      notes:
          'Novillo castrado en excelente estado. Programa de engorde intensivo. Ganancia diaria: 1.2kg',
      purchasePrice: 1400000,
      salePrice: 2600000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 75)),
      vaccineType: 'Fiebre aftosa',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 35)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 15)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 6: Becerro reciÃ©n nacido (3-4 meses)
    final nacBenji =
        DateTime.now().subtract(const Duration(days: 105)); // ~3.5 meses
    final animal6 = AnimalEntity(
      earTagNumber: 'BEC-006',
      customName: 'Benji',
      species: Species.cattle,
      category: Category.bull,
      sex: Sex.male,
      breed: 'Holstein',
      birthDate: nacBenji,
      ageMonths: _calcularEdadMeses(nacBenji),
      isCastrated: false,
      notes:
          'Becerro reciÃ©n nacido, hijo de Bessie. Peso al nacer: 42kg. AlimentaciÃ³n con calostro materno.',
      purchasePrice: 0,
      salePrice: null,
      vaccinated: false,
      dewormed: false,
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 7: Caballo equino para diversificacion (4-5 anos)
    final nacAlcazar = DateTime(2020, 5, 10);
    final animal7 = AnimalEntity(
      earTagNumber: 'CAB-007',
      customName: 'Alcazar',
      species: Species.equine,
      category: Category.horse,
      sex: Sex.male,
      breed: 'Criollo Colombiano',
      birthDate: nacAlcazar,
      ageMonths: _calcularEdadMeses(nacAlcazar),
      isCastrated: true,
      notes:
          'Caballo de trabajo, temperamento docil. Utilizado para labores en el campo y transporte de carga.',
      purchasePrice: 2000000,
      salePrice: 3500000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 200)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 40)),
      dewormerType: 'Ivermectina Equina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 35)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 8: Vaca lechera en seca (7 anos)
    final nacMilady = DateTime(2017, 9, 18);
    final animal8 = AnimalEntity(
      earTagNumber: 'MLD-008',
      customName: 'Milady',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Brown Swiss',
      birthDate: nacMilady,
      ageMonths: _calcularEdadMeses(nacMilady),
      isCastrated: false,
      notes:
          'Vaca de raza Brown Swiss, actualmente en periodo seco. Periodo de descanso lactacional. Proximo parto en 45 dias.',
      purchasePrice: 3200000,
      salePrice: 5000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 180)),
      vaccineType: 'Fiebre aftosa + Brucelosis',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Levamisol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 30)),
      reproductiveStatus: ReproductiveStatus.empty,
    );

    // ANIMAL 9: Ternera crecimiento (8-10 meses)
    final nacPrincesa = DateTime(2024, 6, 5);
    final animal9 = AnimalEntity(
      earTagNumber: 'PRI-009',
      customName: 'Princesa',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Jersey',
      birthDate: nacPrincesa,
      ageMonths: _calcularEdadMeses(nacPrincesa),
      isCastrated: false,
      notes:
          'Ternera jersey en fase de crecimiento. Destete completado. Desarrollo normal. Peso: 120kg',
      purchasePrice: 500000,
      salePrice: 1200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 45)),
      vaccineType: 'Fiebre aftosa',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 25)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 10)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 10: Mula de trabajo (6 anos)
    final nacMarcela = DateTime(2019, 12, 3);
    final animal10 = AnimalEntity(
      earTagNumber: 'MUL-010',
      customName: 'Marcela',
      species: Species.equine,
      category: Category.mule,
      sex: Sex.female,
      breed: 'Mula de trabajo',
      birthDate: nacMarcela,
      ageMonths: _calcularEdadMeses(nacMarcela),
      isCastrated: false,
      notes:
          'Mula de trabajo, robusta y resistente. Utilizada para transporte en terrenos dificiles. Excelente temperamento.',
      purchasePrice: 1200000,
      salePrice: 2200000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 120)),
      vaccineType: 'Encefalitis Equina',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 50)),
      dewormerType: 'Ivermectina Equina',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 40)),
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 11: Burro/Asno para trabajo (5 anos)
    final nacJavier = DateTime(2020, 4, 15);
    final animal11 = AnimalEntity(
      earTagNumber: 'BUR-011',
      customName: 'Javier',
      species: Species.equine,
      category: Category.donkey,
      sex: Sex.male,
      breed: 'Asno Colombiano',
      birthDate: nacJavier,
      ageMonths: _calcularEdadMeses(nacJavier),
      isCastrated: true,
      notes:
          'Burro castrado, resistente y economico. Ideal para labores agricolas. Temperamento tranquilo y docil.',
      purchasePrice: 600000,
      salePrice: 1100000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 160)),
      vaccineType: 'Tetanos',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 45)),
      dewormerType: 'Ivermectina',
      hasVitamins: false,
      reproductiveStatus: ReproductiveStatus.undefined,
    );

    // ANIMAL 12: Novilla embarazada (2.5 anos)
    final nacSofia = DateTime(2022, 9, 8);
    final animal12 = AnimalEntity(
      earTagNumber: 'SOF-012',
      customName: 'Sofia',
      species: Species.cattle,
      category: Category.cow,
      sex: Sex.female,
      breed: 'Simmental',
      birthDate: nacSofia,
      ageMonths: _calcularEdadMeses(nacSofia),
      isCastrated: false,
      notes:
          'Novilla Simmental en primer embarazo. Preñez confirmada a 6 meses de gestacion. Parto esperado en 90 dias. Peso: 450kg',
      purchasePrice: 2100000,
      salePrice: 4000000,
      vaccinated: true,
      lastVaccinationDate: DateTime.now().subtract(const Duration(days: 140)),
      vaccineType: 'Fiebre aftosa + Brucelosis + Clostridios',
      dewormed: true,
      lastDewormingDate: DateTime.now().subtract(const Duration(days: 60)),
      dewormerType: 'Albendazol',
      hasVitamins: true,
      lastVitaminDate: DateTime.now().subtract(const Duration(days: 20)),
      reproductiveStatus: ReproductiveStatus.pregnant,
    );

    // ============ GUARDAR ANIMALES ============
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
    print('✓ 12 animales de ejemplo creados:');
    print(
        '  • 8 Bovinos (4 vacas adultas, 2 vaquillas/terneras, 1 toro, 1 novillo)');
    print('  • 3 Equinos (1 caballo, 1 mula, 1 burro)');
    print('  • Variedad de edad y estados reproductivos');

    // ============ EVENTOS DE MANTENIMIENTO SANITARIO ============

    // Vacunaciones
    final evento1 = EventoMantenimientoEntity(
      animalUuid: animal1.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'VacunaciÃ³n contra Fiebre Aftosa y Brucelosis',
      fecha: DateTime.now().subtract(const Duration(days: 90)),
      proximaFecha: DateTime.now().add(const Duration(days: 270)),
      proximaDosis: DateTime.now().add(const Duration(days: 270)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: 'Vacuna Fiebre Aftosa + Brucelosis (inactiva)',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular regiÃ³n glÃºtea',
      observaciones: 'Aplicada correctamente, animal sin reacciÃ³n adversa',
    );

    final evento2 = EventoMantenimientoEntity(
      animalUuid: animal2.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'VacunaciÃ³n preventiva preparto',
      fecha: DateTime.now().subtract(const Duration(days: 120)),
      proximaFecha: DateTime.now().add(const Duration(days: 240)),
      proximaDosis: DateTime.now().add(const Duration(days: 240)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: 'Vacuna Fiebre Aftosa + Brucelosis + Clostridios',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'VacunaciÃ³n preventiva antes del parto para inmunidad pasiva del becerro',
    );

    // Desparasitaciones
    final evento4 = EventoMantenimientoEntity(
      animalUuid: animal5.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitacion preprogramada Novillo',
      fecha: DateTime.now().subtract(const Duration(days: 35)),
      proximaFecha: DateTime.now().add(const Duration(days: 145)),
      proximaDosis: DateTime.now().add(const Duration(days: 145)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Albendazol 10%',
      dosisAplicada: '10ml oral (7.5mg/kg)',
      rutaAplicacion: 'Oral via esofago',
      observaciones:
          'Novillo en buen estado, sin sintomas gastrointestinales. Programa de engorde normal.',
    );

    // Control veterinario
    final evento5 = EventoMantenimientoEntity(
      animalUuid: animal2.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Chequeo de gestaciÃ³n y evaluaciÃ³n general',
      fecha: DateTime.now().subtract(const Duration(days: 30)),
      proximaFecha: DateTime.now().add(const Duration(days: 10)),
      proximaDosis: DateTime.now().add(const Duration(days: 10)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: null,
      dosisAplicada: null,
      rutaAplicacion: null,
      observaciones:
          'GestaciÃ³n confirmada. Parto esperado en 20-25 dÃ­as. PreparaciÃ³n de Ã¡rea de maternidad.',
    );

    // Vitaminas y suplementos
    final evento6 = EventoMantenimientoEntity(
      animalUuid: animal3.uuid,
      tipo: TipoEventoMantenimiento.vitaminas,
      descripcion: 'SuplementaciÃ³n de Vitaminas A, D, E',
      fecha: DateTime.now().subtract(const Duration(days: 25)),
      proximaFecha: DateTime.now().add(const Duration(days: 85)),
      proximaDosis: DateTime.now().add(const Duration(days: 85)),
      veterinario: 'Carlos LÃ³pez',
      medicamento: 'Complejo VitamÃ­nico A-D-E inyectable',
      dosisAplicada: '5ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'Toro reproductor requiere nivel Ã³ptimo de vitaminas para fertilidad. PrÃ³xima dosis en 90 dÃ­as.',
    );

    // Tratamiento
    final evento7 = EventoMantenimientoEntity(
      animalUuid: animal6.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Monitoreo de salud neonatal - Becerro',
      fecha: DateTime.now().subtract(const Duration(days: 5)),
      proximaFecha: DateTime.now().add(const Duration(days: 10)),
      proximaDosis: DateTime.now().add(const Duration(days: 10)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Aplicacion de yodo en cordon umbilical',
      dosisAplicada: '10ml',
      rutaAplicacion: 'Topica en cordon umbilical',
      observaciones:
          'Becerro nacido hace 5 dias, madre Bessie. Alimentacion con calostro materno correcta. Proximo chequeo a los 10 dias.',
    );

    // Eventos adicionales para nuevos animales
    final evento2b = EventoMantenimientoEntity(
      animalUuid: animal8.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'Vacunacion de refuerzo - Periodo seco',
      fecha: DateTime.now().subtract(const Duration(days: 180)),
      proximaFecha: DateTime.now().add(const Duration(days: 180)),
      proximaDosis: DateTime.now().add(const Duration(days: 180)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: 'Vacuna Fiebre aftosa + Brucelosis',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'Refuerzo vacunal durante periodo seco para mantener proteccion antes del proximo parto',
    );

    final evento3b = EventoMantenimientoEntity(
      animalUuid: animal7.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'Vacunacion anual Caballo - Encefalitis Equina',
      fecha: DateTime.now().subtract(const Duration(days: 200)),
      proximaFecha: DateTime.now().add(const Duration(days: 160)),
      proximaDosis: DateTime.now().add(const Duration(days: 160)),
      veterinario: 'Dr. Veterinario Equino',
      medicamento: 'Vacuna Encefalitis Equina',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular cuello',
      observaciones:
          'Vacunacion anual de refuerzo, animal sin efectos adversos',
    );

    final evento5b = EventoMantenimientoEntity(
      animalUuid: animal9.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitacion ternera post-destete',
      fecha: DateTime.now().subtract(const Duration(days: 25)),
      proximaFecha: DateTime.now().add(const Duration(days: 155)),
      proximaDosis: DateTime.now().add(const Duration(days: 155)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Albendazol 10%',
      dosisAplicada: '3ml oral',
      rutaAplicacion: 'Oral via esofago',
      observaciones:
          'Desparasitacion post-destete. Ternera en buen estado general. Ganancia de peso normal.',
    );

    final evento5c = EventoMantenimientoEntity(
      animalUuid: animal10.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitacion Mula - Ivermectina Equina',
      fecha: DateTime.now().subtract(const Duration(days: 50)),
      proximaFecha: DateTime.now().add(const Duration(days: 190)),
      proximaDosis: DateTime.now().add(const Duration(days: 190)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Ivermectina Equina 1%',
      dosisAplicada: '1.7ml IV (1mg/kg)',
      rutaAplicacion: 'Via esofago',
      observaciones:
          'Mula en buena condicion fisica. Programa de desparasitacion cada 6 meses.',
    );

    final evento6b = EventoMantenimientoEntity(
      animalUuid: animal12.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Ecografia de gestacion - Novilla Sofia',
      fecha: DateTime.now().subtract(const Duration(days: 60)),
      proximaFecha: DateTime.now().add(const Duration(days: 30)),
      proximaDosis: DateTime.now().add(const Duration(days: 30)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: null,
      dosisAplicada: null,
      rutaAplicacion: null,
      observaciones:
          'Ecografia confirmo gestacion de 6 meses. Feto en posicion normal. Preparacion pre-parto en curso.',
    );

    final evento6c = EventoMantenimientoEntity(
      animalUuid: animal8.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Evaluacion pre-parto - Vaca Milady',
      fecha: DateTime.now().subtract(const Duration(days: 15)),
      proximaFecha: DateTime.now().add(const Duration(days: 30)),
      proximaDosis: DateTime.now().add(const Duration(days: 30)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: null,
      dosisAplicada: null,
      rutaAplicacion: null,
      observaciones:
          'Vaca en optimas condiciones pre-parto. Edema de ubre presente. Proximo chequeo en 1 semana.',
    );

    final evento7b = EventoMantenimientoEntity(
      animalUuid: animal1.uuid,
      tipo: TipoEventoMantenimiento.vitaminas,
      descripcion: 'Suplementacion vitaminica - Vaca Bessie',
      fecha: DateTime.now().subtract(const Duration(days: 20)),
      proximaFecha: DateTime.now().add(const Duration(days: 70)),
      proximaDosis: DateTime.now().add(const Duration(days: 70)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Complejo Vitaminico B-Selenio',
      dosisAplicada: '10ml IV',
      rutaAplicacion: 'Intravenosa',
      observaciones:
          'Suplementacion de selenio y vitaminas del complejo B para mejorar productividad lactea.',
    );

    final evento8 = EventoMantenimientoEntity(
      animalUuid: animal6.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Monitoreo de salud neonatal - Becerro',
      fecha: DateTime.now().subtract(const Duration(days: 5)),
      proximaFecha: DateTime.now().add(const Duration(days: 10)),
      proximaDosis: DateTime.now().add(const Duration(days: 10)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Aplicacion de yodo en cordon umbilical',
      dosisAplicada: '10ml',
      rutaAplicacion: 'Topica en cordon umbilical',
      observaciones:
          'Becerro nacido hace 5 dias, madre Bessie. Alimentacion con calostro materno correcta. Proximo chequeo a los 10 dias.',
    );

    final evento9 = EventoMantenimientoEntity(
      animalUuid: animal4.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitacion pre-empadre - Vaquilla Valentina',
      fecha: DateTime.now().subtract(const Duration(days: 70)),
      proximaFecha: DateTime.now().add(const Duration(days: 110)),
      proximaDosis: DateTime.now().add(const Duration(days: 110)),
      veterinario: 'Carlos Lopez',
      medicamento: 'Ivermectina 1% inyectable',
      dosisAplicada: '3ml IM',
      rutaAplicacion: 'Subcutanea',
      observaciones:
          'Desparasitacion preventiva antes de la primera monta. Vaquilla en excelente condicion.',
    );

    final evento10 = EventoMantenimientoEntity(
      animalUuid: animal11.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'Vacunacion Tetanos - Burro Javier',
      fecha: DateTime.now().subtract(const Duration(days: 160)),
      proximaFecha: DateTime.now().add(const Duration(days: 200)),
      proximaDosis: DateTime.now().add(const Duration(days: 200)),
      veterinario: 'Veterinario Local',
      medicamento: 'Antitoxina Tetanica',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'Vacunacion de tetanos. Proteccion importante para animales de carga y trabajo.',
    );

    await database.saveEvento(evento1);
    await database.saveEvento(evento2);
    await database.saveEvento(evento2b);
    await database.saveEvento(evento3b);
    await database.saveEvento(evento4);
    await database.saveEvento(evento5);
    await database.saveEvento(evento5b);
    await database.saveEvento(evento5c);
    await database.saveEvento(evento6);
    await database.saveEvento(evento6b);
    await database.saveEvento(evento6c);
    await database.saveEvento(evento7);
    await database.saveEvento(evento7b);
    await database.saveEvento(evento8);
    await database.saveEvento(evento9);
    await database.saveEvento(evento10);

    print('✓ 16 eventos de mantenimiento sanitario creados:');
    print('  • 4 Vacunaciones');
    print('  • 5 Desparasitaciones');
    print('  • 4 Controles veterinarios');
    print('  • 2 Suplementaciones vitaminicas');
    print('  • 1 Monitoreo neonatal');

    print('✅ Seed completado exitosamente con 12 animales y 16 eventos');
  }
}
