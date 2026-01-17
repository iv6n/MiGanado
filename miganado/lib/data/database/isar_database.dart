import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/data/models/pesaje_entity.dart';
import 'package:miganado/features/animals/data/models/reproductivo_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/costs/data/models/costo_entity.dart';
import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';

/// Base de datos Isar - Reemplazo seguro de Hive para Android
/// Optimizado para sincronización con la nube
class MiGanadoDatabase {
  static late Isar _isar;

  static const String dbName = 'miganado_db';

  /// Obtener instancia de Isar
  static Isar get isar => _isar;

  /// Inicializar la base de datos
  static Future<void> init() async {
    try {
      print('🚀 Inicializando Isar Database...');

      // Obtener directorio de documentos
      final dir = await getApplicationDocumentsDirectory();

      // Abrir Isar con todas las colecciones
      _isar = await Isar.open(
        [
          AnimalEntitySchema,
          PesajeEntitySchema,
          ReproductivEntitySchema,
          EventoMantenimientoEntitySchema,
          VacunaEntitySchema,
          DesparasitacionEntitySchema,
          TratamientoEntitySchema,
          NutricionEntitySchema,
          GanaderoEntitySchema,
          CostoEntitySchema,
          UbicacionEntitySchema,
        ],
        directory: dir.path,
        name: dbName,
      );

      print('✓ Isar Database inicializado correctamente');
      print('✓ Base de datos ubicada en: ${dir.path}');
    } catch (e, st) {
      print('✗ Error inicializando Isar: $e');
      print('Stack trace: $st');
      rethrow;
    }
  }

  /// Cerrar la base de datos
  static Future<void> close() async {
    await _isar.close();
  }

  /// ============ ANIMALES ============

  /// Obtener todos los animales
  Future<List<AnimalEntity>> getAllAnimales() async {
    try {
      final animales =
          await _isar.animalEntitys.where().sortByNumeroArete().findAll();
      return animales;
    } catch (e) {
      print('Error getAllAnimales: $e');
      return [];
    }
  }

  /// Obtener animal por UUID
  Future<AnimalEntity?> getAnimalByUuid(String uuid) async {
    try {
      return await _isar.animalEntitys.where().uuidEqualTo(uuid).findFirst();
    } catch (e) {
      print('Error getAnimalByUuid: $e');
      return null;
    }
  }

  /// Obtener animal por número de arete
  Future<AnimalEntity?> getAnimalByArete(String numeroArete) async {
    try {
      return await _isar.animalEntitys
          .where()
          .numeroAreteEqualTo(numeroArete)
          .findFirst();
    } catch (e) {
      print('Error getAnimalByArete: $e');
      return null;
    }
  }

