import 'package:hive/hive.dart';
import 'package:miganado/models/index.dart';

/// Servicio para agregar datos de ejemplo a la base de datos
class SeedDatabase {
  static Future<void> seedAnimals() async {
    final box = Hive.box<Map>('animales');

    // Si ya hay datos, no agregar
    if (box.isNotEmpty) {
      return;
    }

    // Crear animales de ejemplo
    final animales = [
      Animal(
        id: 'animal_001',
        numeroArete: 'V-2024-001',
        tipo: TipoGanado.vaca,
        raza: 'Jersey',
        sexo: Sexo.hembra,
        fechaNacimiento: DateTime(2021, 3, 15),
        vacunado: true,
        tipoVacuna: 'Triple',
        fechaUltimaVacuna: DateTime(2025, 11, 20),
        desparasitado: true,
        tipoDesparasitante: 'Avermectina',
        fechaUltimoDesparasitante: DateTime(2025, 8, 10),
        estadoReproductivo: EstadoReproductivo.lactando,
        ubicacionId: 'ubi_001',
        fotoPath: null,
        notas: 'Excelente productora de leche',
      ),
      Animal(
        id: 'animal_002',
        numeroArete: 'V-2024-002',
        tipo: TipoGanado.vaca,
        raza: 'Holsteín',
        sexo: Sexo.hembra,
        fechaNacimiento: DateTime(2020, 7, 22),
        vacunado: true,
        tipoVacuna: 'Triple',
        fechaUltimaVacuna: DateTime(2024, 9, 15),
        desparasitado: false,
        tipoDesparasitante: null,
        fechaUltimoDesparasitante: null,
        estadoReproductivo: EstadoReproductivo.seca,
        ubicacionId: 'ubi_001',
        fotoPath: null,
        notas: 'Próxima a parición',
      ),
      Animal(
        id: 'animal_003',
        numeroArete: 'V-2024-003',
        tipo: TipoGanado.toro,
        raza: 'Jersey',
        sexo: Sexo.macho,
        fechaNacimiento: DateTime(2022, 1, 10),
        vacunado: true,
        tipoVacuna: 'Doble',
        fechaUltimaVacuna: DateTime(2025, 10, 5),
        desparasitado: true,
        tipoDesparasitante: 'Benzimidazol',
        fechaUltimoDesparasitante: DateTime(2025, 7, 20),
        estadoReproductivo: EstadoReproductivo.no_definido,
        ubicacionId: 'ubi_001',
        fotoPath: null,
        notas: 'Toro reproductor',
      ),
      Animal(
        id: 'animal_004',
        numeroArete: 'C-2024-001',
        tipo: TipoGanado.caballo,
        raza: 'Saanen',
        sexo: Sexo.hembra,
        fechaNacimiento: DateTime(2023, 5, 8),
        vacunado: false,
        tipoVacuna: null,
        fechaUltimaVacuna: null,
        desparasitado: false,
        tipoDesparasitante: null,
        fechaUltimoDesparasitante: null,
        estadoReproductivo: EstadoReproductivo.no_definido,
        ubicacionId: 'ubi_002',
        fotoPath: null,
        notas: 'Yegua joven, buena conformación',
      ),
      Animal(
        id: 'animal_005',
        numeroArete: 'B-2024-001',
        tipo: TipoGanado.becerro,
        raza: 'Landrace',
        sexo: Sexo.hembra,
        fechaNacimiento: DateTime(2023, 2, 14),
        vacunado: true,
        tipoVacuna: 'Clostridium',
        fechaUltimaVacuna: DateTime(2025, 12, 1),
        desparasitado: true,
        tipoDesparasitante: 'Ivermectina',
        fechaUltimoDesparasitante: DateTime(2025, 6, 15),
        estadoReproductivo: EstadoReproductivo.prenada,
        ubicacionId: 'ubi_003',
        fotoPath: null,
        notas: 'Preñada por primera vez',
      ),
      Animal(
        id: 'animal_006',
        numeroArete: 'V-2024-004',
        tipo: TipoGanado.vaca,
        raza: 'Brahman',
        sexo: Sexo.hembra,
        fechaNacimiento: DateTime(2019, 9, 3),
        vacunado: false,
        tipoVacuna: null,
        fechaUltimaVacuna: null,
        desparasitado: false,
        tipoDesparasitante: null,
        fechaUltimoDesparasitante: null,
        estadoReproductivo: EstadoReproductivo.prenada,
        ubicacionId: 'ubi_001',
        fotoPath: null,
        notas: 'Madre de toros de engorde',
      ),
    ];

    // Guardar en la base de datos en formato Map
    for (var animal in animales) {
      await box.put(animal.id, _animalToMap(animal));
    }
  }

