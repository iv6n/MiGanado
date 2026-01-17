import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/data/models/pesaje_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';

/// Servicio para cargar datos de ejemplo en la BD Isar
class SeedDatabase {
  static Future<void> seedAll(MiGanadoDatabase database) async {
    // Verificar si ya hay datos
    final allAnimales = await database.getAllAnimales();
    if (allAnimales.isNotEmpty) {
      print('✓ Base de datos ya contiene datos, seed omitido');
      return; // Ya hay datos, no hacer seed
    }

    print('🌱 Iniciando seed de base de datos...');

    // Agregar ganadero de ejemplo
    final ganadero = GanaderoEntity(
      nombre: 'Carlos López Mendez',
      telefono: '(+57) 315 654 3210',
      email: 'carlos@haciendaelporvenir.com',
      ubicacion: 'Vereda El Porvenir, Municipio de Ubaté, Cundinamarca',
      notas:
          'Ganadero con 15 años de experiencia en producción lechera. Producción diaria de 150L aprox.',
      cantidadAnimales: 12,
      tipoProduccion: 'Lechero',
    );
    await database.saveGanadero(ganadero);

    // ============ ANIMALES DE EJEMPLO ============

    // ANIMAL 1: Vaca lechera adulta en producción
    final animal1 = AnimalEntity(
      numeroArete: 'BES-001',
      nombrePersonalizado: 'Bessie',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Holstein',
      fechaNacimiento: DateTime(2020, 3, 15),
      edadMeses: 48,
      esCastrado: false,
      notas:
          'Excelente lechera, producción de 28L/día. Pedigree Holstein puro.',
      precioCompra: 3500000,
      precioVenta: 5500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 90)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 45)),
      tipoDesparasitante: 'Ivermectina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 20)),
      estadoReproductivo: EstadoReproductivo.lactando,
    );

    // ANIMAL 2: Vaca lechera adulta gestante
    final animal2 = AnimalEntity(
      numeroArete: 'DAI-002',
      nombrePersonalizado: 'Daisy',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Jersey',
      fechaNacimiento: DateTime(2019, 7, 22),
      edadMeses: 60,
      esCastrado: false,
      notas:
          'Jersey de excelente calidad lechera. Leche con alto contenido de grasa (5.8%). Próximo parto en 30 días.',
      precioCompra: 2800000,
      precioVenta: 4500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 120)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 60)),
      tipoDesparasitante: 'Albendazol',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 10)),
      estadoReproductivo: EstadoReproductivo.prenada,
    );

    // ANIMAL 3: Toro reproductor adulto
    final animal3 = AnimalEntity(
      numeroArete: 'BRH-003',
      nombrePersonalizado: 'Brahman Negro',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Brahman',
      fechaNacimiento: DateTime(2018, 11, 5),
      edadMeses: 72,
      esCastrado: false,
      notas:
          'Toro reproductor certificado. Excelente genética. Padre de 45+ crías. Resistente al calor y garrapatas.',
      precioCompra: 8000000,
      precioVenta: 12000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 150)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis + Rinotraqueitis',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 30)),
      tipoDesparasitante: 'Ivermectina Plus',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 25)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // ANIMAL 4: Vaquilla joven lista para primera monta
    final animal4 = AnimalEntity(
      numeroArete: 'VQA-004',
      nombrePersonalizado: 'Valentina',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.hembra,
      raza: 'Guernsey',
      fechaNacimiento: DateTime(2023, 2, 10),
      edadMeses: 23,
      esCastrado: false,
      notas:
          'Vaquilla joven de excelente conformación. Peso actual 380kg. Lista para primera monta en 1 mes.',
      precioCompra: 1800000,
      precioVenta: 3200000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 60)),
      tipoVacuna: 'Fiebre aftosa + Brucelosis',
      desparasitado: false,
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 40)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // ANIMAL 5: Novillo para engorde
    final animal5 = AnimalEntity(
      numeroArete: 'CEL-005',
      nombrePersonalizado: 'Cebollín',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Cebú Rojo',
      fechaNacimiento: DateTime(2023, 8, 20),
      edadMeses: 17,
      esCastrado: true, // Castrado para engorde
      notas:
          'Novillo castrado en excelente estado. Programa de engorde intensivo. Ganancia diaria: 1.2kg',
      precioCompra: 1400000,
      precioVenta: 2600000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 75)),
      tipoVacuna: 'Fiebre aftosa',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 35)),
      tipoDesparasitante: 'Albendazol',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 15)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // ANIMAL 6: Becerro recién nacido
    final animal6 = AnimalEntity(
      numeroArete: 'BEC-006',
      nombrePersonalizado: 'Benji',
      especie: Especie.bovino,
      categoria: Categoria.vaca,
      sexo: Sexo.macho,
      raza: 'Holstein',
      fechaNacimiento: DateTime.now().subtract(Duration(days: 5)),
      edadMeses: 0,
      esCastrado: false,
      notas:
          'Becerro recién nacido, hijo de Bessie. Peso al nacer: 42kg. Alimentación con calostro materno.',
      precioCompra: 0,
      precioVenta: null,
      vacunado: false,
      desparasitado: false,
      tieneVitaminas: false,
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // ANIMAL 7: Caballo equino (para diversificación)
    final animal7 = AnimalEntity(
      numeroArete: 'CAB-007',
      nombrePersonalizado: 'Alcázar',
      especie: Especie.equino,
      categoria: Categoria.caballo,
      sexo: Sexo.macho,
      raza: 'Criollo Colombiano',
      fechaNacimiento: DateTime(2020, 5, 10),
      edadMeses: 45,
      esCastrado: true,
      notas:
          'Caballo de trabajo, temperamento dócil. Utilizado para labores en el campo y transporte de carga.',
      precioCompra: 2000000,
      precioVenta: 3500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 200)),
      tipoVacuna: 'Encefalitis Equina',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 40)),
      tipoDesparasitante: 'Ivermectina Equina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 35)),
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    // ============ GUARDAR ANIMALES ============
    await database.saveAnimal(animal1);
    await database.saveAnimal(animal2);
    await database.saveAnimal(animal3);
    await database.saveAnimal(animal4);
    await database.saveAnimal(animal5);
    await database.saveAnimal(animal6);
    await database.saveAnimal(animal7);
    print('✓ 7 animales de ejemplo creados:');
    print('  • 4 Bovinos adultos (2 vacas, 1 novillo, 1 toro)');
    print('  • 1 Vaquilla joven');
    print('  • 1 Becerro recién nacido');
    print('  • 1 Caballo adulto');

    // ============ PESAJES DE SEGUIMIENTO ============
    // Pesajes para Bessie (Animal 1)
    final pesaje1_1 = PesajeEntity(
      animalUuid: animal1.uuid,
      peso: 650.0,
      unidad: 'kg',
      fecha: DateTime.now().subtract(Duration(days: 60)),
      notas: 'Peso registrado en evaluación inicial',
      registradoPor: 'Carlos',
    );
    final pesaje1_2 = PesajeEntity(
      animalUuid: animal1.uuid,
      peso: 658.5,
      unidad: 'kg',
      fecha: DateTime.now().subtract(Duration(days: 30)),
      notas: 'Buen incremento de peso, dieta optimizada',
      registradoPor: 'Carlos',
    );
    final pesaje1_3 = PesajeEntity(
      animalUuid: animal1.uuid,
      peso: 665.0,
      unidad: 'kg',
      fecha: DateTime.now(),
      notas: 'Peso actual. Ganancia: 15kg en 60 días',
      registradoPor: 'Carlos',
    );

    await database.savePesaje(pesaje1_1);
    await database.savePesaje(pesaje1_2);
    await database.savePesaje(pesaje1_3);

    // Pesajes para Daisy (Animal 2)
    final pesaje2_1 = PesajeEntity(
      animalUuid: animal2.uuid,
      peso: 580.0,
      unidad: 'kg',
      fecha: DateTime.now().subtract(Duration(days: 45)),
      notas: 'Peso en etapa temprana de gestación',
      registradoPor: 'Carlos',
    );
    final pesaje2_2 = PesajeEntity(
      animalUuid: animal2.uuid,
      peso: 595.0,
      unidad: 'kg',
      fecha: DateTime.now(),
      notas: 'Peso actual. Incremento esperado por gestación (30 semanas)',
      registradoPor: 'Carlos',
    );

    await database.savePesaje(pesaje2_1);
    await database.savePesaje(pesaje2_2);

    // Pesajes para Cebollín (Animal 5 - Novillo)
    final pesaje5_1 = PesajeEntity(
      animalUuid: animal5.uuid,
      peso: 280.0,
      unidad: 'kg',
      fecha: DateTime.now().subtract(Duration(days: 45)),
      notas: 'Peso inicial en programa de engorde',
      registradoPor: 'Carlos',
    );
    final pesaje5_2 = PesajeEntity(
      animalUuid: animal5.uuid,
      peso: 335.0,
      unidad: 'kg',
      fecha: DateTime.now(),
      notas: 'Excelente ganancia: 1.2kg/día. Seguir con programa actual.',
      registradoPor: 'Carlos',
    );

    await database.savePesaje(pesaje5_1);
    await database.savePesaje(pesaje5_2);

    print('✓ 7 pesajes de seguimiento creados');

    // ============ EVENTOS DE MANTENIMIENTO SANITARIO ============

    // Vacunaciones
    final evento1 = EventoMantenimientoEntity(
      animalUuid: animal1.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'Vacunación contra Fiebre Aftosa y Brucelosis',
      fecha: DateTime.now().subtract(Duration(days: 90)),
      proximaFecha: DateTime.now().add(Duration(days: 270)),
      proximaDosis: DateTime.now().add(Duration(days: 270)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: 'Vacuna Fiebre Aftosa + Brucelosis (inactiva)',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular región glútea',
      observaciones: 'Aplicada correctamente, animal sin reacción adversa',
    );

    final evento2 = EventoMantenimientoEntity(
      animalUuid: animal2.uuid,
      tipo: TipoEventoMantenimiento.vacunacion,
      descripcion: 'Vacunación preventiva preparto',
      fecha: DateTime.now().subtract(Duration(days: 120)),
      proximaFecha: DateTime.now().add(Duration(days: 240)),
      proximaDosis: DateTime.now().add(Duration(days: 240)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: 'Vacuna Fiebre Aftosa + Brucelosis + Clostridios',
      dosisAplicada: '2ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'Vacunación preventiva antes del parto para inmunidad pasiva del becerro',
    );

    // Desparasitaciones
    final evento3 = EventoMantenimientoEntity(
      animalUuid: animal1.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitación interna Ivermectina',
      fecha: DateTime.now().subtract(Duration(days: 45)),
      proximaFecha: DateTime.now().add(Duration(days: 165)),
      proximaDosis: DateTime.now().add(Duration(days: 165)),
      veterinario: 'Carlos López',
      medicamento: 'Ivermectina 1% inyectable',
      dosisAplicada: '1ml/100kg (6.5ml)',
      rutaAplicacion: 'Subcutánea',
      observaciones:
          'Se observó reducción de carga parasitaria. Próxima aplicación en 180 días.',
    );

    final evento4 = EventoMantenimientoEntity(
      animalUuid: animal5.uuid,
      tipo: TipoEventoMantenimiento.desparasitacion,
      descripcion: 'Desparasitación preprogramada Novillo',
      fecha: DateTime.now().subtract(Duration(days: 35)),
      proximaFecha: DateTime.now().add(Duration(days: 145)),
      proximaDosis: DateTime.now().add(Duration(days: 145)),
      veterinario: 'Carlos López',
      medicamento: 'Albendazol 10%',
      dosisAplicada: '10ml oral (7.5mg/kg)',
      rutaAplicacion: 'Oral vía esófago',
      observaciones:
          'Novillo en buen estado, sin síntomas gastrointestinales. Programa de engorde normal.',
    );

    // Control veterinario
    final evento5 = EventoMantenimientoEntity(
      animalUuid: animal2.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Chequeo de gestación y evaluación general',
      fecha: DateTime.now().subtract(Duration(days: 30)),
      proximaFecha: DateTime.now().add(Duration(days: 10)),
      proximaDosis: DateTime.now().add(Duration(days: 10)),
      veterinario: 'Dr. Carlos Mendez',
      medicamento: null,
      dosisAplicada: null,
      rutaAplicacion: null,
      observaciones:
          'Gestación confirmada. Parto esperado en 20-25 días. Preparación de área de maternidad.',
    );

    // Vitaminas y suplementos
    final evento6 = EventoMantenimientoEntity(
      animalUuid: animal3.uuid,
      tipo: TipoEventoMantenimiento.vitaminas,
      descripcion: 'Suplementación de Vitaminas A, D, E',
      fecha: DateTime.now().subtract(Duration(days: 25)),
      proximaFecha: DateTime.now().add(Duration(days: 85)),
      proximaDosis: DateTime.now().add(Duration(days: 85)),
      veterinario: 'Carlos López',
      medicamento: 'Complejo Vitamínico A-D-E inyectable',
      dosisAplicada: '5ml IM',
      rutaAplicacion: 'Intramuscular',
      observaciones:
          'Toro reproductor requiere nivel óptimo de vitaminas para fertilidad. Próxima dosis en 90 días.',
    );

    // Tratamiento
    final evento7 = EventoMantenimientoEntity(
      animalUuid: animal6.uuid,
      tipo: TipoEventoMantenimiento.control_veterinario,
      descripcion: 'Monitoreo de salud neonatal - Becerro',
      fecha: DateTime.now().subtract(Duration(days: 5)),
      proximaFecha: DateTime.now().add(Duration(days: 10)),
      proximaDosis: DateTime.now().add(Duration(days: 10)),
      veterinario: 'Carlos López',
      medicamento: 'Aplicación de yodo en cordón umbilical',
      dosisAplicada: '10ml',
      rutaAplicacion: 'Tópica en cordón umbilical',
      observaciones:
          'Becerro nacido hace 5 días, madre Bessie. Alimentación con calostro materno correcta. Próximo chequeo a los 10 días.',
    );

    await database.saveEvento(evento1);
    await database.saveEvento(evento2);
    await database.saveEvento(evento3);
    await database.saveEvento(evento4);
    await database.saveEvento(evento5);
    await database.saveEvento(evento6);
    await database.saveEvento(evento7);

    print('✓ 7 eventos de mantenimiento sanitario creados:');
    print('  • 2 Vacunaciones');
    print('  • 2 Desparasitaciones');
    print('  • 1 Control veterinario');
    print('  • 1 Suplementación vitamínica');
    print('  • 1 Tratamiento neonatal');

    print('✅ Seed completado exitosamente');
  }
}
