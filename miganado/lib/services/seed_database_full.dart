import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/data/models/pesaje_entity.dart';
import 'package:miganado/features/animals/data/models/reproductivo_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/costs/data/models/costo_entity.dart';

/// Seed completo y detallado para MiGanado con datos visualización RICA
/// Incluye: 12 animales variados + historiales completos de todas las acciones
class SeedDatabaseFull {
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
      print('✓ Base de datos ya contiene datos, seed omitido');
      return; // Ya hay datos, no hacer seed
    }

    print('🌱 Iniciando SEED COMPLETO con datos visualización RICA...');

    // ============ GANADERO ============
    final ganadero = GanaderoEntity(
      nombre: 'Hacienda El Porvenir - Carlos López',
      telefono: '(+57) 315 654 3210',
      email: 'carlos@haciendaelporvenir.com',
      ubicacion:
          'Vereda El Porvenir, Municipio de Ubaté, Cundinamarca, Colombia',
      notas:
          'Ganadería de producción lechera de alto nivel con 15 años de experiencia. Producción diaria: 400L. 4 ordeños diarios en 2 salas de ordeño. Especialización en genética Holstein y Jersey. Programa de mejoramiento continuo.',
      cantidadAnimales: 50,
      tipoProduccion: 'Lechero Especializado',
    );
    await database.saveGanadero(ganadero);

    // ============ 12 ANIMALES DE EJEMPLO ============

    // GRUPO 1: VACAS LECHERAS EN PRODUCCIÓN (3 animales)
    final nacBessie = DateTime(2020, 3, 15);
    final animal1 = AnimalEntity(
      numeroArete: 'BES-001',
      nombrePersonalizado: 'Bessie',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Holstein',
      fechaNacimiento: nacBessie,
      edadMeses: _calcularEdadMeses(nacBessie),
      esCastrado: false,
      notas:
          'ESTRELLA DE LA HACIENDA. Vaca lechera campeona. Producción: 32L/día, grasa 3.2%, proteína 3.1%. Lactancias acumuladas: 5. Índice somatocitos: 180mil/ml (excelente). Premio Nacional Ganadería 2024.',
      precioCompra: 4500000,
      precioVenta: 7500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 90)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis + Mastitis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 30)),
      tipoDesparasitante: 'Ivermectina Plus Doramectina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 10)),
      estadoReproductivo: EstadoReproductivo.lactando,
    );

    final nacDaisy = DateTime(2019, 7, 22);
    final animal2 = AnimalEntity(
      numeroArete: 'DAI-002',
      nombrePersonalizado: 'Daisy',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Jersey',
      fechaNacimiento: nacDaisy,
      edadMeses: _calcularEdadMeses(nacDaisy),
      esCastrado: false,
      notas:
          'Jersey de excelente calidad. Leche premium: grasa 5.8%, proteína 3.5%. Especia en quesería artesanal. Próximo parto 25 de Enero.',
      precioCompra: 3200000,
      precioVenta: 5200000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 120)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis + Rinotraqueitis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 50)),
      tipoDesparasitante: 'Albendazol 10%',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 15)),
      estadoReproductivo: EstadoReproductivo.prenada,
    );

    final nacIsabella = DateTime(2021, 9, 5);
    final animal3 = AnimalEntity(
      numeroArete: 'ISA-003',
      nombrePersonalizado: 'Isabella',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Guernsey',
      fechaNacimiento: nacIsabella,
      edadMeses: _calcularEdadMeses(nacIsabella),
      esCastrado: false,
      notas:
          'Guernsey de producción dual. Buena musculatura (apta también para carne). Producción actual: 26L/día. Leche color dorado característico. Futura reproductora.',
      precioCompra: 2800000,
      precioVenta: 4800000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 75)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 40)),
      tipoDesparasitante: 'Ivermectina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 20)),
      estadoReproductivo: EstadoReproductivo.seca,
    );

    // GRUPO 2: TOROS Y MACHOS (2 animales)
    final nacBrahman = DateTime(2018, 11, 5);
    final animal4 = AnimalEntity(
      numeroArete: 'BRH-004',
      nombrePersonalizado: 'Brahman Negro',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Brahman',
      fechaNacimiento: nacBrahman,
      edadMeses: _calcularEdadMeses(nacBrahman),
      esCastrado: false,
      notas:
          'REPRODUCTOR ELITE. Toro certificado por Asociación. Genética premium Brahman Negro. Padre de 85 crías con excelentes características. Resistencia genética a garrapatas y enfermedades. Evaluación genómica: 2.5/5.0. Producción leche en hijas: +15%.',
      precioCompra: 12000000,
      precioVenta: 18000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 150)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis + Rinotraqueitis + IBR',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 25)),
      tipoDesparasitante: 'Ivermectina Plus',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 20)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    final nacCebollin = DateTime(2023, 8, 20);
    final animal5 = AnimalEntity(
      numeroArete: 'CEL-005',
      nombrePersonalizado: 'Cebollín',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Cebú Rojo',
      fechaNacimiento: nacCebollin,
      edadMeses: _calcularEdadMeses(nacCebollin),
      esCastrado: true,
      notas:
          'Novillo Cebú castrado para ENGORDE ESPECIALIZADO. Ganancia diaria de peso: 1.5kg. Peso meta: 500kg. Dieta: pastura mejorada + suplemento concentrado 4kg/día. Marbling: grado 5/10. Proyecto: exportación carnes premium.',
      precioCompra: 1800000,
      precioVenta: 3500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 60)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 25)),
      tipoDesparasitante: 'Albendazol',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 15)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // GRUPO 3: VAQUILLAS JÓVENES (2 animales)
    final nacValentina = DateTime(2023, 8, 10);
    final animal6 = AnimalEntity(
      numeroArete: 'VQA-006',
      nombrePersonalizado: 'Valentina',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Holstein',
      fechaNacimiento: nacValentina,
      edadMeses: _calcularEdadMeses(nacValentina),
      esCastrado: false,
      notas:
          'Vaquilla Holstein joven en desarrollo. Peso: 350kg (objetivo: 450kg). Conformación excelente: ángulos correctos, ubres bien insertadas. Evaluación predial genómica: APH +25 (lechería). Futura reproductora elite.',
      precioCompra: 2200000,
      precioVenta: 4000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 80)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: false,
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 30)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    final nacSofia = DateTime(2023, 10, 20);
    final animal7 = AnimalEntity(
      numeroArete: 'SOF-007',
      nombrePersonalizado: 'Sofía',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Jersey',
      fechaNacimiento: nacSofia,
      edadMeses: _calcularEdadMeses(nacSofia),
      esCastrado: false,
      notas:
          'Vaquilla Jersey en crecimiento. Peso: 240kg. Genealogía premium: hija de "Blue Chip Jersey". Promedio producción esperada: 24L/día con grasa 5.5%. Seguimiento nutricional especial.',
      precioCompra: 1900000,
      precioVenta: 3500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 100)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: false,
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 45)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // GRUPO 4: BECERROS (2 animales)
    final nacBenji = DateTime.now().subtract(Duration(days: 105));
    final animal8 = AnimalEntity(
      numeroArete: 'BEC-008',
      nombrePersonalizado: 'Benji',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Holstein',
      fechaNacimiento: nacBenji,
      edadMeses: _calcularEdadMeses(nacBenji),
      esCastrado: false,
      notas:
          'Becerro Holstein recién nacido (3.5 meses). Peso actual: 145kg. Madre: Bessie. Peso al nacimiento: 42kg. Crianza: calostro materno + suplemento lácteo especializado 6L/día. Destete programado: 4 meses. Salud: excelente, sin patologías.',
      precioCompra: 0,
      precioVenta: null,
      vacunado: false,
      desparasitado: false,
      tieneVitaminas: false,
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    final nacLuna = DateTime.now().subtract(Duration(days: 45));
    final animal9 = AnimalEntity(
      numeroArete: 'LUN-009',
      nombrePersonalizado: 'Luna',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Jersey',
      fechaNacimiento: nacLuna,
      edadMeses: _calcularEdadMeses(nacLuna),
      esCastrado: false,
      notas:
          'Becerra Jersey nacida hace 45 días. Peso: 85kg. Madre: Daisy. Alimentación: suero de leche + concentrado especializado. Destete: 2.5 meses. Futuro: posible reproductora o venta.',
      precioCompra: 0,
      precioVenta: null,
      vacunado: false,
      desparasitado: false,
      tieneVitaminas: false,
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // GRUPO 5: EQUINOS (2 animales)
    final nacAlcazar = DateTime(2020, 5, 10);
    final animal10 = AnimalEntity(
      numeroArete: 'CAB-010',
      nombrePersonalizado: 'Alcázar',
      especie: Especie.equino,
      categoria: Categoria.caballo,
      sexo: Sexo.macho,
      raza: 'Criollo Colombiano',
      fechaNacimiento: nacAlcazar,
      edadMeses: _calcularEdadMeses(nacAlcazar),
      esCastrado: true,
      notas:
          'Caballo de trabajo versátil. Temperamento: extremadamente dócil. Entrenamiento: labores agrícolas, transporte de carga (400kg), paseos recreativos. Salud: excelente, sin vicio alguno. Valor estratégico en operaciones ganadería.',
      precioCompra: 2500000,
      precioVenta: 4000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 180)),
      tipoVacuna: 'Encefalitis Equina (EEV) + Influenza Equina',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 45)),
      tipoDesparasitante: 'Ivermectina Equina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 30)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    final nacCatalina = DateTime(2022, 3, 8);
    final animal11 = AnimalEntity(
      numeroArete: 'CAT-011',
      nombrePersonalizado: 'Catalina',
      especie: Especie.equino,
      categoria: Categoria.caballo,
      sexo: Sexo.hembra,
      raza: 'Caballo Pura Sangre Criollo',
      fechaNacimiento: nacCatalina,
      edadMeses: _calcularEdadMeses(nacCatalina),
      esCastrado: false,
      notas:
          'Yegua reproductora de excelente pedigree. Potencial genético alto. Capacidad atlética: carrera distancia media. Apariencia: musculatura definida, conformación ideal. Proyecto futuro: línea de cría especializada en caballos de trabajo.',
      precioCompra: 3500000,
      precioVenta: 5500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 160)),
      tipoVacuna: 'Encefalitis Equina',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 50)),
      tipoDesparasitante: 'Ivermectina Plus',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 25)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // GRUPO 6: ANIMAL ESPECIAL (1 animal)
    final nacMarcos = DateTime(2022, 6, 15);
    final animal12 = AnimalEntity(
      numeroArete: 'MAR-012',
      nombrePersonalizado: 'Marcos',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Suizo Lechero',
      fechaNacimiento: nacMarcos,
      edadMeses: _calcularEdadMeses(nacMarcos),
      esCastrado: false,
      notas:
          'Suizo Lechero torete en desarrollo (19 meses). Excelente conformación para reproductor. Genética suiza premium importada. Evaluación: Tipo +35, Lechería +28. Futura: Reproductor elite o exportación (USA/Canadá).',
      precioCompra: 5500000,
      precioVenta: 9000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 110)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis + IBR',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 35)),
      tipoDesparasitante: 'Albendazol Plus',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 18)),
      estadoReproductivo: EstadoReproductivo.no_definido,
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
        fecha: DateTime.now().subtract(Duration(days: 240)),
        notas: 'Peso inicial año anterior',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 635.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 180)),
        notas: 'Buen incremento estacional',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 650.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 120)),
        notas: 'Peso en pico de lactancia',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 658.5,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 60)),
        notas: 'Máximo peso en ciclo actual',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 660.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 30)),
        notas: 'Estable en peso, buena condición corporal',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 662.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 15)),
        notas: 'Ganancia controlada, nutrición optimizada',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal1.uuid,
        peso: 665.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 150)),
        notas: 'Peso post-lactancia',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 565.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 120)),
        notas: 'Inicio de gestación confirmado',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 580.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 90)),
        notas: 'Ganancia normal gestación',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 595.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 45)),
        notas: 'Tercer trimestre: ganancia acelerada',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal2.uuid,
        peso: 608.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 100)),
        notas: 'Peso inicio período seco',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 495.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 60)),
        notas: 'Recuperación corporal en período seco',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 510.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 30)),
        notas: 'Ganancia sostenida, reposo metabólico',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal3.uuid,
        peso: 520.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 180)),
        notas: 'Peso inicio programa engorde',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 278.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 150)),
        notas: 'Ganancia: 1.27kg/día. Excelente',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 315.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 120)),
        notas: 'Ganancia acelerada. Ajuste nutricional exitoso',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 352.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 90)),
        notas: 'Ganancia sostenida: 1.23kg/día',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 388.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 60)),
        notas: 'Marbling aumenta. Proyección: 500kg en 60 días',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 425.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 30)),
        notas: 'En meta. Ganancia: 1.17kg/día. Calidad: premium',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal5.uuid,
        peso: 460.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 120)),
        notas: 'Peso mantenimiento reproductor',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal4.uuid,
        peso: 885.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 60)),
        notas: 'Peso estable, musculatura óptima',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal4.uuid,
        peso: 890.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 120)),
        notas: 'Peso inicio seguimiento vaquilla',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal6.uuid,
        peso: 320.0,
        unidad: 'kg',
        fecha: DateTime.now().subtract(Duration(days: 60)),
        notas: 'Crecimiento normal. Ganancia: 0.67kg/día',
        registradoPor: 'Juan',
      ),
      PesajeEntity(
        animalUuid: animal6.uuid,
        peso: 350.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 90)),
        notas: 'Peso inicio seguimiento',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal7.uuid,
        peso: 240.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 90)),
        notas: 'Peso caballo en trabajo',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal10.uuid,
        peso: 490.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 90)),
        notas: 'Peso torete Suizo en desarrollo',
        registradoPor: 'Carlos',
      ),
      PesajeEntity(
        animalUuid: animal12.uuid,
        peso: 475.0,
        unidad: 'kg',
        fecha: DateTime.now(),
        notas:
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
        fecha: DateTime.now().subtract(Duration(days: 360)),
        proximaFecha: DateTime.now().add(Duration(days: 5)),
        proximaDosis: DateTime.now().add(Duration(days: 5)),
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
        fecha: DateTime.now().subtract(Duration(days: 90)),
        proximaFecha: DateTime.now().add(Duration(days: 270)),
        proximaDosis: DateTime.now().add(Duration(days: 270)),
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
        fecha: DateTime.now().subtract(Duration(days: 45)),
        proximaFecha: DateTime.now().add(Duration(days: 165)),
        proximaDosis: DateTime.now().add(Duration(days: 165)),
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
        fecha: DateTime.now().subtract(Duration(days: 20)),
        proximaFecha: DateTime.now().add(Duration(days: 70)),
        proximaDosis: DateTime.now().add(Duration(days: 70)),
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
        fecha: DateTime.now().subtract(Duration(days: 120)),
        proximaFecha: DateTime.now().add(Duration(days: 240)),
        proximaDosis: DateTime.now().add(Duration(days: 240)),
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
        fecha: DateTime.now().subtract(Duration(days: 30)),
        proximaFecha: DateTime.now().add(Duration(days: 10)),
        proximaDosis: DateTime.now().add(Duration(days: 10)),
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
        fecha: DateTime.now().subtract(Duration(days: 200)),
        proximaFecha: DateTime.now().add(Duration(days: 160)),
        proximaDosis: DateTime.now().add(Duration(days: 160)),
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
        fecha: DateTime.now().subtract(Duration(days: 25)),
        proximaFecha: DateTime.now().add(Duration(days: 85)),
        proximaDosis: DateTime.now().add(Duration(days: 85)),
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
        fecha: DateTime.now().subtract(Duration(days: 35)),
        proximaFecha: DateTime.now().add(Duration(days: 145)),
        proximaDosis: DateTime.now().add(Duration(days: 145)),
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
        fecha: DateTime.now().subtract(Duration(days: 10)),
        proximaFecha: DateTime.now().add(Duration(days: 50)),
        proximaDosis: DateTime.now().add(Duration(days: 50)),
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
        fecha: DateTime.now().subtract(Duration(days: 150)),
        proximaFecha: DateTime.now().add(Duration(days: 210)),
        proximaDosis: DateTime.now().add(Duration(days: 210)),
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
        fecha: DateTime.now().subtract(Duration(days: 60)),
        proximaFecha: DateTime.now().add(Duration(days: 60)),
        proximaDosis: DateTime.now().add(Duration(days: 60)),
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
        fecha: DateTime.now().subtract(Duration(days: 30)),
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
        fecha: DateTime.now().subtract(Duration(days: 45)),
        descripcion:
            'Evaluación clínica completa + análisis de leche - Chequeo sanitario',
        responsable: 'Clínica Veterinaria El Porvenir',
        detalles: 'Chequeo trimestral. Mastitis: negativa. Salud: excelente',
      ),
      CostoEntity(
        animalUuid: animal1.uuid,
        tipo: TipoCosto.medicinas,
        monto: 85000.0,
        fecha: DateTime.now().subtract(Duration(days: 20)),
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
        fecha: DateTime.now().subtract(Duration(days: 60)),
        descripcion:
            'Servicio IA con semen congelado Toro Brahman - Inseminación Artificial',
        responsable: 'Centro de IA El Triunfo',
        detalles: 'Preñez confirmada. Costo incluye semen + aplicación',
      ),
      CostoEntity(
        animalUuid: animal4.uuid,
        tipo: TipoCosto.veterinario,
        monto: 450000.0,
        fecha: DateTime.now().subtract(Duration(days: 200)),
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
        fecha: DateTime.now().subtract(Duration(days: 150)),
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
        fecha: DateTime.now().subtract(Duration(days: 120)),
        descripcion:
            '200kg concentrado + 60kg premezcla vitaminizada - Programa Engorde Intensivo Mes 2',
        responsable: 'Agroinsumos Valle del Cauca',
        detalles: 'Continuación programa. Ganancia sostenida',
      ),
      CostoEntity(
        animalUuid: animal5.uuid,
        tipo: TipoCosto.alimentacion,
        monto: 280000.0,
        fecha: DateTime.now().subtract(Duration(days: 90)),
        descripcion:
            '200kg concentrado + 60kg premezcla vitaminizada - Programa Engorde Intensivo Mes 3',
        responsable: 'Agroinsumos Valle del Cauca',
        detalles: 'Marbling aumenta. Próxima meta: sacrificio en 30 días',
      ),
      CostoEntity(
        animalUuid: animal10.uuid,
        tipo: TipoCosto.mantenimiento,
        monto: 120000.0,
        fecha: DateTime.now().subtract(Duration(days: 60)),
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
      estado: EstadoReproductivo.prenada.name,
      registradoPor: 'Carlos López',
      fechaEmpadreActual: DateTime.now().subtract(Duration(days: 120)),
      observaciones:
          'Preñez confirmada por ultrasonido. Edad fetal: 30 semanas. Parto estimado: 25-Enero-2026',
    );

    // Bessie - Parto hace poco (Benji nació hace 3.5 meses)
    final reproductivo2 = ReproductivEntity(
      animalUuid: animal1.uuid,
      estado: EstadoReproductivo.lactando.name,
      registradoPor: 'Carlos López',
      fechaEmpadreActual: DateTime.now().subtract(Duration(days: 105)),
      observaciones:
          'Parto exitoso hace 3.5 meses. Becerro: Benji (145kg actual). Producción lactancia actual: 28L/día',
    );

    // Brahman - Reproductor activo
    final reproductivo3 = ReproductivEntity(
      animalUuid: animal4.uuid,
      estado: 'activo_reproductor',
      registradoPor: 'Dr. Carlos Mendez',
      fechaEmpadreActual: DateTime.now().subtract(Duration(days: 200)),
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
        fecha: DateTime.now().subtract(Duration(days: 90)),
        diasIntervalo: 270,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'FA2024001',
        proximaFecha: DateTime.now().add(Duration(days: 270)),
        dosis: '2ml',
        viaAplicacion: 'Intramuscular',
        observaciones: 'Vacuna obligatoria. Respuesta inmune: excelente',
      ),
      VacunaEntity(
        animalUuid: animal2.uuid,
        tipo: 'Fiebre Aftosa + Brucelosis + Clostridios',
        enfermedad: 'Fiebre Aftosa, Brucelosis, Clostridios',
        fecha: DateTime.now().subtract(Duration(days: 120)),
        diasIntervalo: 240,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'HEX2024015',
        proximaFecha: DateTime.now().add(Duration(days: 240)),
        dosis: '2ml',
        viaAplicacion: 'Intramuscular',
        observaciones:
            'Vacuna preparto para inmunidad pasiva becerro. Indicada gestación',
      ),
      VacunaEntity(
        animalUuid: animal4.uuid,
        tipo: 'Fiebre Aftosa + Brucelosis + IBR + Rinotraqueitis',
        enfermedad: 'Fiebre Aftosa, Brucelosis, IBR, DVB',
        fecha: DateTime.now().subtract(Duration(days: 150)),
        diasIntervalo: 210,
        aplicadoPor: 'Dr. Carlos Mendez',
        registradoPor: 'Carlos López',
        lote: 'HEX2024008',
        proximaFecha: DateTime.now().add(Duration(days: 210)),
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
        fechaInicio: DateTime.now().subtract(Duration(days: 35)),
        dosis: '10ml',
        viaAplicacion: 'Oral',
        duracionDias: 1,
        frecuencia: 'Una sola aplicación',
        registradoPor: 'Carlos López',
        fechaFin: DateTime.now().subtract(Duration(days: 35)),
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
        fechaInicio: DateTime.now().subtract(Duration(days: 30)),
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
        fechaInicio: DateTime.now().subtract(Duration(days: 150)),
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
        fecha: DateTime.now().subtract(Duration(days: 45)),
        dosis: '1ml/100kg SC (6.5ml) + 500ml tópico',
        viaAplicacion: 'Subcutánea + Tópica',
        diasIntervalo: 180,
        registradoPor: 'Carlos López',
        aplicadoPor: 'Carlos López',
        proximaAplicacion: DateTime.now().add(Duration(days: 135)),
        observaciones:
            'Desparasitación preventiva. Carga parasitaria: ninguna. Garrapatas: 0 detectadas',
      ),
      DesparasitacionEntity(
        animalUuid: animal5.uuid,
        tipo: 'Interna',
        producto: 'Albendazol 10%',
        fecha: DateTime.now().subtract(Duration(days: 35)),
        dosis: '10ml',
        viaAplicacion: 'Oral',
        diasIntervalo: 150,
        registradoPor: 'Carlos López',
        aplicadoPor: 'Carlos López',
        proximaAplicacion: DateTime.now().add(Duration(days: 115)),
        observaciones:
            'Novillo en programa engorde. Parásitos: negativos. Ganancia: mantenida en 1.5kg/día',
      ),
    ]);

    for (var desp in desparasitaciones) {
      await database.saveDesparasitacion(desp);
    }

    print('✅ 2 REGISTROS DE DESPARASITACIÓN completados');

    print('''
╔═══════════════════════════════════════════════════════════════╗
║         ✅ SEED COMPLETO EXITOSO - DATOS VISUALIZACIÓN        ║
║                         RICA CARGADA                          ║
╚═══════════════════════════════════════════════════════════════╝

📊 RESUMEN DATOS CARGADOS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📍 ANIMALES: 12
  ├─ 3 Vacas lecheras en producción (Holstein, Jersey, Guernsey)
  ├─ 1 Toro reproductor Brahman (elite)
  ├─ 1 Novillo Cebú (engorde intensivo)
  ├─ 2 Vaquillas jóvenes (futuras reproductoras)
  ├─ 2 Becerros (neonatos)
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
}
