import 'package:hive_flutter/hive_flutter.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/data/models/pesaje_model.dart';
import 'package:miganado/features/animals/data/models/ubicacion_model.dart';
import 'package:miganado/features/animals/data/models/tipo_ganado_adapter.dart';
import 'package:miganado/features/animals/data/models/sexo_adapter.dart';
import 'package:miganado/features/animals/data/models/estado_reproductivo_adapter.dart';
import 'package:miganado/features/costs/data/models/costo_model.dart';
import 'package:miganado/features/costs/data/models/tipo_costo_adapter.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_model.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_model.dart';
import 'package:miganado/features/mantenimiento/data/models/tipo_mantenimiento_adapter.dart';

/// Servicio de base de datos usando Hive con TypeAdapters
/// Versión mejorada con tipos seguros (No usa Box<Map>)
class MiGanadoDatabaseTyped {
  static const String animalesBox = 'animales_typed';
  static const String pesajesBox = 'pesajes_typed';
  static const String ubicacionesBox = 'ubicaciones_typed';
  static const String costosBox = 'costos_typed';
  static const String ganaderoBox = 'ganadero_typed';
  static const String eventosMantenimientoBox = 'eventos_mantenimiento_typed';

  late Box<AnimalModel> _animalesBox;
  late Box<PesajeModel> _pesajesBox;
  late Box<UbicacionModel> _ubicacionesBox;
  late Box<CostoModel> _costosBox;
  late Box<GanaderoModel> _ganaderoBox;
  late Box<EventoMantenimientoModel> _eventosMantenimientoBox;

  /// Inicializa la base de datos con TypeAdapters
  Future<void> init() async {
    await Hive.initFlutter();

    // Registrar adapters automáticamente generados por build_runner
    // Los números corresponden con @HiveType(typeId: X) en los modelos
    Hive.registerAdapter(AnimalModelAdapter());
    Hive.registerAdapter(PesajeModelAdapter());
    Hive.registerAdapter(UbicacionModelAdapter());
    Hive.registerAdapter(CostoModelAdapter());
    Hive.registerAdapter(GanaderoModelAdapter());
    Hive.registerAdapter(EventoMantenimientoModelAdapter());
    Hive.registerAdapter(TipoGanadoAdapter());
    Hive.registerAdapter(SexoAdapter());
    Hive.registerAdapter(EstadoReproductivoAdapter());
    Hive.registerAdapter(TipoCostoAdapter());
    Hive.registerAdapter(TipoMantenimientoAdapter());

    _animalesBox = await Hive.openBox<AnimalModel>(animalesBox);
    _pesajesBox = await Hive.openBox<PesajeModel>(pesajesBox);
    _ubicacionesBox = await Hive.openBox<UbicacionModel>(ubicacionesBox);
    _costosBox = await Hive.openBox<CostoModel>(costosBox);
    _ganaderoBox = await Hive.openBox<GanaderoModel>(ganaderoBox);
    _eventosMantenimientoBox =
        await Hive.openBox<EventoMantenimientoModel>(eventosMantenimientoBox);
  }

  // ============ ANIMALES ============

  Future<List<AnimalModel>> getAllAnimales() async {
    final List<AnimalModel> animales = List.from(_animalesBox.values);
    // Ordena por número de arete
    animales.sort((a, b) => a.numeroArete.compareTo(b.numeroArete));
    return animales;
  }

  Future<AnimalModel?> getAnimalById(String id) async {
    return _animalesBox.get(id);
  }

  Future<AnimalModel?> getAnimalByArete(String numeroArete) async {
    try {
      return _animalesBox.values
          .firstWhere((animal) => animal.numeroArete == numeroArete);
    } catch (e) {
      return null;
    }
  }

  Future<void> saveAnimal(AnimalModel animal) async {
    await _animalesBox.put(animal.id, animal);
  }

  Future<void> deleteAnimal(String id) async {
    await _animalesBox.delete(id);
  }

  // ============ PESAJES ============

  Future<List<PesajeModel>> getPesajesByAnimalId(String animalId) async {
    final List<PesajeModel> pesajes =
        _pesajesBox.values.where((p) => p.animalId == animalId).toList();
    pesajes.sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return pesajes;
  }

