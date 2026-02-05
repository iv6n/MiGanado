import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/data/models/pesaje_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/costs/data/models/costo_entity.dart';
import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/data/models/alerta_entity.dart';
import 'package:miganado/features/calendar/data/models/registro_sincronizacion_entity.dart';

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
          EventoMantenimientoEntitySchema,
          VacunaEntitySchema,
          DesparasitacionEntitySchema,
          TratamientoEntitySchema,
          NutricionEntitySchema,
          GanaderoEntitySchema,
          CostoEntitySchema,
          UbicacionEntitySchema,
          EventoGanaderoEntitySchema,
          AlertaEntitySchema,
          RegistroSincronizacionEntitySchema,
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
          await _isar.animalEntitys.where().sortByEarTagNumber().findAll();
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
          .earTagNumberEqualTo(numeroArete)
          .findFirst();
    } catch (e) {
      print('Error getAnimalByArete: $e');
      return null;
    }
  }

  /// Guardar animal
  Future<void> saveAnimal(AnimalEntity animal) async {
    try {
      animal.lastUpdateDate = DateTime.now();
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
      animal.lastUpdateDate = DateTime.now();
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

  /// Guardar pesaje
  Future<void> savePesaje(PesajeEntity pesaje) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.pesajeEntitys.put(pesaje);
      });
      print('✓ Pesaje guardado: ${pesaje.uuid}');
    } catch (e) {
      print('Error savePesaje: $e');
      rethrow;
    }
  }

  /// Obtener todos los pesajes de un animal
  // TODO: Ambiguous method animalUuidEqualTo - refactored to use proper query methods
  // Note: Methods are commented out due to Isar extension ambiguities
  // Consider using getPesajesByAnimalUuid() instead

  /// Obtener último pesaje de un animal
  // Note: getPesajesByAnimal() was previously used but refactored due to ambiguities

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

  /// ============ FARMER ============

  /// Obtener información del ganadero
  Future<GanaderoEntity?> getFarmer() async {
    try {
      final farmers = await _isar.ganaderoEntitys.where().findAll();
      if (farmers.isNotEmpty) {
        return farmers.first;
      }
      return null;
    } catch (e) {
      print('Error getFarmer: $e');
      return null;
    }
  }

  /// Obtener todos los ganaderos
  Future<List<GanaderoEntity>> getAllFarmers() async {
    try {
      return await _isar.ganaderoEntitys.where().findAll();
    } catch (e) {
      print('Error getAllFarmers: $e');
      return [];
    }
  }

  /// Guardar ganadero
  Future<void> saveFarmer(GanaderoEntity farmer) async {
    try {
      farmer.updateDate = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.ganaderoEntitys.put(farmer);
      });
      print('✓ Ganadero guardado: ${farmer.name}');
    } catch (e) {
      print('Error saveFarmer: $e');
      rethrow;
    }
  }

  /// Obtener todos los ganaderos (alias español)
  Future<List<GanaderoEntity>> getAllGanaderos() async {
    return getAllFarmers();
  }

  /// Guardar ganadero (alias español)
  Future<void> saveGanadero(GanaderoEntity ganadero) async {
    return saveFarmer(ganadero);
  }

  /// ============ COSTOS (DEPRECATED - use COSTS section below) ============

  /// Obtener todos los costos
  Future<List<CostoEntity>> getAllCostos() async {
    try {
      return await _isar.costoEntitys.where().sortByDateDesc().findAll();
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
          .sortByDateDesc()
          .findAll();
    } catch (e) {
      print('Error getCostosByAnimal: $e');
      return [];
    }
  }

  /// Guardar costo
  Future<void> saveCosto(CostoEntity cost) async {
    try {
      cost.updateDate = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.costoEntitys.put(cost);
      });
      print('✓ Costo guardado: ${cost.description}');
    } catch (e) {
      print('Error saveCosto: $e');
      rethrow;
    }
  }

  /// ============ UBICACIONES ============

  /// Obtener todas las ubicaciones
  Future<List<UbicacionEntity>> getAllUbicaciones() async {
    try {
      return await _isar.ubicacionEntitys.where().sortByName().findAll();
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
      ubicacion.lastUpdateDate = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.ubicacionEntitys.put(ubicacion);
      });
      print('✓ Ubicación guardada: ${ubicacion.name}');
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
  Future<List<CostoEntity>> getCostsByAnimalUuid(String animalUuid) async {
    try {
      return await _isar.costoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByDateDesc()
          .findAll();
    } catch (e) {
      print('Error getCostsByAnimalUuid: $e');
      return [];
    }
  }

  /// Obtener costos de un animal por UUID (alias español)
  Future<List<CostoEntity>> getCostosByAnimalUuid(String animalUuid) async {
    return getCostsByAnimalUuid(animalUuid);
  }

  /// ============ UTILITIES ============
  Future<void> clearAll() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.animalEntitys.clear();
        await _isar.pesajeEntitys.clear();
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

  /// ============ VACCINES ============

  /// Guardar vacuna
  Future<void> saveVaccine(VacunaEntity vaccine) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.put(vaccine);
      });
      print('✓ Vacuna registrada: ${vaccine.uuid}');
    } catch (e) {
      print('Error saveVaccine: $e');
      rethrow;
    }
  }

  /// Obtener vacunas de un animal
  Future<List<VacunaEntity>> getVaccinesByAnimal(String animalUuid) async {
    try {
      return await _isar.vacunaEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByDateDesc()
          .findAll();
    } catch (e) {
      print('Error getVaccinesByAnimal: $e');
      return [];
    }
  }

  /// Actualizar vacuna
  Future<void> updateVaccine(VacunaEntity vaccine) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.put(vaccine);
      });
      print('✓ Vacuna actualizada: ${vaccine.uuid}');
    } catch (e) {
      print('Error updateVaccine: $e');
      rethrow;
    }
  }

  /// Eliminar vacuna
  Future<void> deleteVaccine(String vaccineUuid) async {
    try {
      final entity = await _isar.vacunaEntitys
          .where()
          .uuidEqualTo(vaccineUuid)
          .findFirst();
      if (entity == null) throw Exception('Vacuna no encontrada');
      await _isar.writeTxn(() async {
        await _isar.vacunaEntitys.delete(entity.id!);
      });
      print('✓ Vacuna eliminada: $vaccineUuid');
    } catch (e) {
      print('Error deleteVaccine: $e');
      rethrow;
    }
  }

  /// Guardar vacuna (alias español)
  Future<void> saveVacuna(VacunaEntity vaccine) async {
    return saveVaccine(vaccine);
  }

  /// Obtener vacunas de un animal (alias español)
  Future<List<VacunaEntity>> getVacunasByAnimal(String animalUuid) async {
    return getVaccinesByAnimal(animalUuid);
  }

  /// Actualizar vacuna (alias español)
  Future<void> updateVacuna(VacunaEntity vaccine) async {
    return updateVaccine(vaccine);
  }

  /// Eliminar vacuna (alias español)
  Future<void> deleteVacuna(String vaccineUuid) async {
    return deleteVaccine(vaccineUuid);
  }

  /// ============ DEWORMING ============

  /// Guardar desparasitación
  Future<void> saveDeworming(DesparasitacionEntity entity) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.desparasitacionEntitys.put(entity);
      });
      print('✓ Desparasitacion registrada: ${entity.uuid}');
    } catch (e) {
      print('Error saveDeworming: $e');
      rethrow;
    }
  }

  /// Obtener desparasitaciones por animal
  Future<List<DesparasitacionEntity>> getDewormingsByAnimal(
      String animalUuid) async {
    try {
      return await _isar.desparasitacionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByDateDesc()
          .findAll();
    } catch (e) {
      print('Error getDewormingsByAnimal: $e');
      return [];
    }
  }

  /// Actualizar desparasitación
  Future<void> updateDeworming(DesparasitacionEntity entity) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.desparasitacionEntitys.put(entity);
      });
      print('✓ Desparasitacion actualizada: ${entity.uuid}');
    } catch (e) {
      print('Error updateDeworming: $e');
      rethrow;
    }
  }

  /// Guardar desparasitación (alias español)
  Future<void> saveDesparasitacion(DesparasitacionEntity entity) async {
    return saveDeworming(entity);
  }

  /// Obtener desparasitaciones por animal (alias español)
  Future<List<DesparasitacionEntity>> getDesparasitacionesByAnimal(
      String animalUuid) async {
    return getDewormingsByAnimal(animalUuid);
  }

  /// Actualizar desparasitación (alias español)
  Future<void> updateDesparasitacion(DesparasitacionEntity entity) async {
    return updateDeworming(entity);
  }

  /// ============ TREATMENTS ============

  /// Guardar tratamiento
  Future<void> saveTreatment(TratamientoEntity treatment) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tratamientoEntitys.put(treatment);
      });
      print('✓ Tratamiento registrado: ${treatment.uuid}');
    } catch (e) {
      print('Error saveTreatment: $e');
      rethrow;
    }
  }

  /// Obtener tratamientos por animal
  Future<List<TratamientoEntity>> getTreatmentsByAnimal(
      String animalUuid) async {
    try {
      return await _isar.tratamientoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByStartDateDesc()
          .findAll();
    } catch (e) {
      print('Error getTreatmentsByAnimal: $e');
      return [];
    }
  }

  /// Actualizar tratamiento
  Future<void> updateTreatment(TratamientoEntity treatment) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tratamientoEntitys.put(treatment);
      });
      print('✓ Tratamiento actualizado: ${treatment.uuid}');
    } catch (e) {
      print('Error updateTreatment: $e');
      rethrow;
    }
  }

  /// Guardar tratamiento (alias español)
  Future<void> saveTratamiento(TratamientoEntity treatment) async {
    return saveTreatment(treatment);
  }

  /// Obtener tratamientos por animal (alias español)
  Future<List<TratamientoEntity>> getTratamientosByAnimal(
      String animalUuid) async {
    return getTreatmentsByAnimal(animalUuid);
  }

  /// Actualizar tratamiento (alias español)
  Future<void> updateTratamiento(TratamientoEntity treatment) async {
    return updateTreatment(treatment);
  }

  /// ============ NUTRITION ============

  /// Guardar nutrición
  Future<void> saveNutrition(NutricionEntity nutrition) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.nutricionEntitys.put(nutrition);
      });
      print('✓ Nutricion registrada: ${nutrition.uuid}');
    } catch (e) {
      print('Error saveNutrition: $e');
      rethrow;
    }
  }

  /// Obtener nutrición por animal
  Future<List<NutricionEntity>> getNutritionByAnimal(String animalUuid) async {
    try {
      return await _isar.nutricionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByStartDateDesc()
          .findAll();
    } catch (e) {
      print('Error getNutritionByAnimal: $e');
      return [];
    }
  }

  /// Obtener nutrición activa
  Future<NutricionEntity?> getCurrentNutrition(String animalUuid) async {
    try {
      return await _isar.nutricionEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .filter()
          .activeEqualTo(true)
          .findFirst();
    } catch (e) {
      print('Error getCurrentNutrition: $e');
      return null;
    }
  }

  /// Actualizar nutrición
  Future<void> updateNutrition(NutricionEntity nutrition) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.nutricionEntitys.put(nutrition);
      });
      print('✓ Nutricion actualizada: ${nutrition.uuid}');
    } catch (e) {
      print('Error updateNutrition: $e');
      rethrow;
    }
  }

  /// Guardar nutrición (alias español)
  Future<void> saveNutricion(NutricionEntity nutrition) async {
    return saveNutrition(nutrition);
  }

  /// Obtener nutrición por animal (alias español)
  Future<List<NutricionEntity>> getNutricionByAnimal(String animalUuid) async {
    return getNutritionByAnimal(animalUuid);
  }

  /// Obtener nutrición actual (alias español)
  Future<NutricionEntity?> getNutricionActual(String animalUuid) async {
    return getCurrentNutrition(animalUuid);
  }

  /// Actualizar nutrición (alias español)
  Future<void> updateNutricion(NutricionEntity nutrition) async {
    return updateNutrition(nutrition);
  }

  /// ============ COSTS ============

  /// Obtener todos los costos
  Future<List<CostoEntity>> getAllCosts() async {
    try {
      return await _isar.costoEntitys.where().sortByDateDesc().findAll();
    } catch (e) {
      print('Error getAllCosts: $e');
      return [];
    }
  }

  /// Obtener costos de un animal
  Future<List<CostoEntity>> getCostsByAnimal(String animalUuid) async {
    try {
      return await _isar.costoEntitys
          .where()
          .animalUuidEqualTo(animalUuid)
          .sortByDateDesc()
          .findAll();
    } catch (e) {
      print('Error getCostsByAnimal: $e');
      return [];
    }
  }

  /// Guardar costo
  Future<void> saveCost(CostoEntity cost) async {
    try {
      cost.updateDate = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.costoEntitys.put(cost);
      });
      print('✓ Costo guardado: ${cost.description}');
    } catch (e) {
      print('Error saveCost: $e');
      rethrow;
    }
  }

  /// ============ REPRODUCTIVE (Disabled) ============
  // TODO: Reproductivo methods disabled due to Isar naming inconsistencies
  // ReproductivEntity vs ReproductivoEntity naming mismatch

  /// ============ CALENDAR EVENTS ============

  /// Guardar evento del calendario
  Future<void> saveCalendarEvent(EventoGanaderoEntity event) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.eventoGanaderoEntitys.put(event);
      });
      print('✓ Evento calendario guardado: ${event.titulo}');
    } catch (e) {
      print('Error saveCalendarEvent: $e');
      rethrow;
    }
  }

  /// Guardar evento ganadero (alias español)
  Future<void> saveEventoGanadero(EventoGanaderoEntity event) async {
    return saveCalendarEvent(event);
  }

  Future<EventoGanaderoEntity?> getEventoGanaderoById(int id) async {
    try {
      return await _isar.eventoGanaderoEntitys.get(id);
    } catch (e) {
      print('Error getEventoGanaderoById: $e');
      return null;
    }
  }

  Future<List<EventoGanaderoEntity>> getAllEventosGanadero() async {
    try {
      return await _isar.eventoGanaderoEntitys
          .where()
          .sortByFechaProgramadaDesc()
          .findAll();
    } catch (e) {
      print('Error getAllEventosGanadero: $e');
      return [];
    }
  }

  Future<void> updateEventoGanadero(EventoGanaderoEntity evento) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.eventoGanaderoEntitys.put(evento);
      });
      print('✓ Evento calendario actualizado: ${evento.titulo}');
    } catch (e) {
      print('Error updateEventoGanadero: $e');
      rethrow;
    }
  }

  Future<bool> deleteEventoGanadero(int id) async {
    try {
      final result = await _isar.writeTxn(() async {
        return await _isar.eventoGanaderoEntitys.delete(id);
      });
      if (result) {
        print('✓ Evento calendario eliminado');
      }
      return result;
    } catch (e) {
      print('Error deleteEventoGanadero: $e');
      rethrow;
    }
  }
}