  /// Guardar animal
  Future<void> saveAnimal(AnimalEntity animal) async {
    try {
      animal.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.animalEntitys.put(animal);
      });
      print('✓ Animal guardado: ${animal.uuid}');
    } catch (e) {
      print('Error saveAnimal: $e');
      rethrow;
    }
  }

  /// Actualizar animal
  Future<void> updateAnimal(AnimalEntity animal) async {
    try {
      animal.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.animalEntitys.put(animal);
      });
      print('✓ Animal actualizado: ${animal.uuid}');
    } catch (e) {
      print('Error updateAnimal: $e');
      rethrow;
    }
  }

  /// Eliminar animal
  Future<void> deleteAnimal(String uuid) async {
    try {
      final animal = await getAnimalByUuid(uuid);
      if (animal != null) {
        await _isar.writeTxn(() async {
          await _isar.animalEntitys.delete(animal.id);
        });
        print('✓ Animal eliminado: ${animal.uuid}');
      }
    } catch (e) {
      print('Error deleteAnimal: $e');
      rethrow;
    }
  }

  /// ============ PESAJES ============

  /// Obtener todos los pesajes de un animal
  Future<List<PesajeEntity>> getPesajesByAnimal(String animalUuid) async {
    try {
      return await _isar.pesajeEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getPesajesByAnimal: $e');
      return [];
    }
  }

  /// Obtener último pesaje de un animal
  Future<PesajeEntity?> getLastPesaje(String animalUuid) async {
    try {
      return await _isar.pesajeEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findFirst();
    } catch (e) {
      print('Error getLastPesaje: $e');
      return null;
    }
  }

  /// Guardar pesaje
  Future<void> savePesaje(PesajeEntity pesaje) async {
    try {
      pesaje.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.pesajeEntitys.put(pesaje);
      });
      print('✓ Pesaje guardado para animal: ${pesaje.animalUuid}');
    } catch (e) {
      print('Error savePesaje: $e');
      rethrow;
    }
  }

  /// ============ EVENTOS DE MANTENIMIENTO ============

  /// Obtener todos los eventos de un animal
  Future<List<EventoMantenimientoEntity>> getEventosByAnimal(
      String animalUuid) async {
    try {
      return await _isar.eventoMantenimientoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getEventosByAnimal: $e');
      return [];
    }
  }

  /// Obtener todos los eventos
  Future<List<EventoMantenimientoEntity>> getAllEventos() async {
    try {
      return await _isar.eventoMantenimientoEntitys
          .where()
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getAllEventos: $e');
      return [];
    }
  }

  /// Guardar evento de mantenimiento
  Future<void> saveEvento(EventoMantenimientoEntity evento) async {
    try {
      evento.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.eventoMantenimientoEntitys.put(evento);
      });
      print('✓ Evento guardado: ${evento.descripcion}');
    } catch (e) {
      print('Error saveEvento: $e');
      rethrow;
    }
  }

  /// ============ GANADERO ============

  /// Obtener información del ganadero
  Future<GanaderoEntity?> getGanadero() async {
    try {
      final ganaderos = await _isar.ganaderoEntitys.where().findAll();
      if (ganaderos.isNotEmpty) {
        return ganaderos.first;
      }
      return null;
    } catch (e) {
      print('Error getGanadero: $e');
      return null;
    }
  }

  /// Guardar ganadero
  Future<void> saveGanadero(GanaderoEntity ganadero) async {
    try {
      ganadero.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.ganaderoEntitys.put(ganadero);
      });
      print('✓ Ganadero guardado: ${ganadero.nombre}');
    } catch (e) {
      print('Error saveGanadero: $e');
      rethrow;
    }
  }

  /// ============ COSTOS ============

  /// Obtener todos los costos
  Future<List<CostoEntity>> getAllCostos() async {
    try {
      return await _isar.costoEntitys.where().sortByFechaDesc().findAll();
    } catch (e) {
      print('Error getAllCostos: $e');
      return [];
    }
  }

  /// Obtener costos de un animal
  Future<List<CostoEntity>> getCostosByAnimal(String animalUuid) async {
    try {
      return await _isar.costoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getCostosByAnimal: $e');
      return [];
    }
  }

  /// Guardar costo
  Future<void> saveCosto(CostoEntity costo) async {
    try {
      costo.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.costoEntitys.put(costo);
      });
      print('✓ Costo guardado: ${costo.descripcion}');
    } catch (e) {
      print('Error saveCosto: $e');
      rethrow;
    }
  }

  /// ============ UBICACIONES ============

  /// Obtener todas las ubicaciones
  Future<List<UbicacionEntity>> getAllUbicaciones() async {
    try {
      return await _isar.ubicacionEntitys.where().sortByNombre().findAll();
    } catch (e) {
      print('Error getAllUbicaciones: $e');
      return [];
    }
  }

  /// Obtener ubicación por UUID
  Future<UbicacionEntity?> getUbicacionByUuid(String uuid) async {
    try {
      return await _isar.ubicacionEntitys.where().uuidEqualTo(uuid).findFirst();
    } catch (e) {
      print('Error getUbicacionByUuid: $e');
      return null;
    }
  }

  /// Guardar ubicación
  Future<void> saveUbicacion(UbicacionEntity ubicacion) async {
    try {
      ubicacion.fechaActualizacion = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.ubicacionEntitys.put(ubicacion);
      });
      print('✓ Ubicación guardada: ${ubicacion.nombre}');
    } catch (e) {
      print('Error saveUbicacion: $e');
      rethrow;
    }
  }

  /// ============ UTILIDADES ============

  /// Obtener pesajes de un animal por UUID
  Future<List<PesajeEntity>> getPesajesByAnimalUuid(String animalUuid) async {
    try {
      return await _isar.pesajeEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getPesajesByAnimalUuid: $e');
      return [];
    }
  }

  /// Obtener eventos de mantenimiento de un animal por UUID
  Future<List<EventoMantenimientoEntity>> getEventosByAnimalUuid(
      String animalUuid) async {
    try {
      return await _isar.eventoMantenimientoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getEventosByAnimalUuid: $e');
      return [];
    }
  }

  /// Obtener costos de un animal por UUID
  Future<List<CostoEntity>> getCostosByAnimalUuid(String animalUuid) async {
    try {
      return await _isar.costoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getCostosByAnimalUuid: $e');
      return [];
    }
  }

  /// ============ UTILIDADES ============
  Future<void> clearAll() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.animalEntitys.clear();
        await _isar.pesajeEntitys.clear();
        await _isar.reproductivEntitys.clear();
        await _isar.eventoMantenimientoEntitys.clear();
        await _isar.vacunaEntitys.clear();
        await _isar.desparasitacionEntitys.clear();
        await _isar.tratamientoEntitys.clear();
        await _isar.nutricionEntitys.clear();
        await _isar.ganaderoEntitys.clear();
        await _isar.costoEntitys.clear();
        await _isar.ubicacionEntitys.clear();
      });
      print('✓ Base de datos limpiada completamente');
    } catch (e) {
      print('Error clearAll: $e');
      rethrow;
    }
  }

  /// Obtener resumen de estadísticas
  Future<Map<String, int>> getStats() async {
    try {
      return {
        'animales': await _isar.animalEntitys.count(),
        'pesajes': await _isar.pesajeEntitys.count(),
        'eventos': await _isar.eventoMantenimientoEntitys.count(),
        'vacunas': await _isar.vacunaEntitys.count(),
        'desparasitaciones': await _isar.desparasitacionEntitys.count(),
        'tratamientos': await _isar.tratamientoEntitys.count(),
        'nutricion': await _isar.nutricionEntitys.count(),
        'costos': await _isar.costoEntitys.count(),
        'ubicaciones': await _isar.ubicacionEntitys.count(),
      };
    } catch (e) {
      print('Error getStats: $e');
      return {};
    }
  }

  // ============ VACUNAS ============

  Future<void> saveVacuna(VacunaEntity vacuna) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.put(vacuna);
      });
      print('✓ Vacuna registrada: ${vacuna.uuid}');
    } catch (e) {
      print('Error saveVacuna: $e');
      rethrow;
    }
  }

  Future<List<VacunaEntity>> getVacunasByAnimal(String animalUuid) async {
    try {
      return await _isar.vacunaEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getVacunasByAnimal: $e');
      return [];
    }
  }

  Future<void> updateVacuna(VacunaEntity vacuna) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.put(vacuna);
      });
      print('✓ Vacuna actualizada: ${vacuna.uuid}');
    } catch (e) {
      print('Error updateVacuna: $e');
      rethrow;
    }
  }

  Future<void> deleteVacuna(String vacunaUuid) async {
    try {
      final entity =
          await _isar.vacunaEntitys.where().uuidEqualTo(vacunaUuid).findFirst();
      if (entity == null) throw Exception('Vacuna no encontrada');
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.delete(entity.id!);
      });
      print('✓ Vacuna eliminada: $vacunaUuid');
    } catch (e) {
      print('Error deleteVacuna: $e');
      rethrow;
    }
  }

  // ============ DESPARASITACIONES ============

  Future<void> saveDesparasitacion(DesparasitacionEntity entity) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.desparasitacionEntitys.put(entity);
      });
      print('✓ Desparasitacion registrada: ${entity.uuid}');
    } catch (e) {
      print('Error saveDesparasitacion: $e');
      rethrow;
    }
  }

  Future<List<DesparasitacionEntity>> getDesparasitacionesByAnimal(
      String animalUuid) async {
    try {
      return await _isar.desparasitacionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaDesc()
          .findAll();
    } catch (e) {
      print('Error getDesparasitacionesByAnimal: $e');
      return [];
    }
  }

  Future<void> updateDesparasitacion(DesparasitacionEntity entity) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.desparasitacionEntitys.put(entity);
      });
      print('✓ Desparasitacion actualizada: ${entity.uuid}');
    } catch (e) {
      print('Error updateDesparasitacion: $e');
      rethrow;
    }
  }

  // ============ TRATAMIENTOS ============

  Future<void> saveTratamiento(TratamientoEntity tratamiento) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tratamientoEntitys.put(tratamiento);
      });
      print('✓ Tratamiento registrado: ${tratamiento.uuid}');
    } catch (e) {
      print('Error saveTratamiento: $e');
      rethrow;
    }
  }

  Future<List<TratamientoEntity>> getTratamientosByAnimal(
      String animalUuid) async {
    try {
      return await _isar.tratamientoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaInicioDesc()
          .findAll();
    } catch (e) {
      print('Error getTratamientosByAnimal: $e');
      return [];
    }
  }

  Future<void> updateTratamiento(TratamientoEntity tratamiento) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tratamientoEntitys.put(tratamiento);
      });
      print('✓ Tratamiento actualizado: ${tratamiento.uuid}');
    } catch (e) {
      print('Error updateTratamiento: $e');
      rethrow;
    }
  }

  // ============ NUTRICION ============

  Future<void> saveNutricion(NutricionEntity nutricion) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.nutricionEntitys.put(nutricion);
      });
      print('✓ Nutricion registrada: ${nutricion.uuid}');
    } catch (e) {
      print('Error saveNutricion: $e');
      rethrow;
    }
  }

  Future<List<NutricionEntity>> getNutricionByAnimal(String animalUuid) async {
    try {
      return await _isar.nutricionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByFechaInicioDesc()
          .findAll();
    } catch (e) {
      print('Error getNutricionByAnimal: $e');
      return [];
    }
  }

  Future<NutricionEntity?> getNutricionActual(String animalUuid) async {
    try {
      return await _isar.nutricionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .filter()
          .activoEqualTo(true)
          .findFirst();
    } catch (e) {
      print('Error getNutricionActual: $e');
      return null;
    }
  }

  Future<void> updateNutricion(NutricionEntity nutricion) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.nutricionEntitys.put(nutricion);
      });
      print('✓ Nutricion actualizada: ${nutricion.uuid}');
    } catch (e) {
      print('Error updateNutricion: $e');
      rethrow;
    }
  }

  // ============ REPRODUCTIVO ============

  Future<void> saveReproductivo(ReproductivEntity reproductivo) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.reproductivEntitys.put(reproductivo);
      });
      print('✓ Reproductivo registrado: ${reproductivo.uuid}');
    } catch (e) {
      print('Error saveReproductivo: $e');
      rethrow;
    }
  }

  Future<ReproductivEntity?> getReproductivoByAnimal(String animalUuid) async {
    try {
      return await _isar.reproductivEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .findFirst();
    } catch (e) {
      print('Error getReproductivoByAnimal: $e');
      return null;
    }
  }

  Future<void> updateReproductivo(ReproductivEntity reproductivo) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.reproductivEntitys.put(reproductivo);
      });
      print('✓ Reproductivo actualizado: ${reproductivo.uuid}');
    } catch (e) {
      print('Error updateReproductivo: $e');
      rethrow;
    }
  }
}