  Future<void> savePesaje(PesajeModel pesaje) async {
    await _pesajesBox.put(pesaje.id, pesaje);
  }

  Future<void> deletePesaje(String id) async {
    await _pesajesBox.delete(id);
  }

  // ============ UBICACIONES ============

  Future<List<UbicacionModel>> getAllUbicaciones() async {
    return List.from(_ubicacionesBox.values);
  }

  Future<UbicacionModel?> getUbicacionById(String id) async {
    return _ubicacionesBox.get(id);
  }

  Future<void> saveUbicacion(UbicacionModel ubicacion) async {
    await _ubicacionesBox.put(ubicacion.id, ubicacion);
  }

  Future<void> deleteUbicacion(String id) async {
    await _ubicacionesBox.delete(id);
  }

  // ============ COSTOS ============

  Future<List<CostoModel>> getCostosByAnimalId(String animalId) async {
    final List<CostoModel> costos =
        _costosBox.values.where((c) => c.animalId == animalId).toList();
    costos.sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return costos;
  }

  Future<double> getTotalCostosByAnimalId(String animalId) async {
    double total = 0;
    for (var costo in _costosBox.values.where((c) => c.animalId == animalId)) {
      total += costo.monto;
    }
    return total;
  }

  Future<void> saveCosto(CostoModel costo) async {
    await _costosBox.put(costo.id, costo);
  }

  Future<void> deleteCosto(String id) async {
    await _costosBox.delete(id);
  }

  // ============ GANADERO ============

  Future<GanaderoModel?> getGanadero() async {
    try {
      return _ganaderoBox.values.first;
    } catch (e) {
      return null;
    }
  }

  Future<void> saveGanadero(GanaderoModel ganadero) async {
    // Apenas un registro de ganadero, pero usamos ID único
    await _ganaderoBox.put(ganadero.id, ganadero);
  }

  // ============ EVENTOS MANTENIMIENTO ============

  Future<List<EventoMantenimientoModel>> getEventosByAnimalId(
      String animalId) async {
    final List<EventoMantenimientoModel> eventos = _eventosMantenimientoBox
        .values
        .where((e) => e.animalId == animalId)
        .toList();
    eventos.sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return eventos;
  }

  Future<List<EventoMantenimientoModel>> getAllEventos() async {
    return List.from(_eventosMantenimientoBox.values);
  }

  Future<void> saveEvento(EventoMantenimientoModel evento) async {
    await _eventosMantenimientoBox.put(evento.id, evento);
  }

  Future<void> deleteEvento(String id) async {
    await _eventosMantenimientoBox.delete(id);
  }

  // ============ LIMPIEZA Y MANTENIMIENTO ============

  Future<void> clear() async {
    await _animalesBox.clear();
    await _pesajesBox.clear();
    await _ubicacionesBox.clear();
    await _costosBox.clear();
    await _ganaderoBox.clear();
    await _eventosMantenimientoBox.clear();
  }

  Future<void> close() async {
    await _animalesBox.close();
    await _pesajesBox.close();
    await _ubicacionesBox.close();
    await _costosBox.close();
    await _ganaderoBox.close();
    await _eventosMantenimientoBox.close();
  }

  /// Obtiene estadísticas generales
  Future<DatabaseStats> getStats() async {
    final totalAnimales = _animalesBox.length;
    final totalPesajes = _pesajesBox.length;
    final totalEventos = _eventosMantenimientoBox.length;

    double totalCostos = 0;
    for (var costo in _costosBox.values) {
      totalCostos += costo.monto;
    }

    return DatabaseStats(
      totalAnimales: totalAnimales,
      totalPesajes: totalPesajes,
      totalEventos: totalEventos,
      totalCostos: totalCostos,
    );
  }
}

/// Estadísticas de la base de datos
class DatabaseStats {
  final int totalAnimales;
  final int totalPesajes;
  final int totalEventos;
  final double totalCostos;

  DatabaseStats({
    required this.totalAnimales,
    required this.totalPesajes,
    required this.totalEventos,
    required this.totalCostos,
  });
}
