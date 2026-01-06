import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/data/models/pesaje_model.dart';
import 'package:miganado/features/costs/data/models/costo_model.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_model.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_model.dart';

/// Servicio para cargar datos de ejemplo en la BD
class SeedDatabaseTyped {
  static Future<void> seedAll(MiGanadoDatabaseTyped database) async {
    // Verificar si ya hay datos
    final allAnimales = await database.getAllAnimales();
    if (allAnimales.isNotEmpty) {
      return; // Ya hay datos, no hacer seed
    }

    // Agregar ganadero de ejemplo
    final ganadero = GanaderoModel(
      nombre: 'Juan Perez',
      telefono: '(+57) 300 123 4567',
      email: 'juan@miganado.com',
      ubicacion: 'Vereda El Porvenir, Cundinamarca',
      notas: 'Ganadero dedicado a la cria de ganado lechero',
    );
    await database.saveGanadero(ganadero);

    // Crear animales de ejemplo
    final animal1 = AnimalModel(
      numeroArete: '001',
      nombrePersonalizado: 'Bessie',
      tipo: TipoGanado.vaca,
      sexo: Sexo.hembra,
      raza: 'Holstein',
      fechaNacimiento: DateTime(2021, 3, 15),
      notas: 'Excelente lechera, produccion de 25L/dia',
      precioCompra: 3500000,
      precioVenta: 5000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 120)),
      tipoVacuna: 'Fiebre aftosa',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 45)),
      tipoDesparasitante: 'Ivermectina',
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 20)),
      estadoReproductivo: EstadoReproductivo.lactando,
    );

    final animal2 = AnimalModel(
      numeroArete: '002',
      nombrePersonalizado: 'Daisy',
      tipo: TipoGanado.vaca,
      sexo: Sexo.hembra,
      raza: 'Jersey',
      fechaNacimiento: DateTime(2020, 7, 22),
      notas: 'Vaca de buen temperamento, buena calidad de leche',
      precioCompra: 2800000,
      precioVenta: 4500000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 380)),
      tipoVacuna: 'Fiebre aftosa',
      desparasitado: false,
      tieneVitaminas: true,
      fechaVitaminas: DateTime.now().subtract(Duration(days: 100)),
      estadoReproductivo: EstadoReproductivo.prenada,
    );

    final animal3 = AnimalModel(
      numeroArete: '003',
      nombrePersonalizado: 'Lucas',
      tipo: TipoGanado.toro,
      sexo: Sexo.macho,
      raza: 'Brahman',
      fechaNacimiento: DateTime(2019, 11, 5),
      notas: 'Toro reproductor, excelente genetica',
      precioCompra: 8000000,
      precioVenta: 12000000,
      vacunado: true,
      fechaUltimaVacuna: DateTime.now().subtract(Duration(days: 200)),
      tipoVacuna: 'Fiebre aftosa',
      desparasitado: true,
      fechaUltimoDesparasitante: DateTime.now().subtract(Duration(days: 60)),
      tipoDesparasitante: 'Albendazol',
      tieneVitaminas: false,
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    final animal4 = AnimalModel(
      numeroArete: '004',
      nombrePersonalizado: 'Bella',
      tipo: TipoGanado.becerro,
      sexo: Sexo.hembra,
      raza: 'Guernsey',
      fechaNacimiento: DateTime(2024, 1, 10),
      notas: 'Becerra joven, prometedora linea lechera',
      precioCompra: 1200000,
      precioVenta: 2000000,
      vacunado: false,
      desparasitado: false,
      tieneVitaminas: false,
      estadoReproductivo: EstadoReproductivo.no_definido,
    );

    await database.saveAnimal(animal1);
    await database.saveAnimal(animal2);
    await database.saveAnimal(animal3);
    await database.saveAnimal(animal4);

    // Agregar pesajes de ejemplo para Bessie
    final pesaje1 = PesajeModel(
      animalId: animal1.id,
      peso: 620.5,
      fecha: DateTime.now().subtract(Duration(days: 30)),
      notas: 'Pesaje despues del ordeno matutino',
    );

    final pesaje2 = PesajeModel(
      animalId: animal1.id,
      peso: 625.0,
      fecha: DateTime.now().subtract(Duration(days: 15)),
      notas: 'Pesaje antes de ordeno',
    );

    final pesaje3 = PesajeModel(
      animalId: animal1.id,
      peso: 628.3,
      fecha: DateTime.now(),
      notas: 'Pesaje actual, ganancia de peso',
    );

    await database.savePesaje(pesaje1);
    await database.savePesaje(pesaje2);
    await database.savePesaje(pesaje3);

    // Agregar costos de ejemplo
    final costo1 = CostoModel(
      animalId: animal1.id,
      tipo: TipoCosto.alimento,
      monto: 150000,
      descripcion: 'Concentrado (50kg)',
      fecha: DateTime.now().subtract(Duration(days: 20)),
    );

    final costo2 = CostoModel(
      animalId: animal1.id,
      tipo: TipoCosto.servicio_veterinario,
      monto: 250000,
      descripcion: 'Revision ginecologica',
      fecha: DateTime.now().subtract(Duration(days: 10)),
    );

    final costo3 = CostoModel(
      animalId: animal2.id,
      tipo: TipoCosto.medicamento,
      monto: 85000,
      descripcion: 'Antibiotico para mastitis',
      fecha: DateTime.now().subtract(Duration(days: 5)),
    );

    await database.saveCosto(costo1);
    await database.saveCosto(costo2);
    await database.saveCosto(costo3);

    // Agregar eventos de mantenimiento
    final evento1 = EventoMantenimientoModel(
      animalId: animal1.id,
      tipo: TipoMantenimiento.vacunacion,
      fecha: DateTime.now().subtract(Duration(days: 120)),
      descripcion: 'Vacuna contra fiebre aftosa',
      proximaFecha: DateTime.now().add(Duration(days: 245)),
    );

    final evento2 = EventoMantenimientoModel(
      animalId: animal1.id,
      tipo: TipoMantenimiento.desparasitante,
      fecha: DateTime.now().subtract(Duration(days: 45)),
      descripcion: 'Desparasitante interno (Ivermectina)',
      proximaFecha: DateTime.now().add(Duration(days: 135)),
    );

    final evento3 = EventoMantenimientoModel(
      animalId: animal2.id,
      tipo: TipoMantenimiento.revision_clinica,
      fecha: DateTime.now().subtract(Duration(days: 15)),
      descripcion: 'Revision general de salud',
      costo: 150000,
    );

    final evento4 = EventoMantenimientoModel(
      animalId: animal3.id,
      tipo: TipoMantenimiento.castracion,
      fecha: DateTime(2023, 5, 12),
      descripcion: 'Castracion quirurgica',
      costo: 500000,
      notas: 'Cirugia sin complicaciones',
    );

    await database.saveEvento(evento1);
    await database.saveEvento(evento2);
    await database.saveEvento(evento3);
    await database.saveEvento(evento4);

    print('✅ Datos de ejemplo cargados exitosamente');
  }

  /// Limpia toda la BD y la reinicia (util para testing)
  static Future<void> resetDatabase(MiGanadoDatabaseTyped database) async {
    await database.clear();
    await seedAll(database);
  }
}