  static Future<void> seedUbicaciones() async {
    final box = Hive.box<Map>('ubicaciones');

    if (box.isNotEmpty) {
      return;
    }

    final ubicaciones = [
      Ubicacion(
        id: 'ubi_001',
        nombre: 'Potrero Principal',
        descripcion: 'Potrero grande para ganado de cría',
        tipo: 'potrero',
        fotoPath: null,
      ),
      Ubicacion(
        id: 'ubi_002',
        nombre: 'Corral de Equinos',
        descripcion: 'Área para crianza de equinos',
        tipo: 'corral',
        fotoPath: null,
      ),
      Ubicacion(
        id: 'ubi_003',
        nombre: 'Establo',
        descripcion: 'Instalaciones techadas',
        tipo: 'establo',
        fotoPath: null,
      ),
    ];

    for (var ubicacion in ubicaciones) {
      await box.put(ubicacion.id, _ubicacionToMap(ubicacion));
    }
  }

  static Future<void> seedEventosMantenimiento() async {
    final box = Hive.box<Map>('eventos_mantenimiento');

    if (box.isNotEmpty) {
      return;
    }

    final eventos = [
      EventoMantenimiento(
        id: 'evento_001',
        animalId: 'animal_001',
        tipo: TipoMantenimiento.vacuna,
        fecha: DateTime(2025, 11, 20),
        producto: 'Vacuna triple contra enfermedades comunes',
        observaciones: 'Animal en buen estado',
      ),
      EventoMantenimiento(
        id: 'evento_002',
        animalId: 'animal_001',
        tipo: TipoMantenimiento.desparasitacion,
        fecha: DateTime(2025, 8, 10),
        producto: 'Desparasitante interno y externo',
        observaciones: 'Sin complicaciones',
      ),
      EventoMantenimiento(
        id: 'evento_003',
        animalId: 'animal_003',
        tipo: TipoMantenimiento.banio,
        fecha: DateTime(2025, 12, 15),
        producto: 'Baño preventivo con ectoparasiticida',
        observaciones: 'Excelente respuesta',
      ),
      EventoMantenimiento(
        id: 'evento_004',
        animalId: 'animal_005',
        tipo: TipoMantenimiento.vacuna,
        fecha: DateTime(2025, 12, 1),
        producto: 'Vacuna contra clostridios',
        observaciones: 'Reacción normal',
      ),
    ];

    for (var evento in eventos) {
      await box.put(evento.id, _eventoToMap(evento));
    }
  }

  static Future<void> seedAll() async {
    await seedAnimals();
    await seedUbicaciones();
    await seedEventosMantenimiento();
  }

  // Métodos de conversión
  static Map<String, dynamic> _animalToMap(Animal animal) {
    return {
      'id': animal.id,
      'numeroArete': animal.numeroArete,
      'nombrePersonalizado': animal.nombrePersonalizado,
      'tipo': animal.tipo.toString().split('.').last,
      'sexo': animal.sexo.toString().split('.').last,
      'raza': animal.raza,
      'fechaNacimiento': animal.fechaNacimiento?.toIso8601String(),
      'vacunado': animal.vacunado,
      'tipoVacuna': animal.tipoVacuna,
      'fechaUltimaVacuna': animal.fechaUltimaVacuna?.toIso8601String(),
      'desparasitado': animal.desparasitado,
      'tipoDesparasitante': animal.tipoDesparasitante,
      'fechaUltimoDesparasitante':
          animal.fechaUltimoDesparasitante?.toIso8601String(),
      'tieneVitaminas': animal.tieneVitaminas,
      'fechaVitaminas': animal.fechaVitaminas?.toIso8601String(),
      'tieneOtrosTratamientos': animal.tieneOtrosTratamientos,
      'fechaOtrosTratamientos':
          animal.fechaOtrosTratamientos?.toIso8601String(),
      'descripcionOtrosTratamientos': animal.descripcionOtrosTratamientos,
      'estadoReproductivo':
          animal.estadoReproductivo.toString().split('.').last,
      'ubicacionId': animal.ubicacionId,
      'fotoPath': animal.fotoPath,
      'notas': animal.notas,
      'precioCompra': animal.precioCompra,
      'precioVenta': animal.precioVenta,
      'costosExtra': animal.costosExtra,
      'fechaRegistro': animal.fechaRegistro.toIso8601String(),
      'ultimaActualizacion': animal.ultimaActualizacion.toIso8601String(),
    };
  }

  static Map<String, dynamic> _ubicacionToMap(Ubicacion ubicacion) {
    return {
      'id': ubicacion.id,
      'nombre': ubicacion.nombre,
      'descripcion': ubicacion.descripcion,
      'tipo': ubicacion.tipo,
      'fotoPath': ubicacion.fotoPath,
      'fechaRegistro': ubicacion.fechaRegistro.toIso8601String(),
      'ultimaActualizacion': ubicacion.ultimaActualizacion.toIso8601String(),
    };
  }

  static Map<String, dynamic> _eventoToMap(EventoMantenimiento evento) {
    return {
      'id': evento.id,
      'animalId': evento.animalId,
      'tipo': evento.tipo.toString().split('.').last,
      'fecha': evento.fecha.toIso8601String(),
      'producto': evento.producto,
      'dosis': evento.dosis,
      'lote': evento.lote,
      'observaciones': evento.observaciones,
    };
  }
}
