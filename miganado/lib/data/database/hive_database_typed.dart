import 'package:hive_flutter/hive_flutter.dart';

// LEGACY - Mantener para compatibilidad
import 'package:miganado/features/animals/data/models/animal_model.dart'
    as legacy;
import 'package:miganado/features/animals/data/models/pesaje_model.dart';
import 'package:miganado/features/animals/data/models/ubicacion_model.dart';
// Hide TipoCosto de costo_model para evitar conflicto con core/enums
import 'package:miganado/features/costs/data/models/costo_model.dart'
    hide TipoCosto;
import 'package:miganado/features/ganadero/data/models/ganadero_model.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_model.dart';

// NUEVOS MODELOS - REFACTORIZADOS
// Importar TipoCosto del core para evitar ambigüedad
import 'package:miganado/core/enums/tipo_costo.dart';
import 'package:miganado/core/enums/tipo_ganado.dart';
import 'package:miganado/core/enums/sexo.dart';
import 'package:miganado/core/enums/estado_reproductivo.dart';
import 'package:miganado/core/enums/metodo_edad.dart';
import 'package:miganado/core/enums/tipo_mantenimiento.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/features/animals/data/models/peso_registro.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';
import 'package:miganado/features/costs/data/models/costo_registro.dart';

/// Servicio de base de datos usando Hive con TypeAdapters
/// Versión mejorada con tipos seguros (No usa Box<Map>)
///
/// NOTA: Esta clase soporta ambos modelos:
/// - LEGACY: AnimalModel, PesajeModel, CostoModel, EventoMantenimientoModel
/// - NUEVOS: AnimalModelV2, PesoRegistro, MantenimientoRegistro, CostoRegistro
class MiGanadoDatabaseTyped {
  // LEGACY boxes
  static const String animalesBox = 'animales_typed';
  static const String pesajesBox = 'pesajes_typed';
  static const String ubicacionesBox = 'ubicaciones_typed';
  static const String costosBox = 'costos_typed';
  static const String ganaderoBox = 'ganadero_typed';
  static const String eventosMantenimientoBox = 'eventos_mantenimiento_typed';

  // NUEVOS boxes
  static const String animalesV2Box = 'animales_v2_typed';
  static const String pesosBox = 'pesos_registro_typed';
  static const String mantenimientosBox = 'mantenimientos_registro_typed';
  static const String costosRegistroBox = 'costos_registro_typed';

  // LEGACY
  late Box<legacy.AnimalModel> _animalesBox;
  late Box<PesajeModel> _pesajesBox;
  late Box<UbicacionModel> _ubicacionesBox;
  late Box<CostoModel> _costosBox;
  late Box<GanaderoModel> _ganaderoBox;
  late Box<EventoMantenimientoModel> _eventosMantenimientoBox;

  // NUEVOS
  late Box<v2.AnimalModel> _animalesV2Box;
  late Box<PesoRegistro> _pesosBox;
  late Box<MantenimientoRegistro> _mantenimientosBox;
  late Box<CostoRegistro> _costosRegistroBox;

  /// Inicializa la base de datos con TypeAdapters
  Future<void> init() async {
    await Hive.initFlutter();

    // Registrar enums centralizados (NUEVOS)
    Hive.registerAdapter(TipoGanadoAdapter());
    Hive.registerAdapter(SexoAdapter());
    Hive.registerAdapter(EstadoReproductivoAdapter());
    // Hive.registerAdapter(MetodoEdadAdapter());
    Hive.registerAdapter(TipoMantenimientoAdapter());
    Hive.registerAdapter(TipoCostoAdapter());

    // Registrar nuevos modelos
    Hive.registerAdapter(v2.AnimalModelAdapter());
    Hive.registerAdapter(PesoRegistroAdapter());
    Hive.registerAdapter(MantenimientoRegistroAdapter());
    Hive.registerAdapter(CostoRegistroAdapter());

    // Registrar adapters legacy (compatibilidad)
    Hive.registerAdapter(legacy.AnimalModelAdapter());
    Hive.registerAdapter(PesajeModelAdapter());
    Hive.registerAdapter(UbicacionModelAdapter());
    Hive.registerAdapter(CostoModelAdapter());
    Hive.registerAdapter(GanaderoModelAdapter());
    Hive.registerAdapter(EventoMantenimientoModelAdapter());

    // Abrir boxes LEGACY
    _animalesBox = await Hive.openBox<legacy.AnimalModel>(animalesBox);
    _pesajesBox = await Hive.openBox<PesajeModel>(pesajesBox);
    _ubicacionesBox = await Hive.openBox<UbicacionModel>(ubicacionesBox);
    _costosBox = await Hive.openBox<CostoModel>(costosBox);
    _ganaderoBox = await Hive.openBox<GanaderoModel>(ganaderoBox);
    _eventosMantenimientoBox =
        await Hive.openBox<EventoMantenimientoModel>(eventosMantenimientoBox);

    // Abrir boxes NUEVOS
    _animalesV2Box = await Hive.openBox<v2.AnimalModel>(animalesV2Box);
    _pesosBox = await Hive.openBox<PesoRegistro>(pesosBox);
    _mantenimientosBox =
        await Hive.openBox<MantenimientoRegistro>(mantenimientosBox);
    _costosRegistroBox = await Hive.openBox<CostoRegistro>(costosRegistroBox);
  }

  // ============ ANIMALES ============

  Future<List<legacy.AnimalModel>> getAllAnimales() async {
    final List<legacy.AnimalModel> animales = List.from(_animalesBox.values);
    // Ordena por número de arete
    animales
        .sort((a, b) => (a.numeroArete ?? '').compareTo(b.numeroArete ?? ''));
    return animales;
  }

  Future<legacy.AnimalModel?> getAnimalById(String id) async {
    return _animalesBox.get(id);
  }

  Future<legacy.AnimalModel?> getAnimalByArete(String numeroArete) async {
    try {
      return _animalesBox.values
          .firstWhere((animal) => (animal.numeroArete ?? '') == numeroArete);
    } catch (e) {
      return null;
    }
  }

  Future<void> saveAnimal(legacy.AnimalModel animal) async {
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

  // ============ NUEVOS MÉTODOS - ANIMALES V2 ============

  Future<List<v2.AnimalModel>> getAllAnimalesV2() async {
    return List.from(_animalesV2Box.values);
  }

  Future<v2.AnimalModel?> getAnimalV2ById(String id) async {
    return _animalesV2Box.get(id);
  }

  Future<void> addOrUpdateAnimalV2(v2.AnimalModel animal) async {
    await _animalesV2Box.put(animal.id, animal);
  }

  Future<void> deleteAnimalV2(String id) async {
    await _animalesV2Box.delete(id);
  }

  // ============ NUEVOS MÉTODOS - MANTENIMIENTOS ADICIONALES ============

  Future<MantenimientoRegistro?> getMantenimientoById(String id) async {
    return _mantenimientosBox.get(id);
  }

  Future<void> addOrUpdateMantenimiento(
      MantenimientoRegistro mantenimiento) async {
    await _mantenimientosBox.put(mantenimiento.id, mantenimiento);
  }

  Future<List<MantenimientoRegistro>> getMantenimientosByTipo(
      String tipo) async {
    final mantenimientos = _mantenimientosBox.values.toList();
    return mantenimientos
        .where((m) => m.tipo.toString().contains(tipo))
        .toList();
  }

  // ============ NUEVOS MÉTODOS - PESOS ADICIONALES ============

  Future<PesoRegistro?> getPesoById(String id) async {
    return _pesosBox.get(id);
  }

  Future<void> addOrUpdatePeso(PesoRegistro peso) async {
    await _pesosBox.put(peso.id, peso);
  }

  // ============ NUEVOS MÉTODOS - COSTOS ADICIONALES ============

  Future<CostoRegistro?> getCostoById(String id) async {
    return _costosRegistroBox.get(id);
  }

  Future<void> addOrUpdateCosto(CostoRegistro costo) async {
    await _costosRegistroBox.put(costo.id, costo);
  }

  Future<List<CostoRegistro>> getAllCostos() async {
    return List.from(_costosRegistroBox.values);
  }

  // ============ LIMPIEZA Y MANTENIMIENTO ============

  Future<void> clear() async {
    await _animalesBox.clear();
    await _pesajesBox.clear();
    await _ubicacionesBox.clear();
    await _costosBox.clear();
    await _ganaderoBox.clear();
    await _eventosMantenimientoBox.clear();
    await _animalesV2Box.clear();
    await _pesosBox.clear();
    await _mantenimientosBox.clear();
    await _costosRegistroBox.clear();
  }

  Future<void> close() async {
    await _animalesBox.close();
    await _pesajesBox.close();
    await _ubicacionesBox.close();
    await _costosBox.close();
    await _ganaderoBox.close();
    await _eventosMantenimientoBox.close();
    await _animalesV2Box.close();
    await _pesosBox.close();
    await _mantenimientosBox.close();
    await _costosRegistroBox.close();
  }

  // ============ NUEVOS MÉTODOS - PESOS ============

  Future<List<PesoRegistro>> getPesosByAnimalId(String animalId) async {
    final List<PesoRegistro> pesos =
        _pesosBox.values.where((p) => p.animalId == animalId).toList();
    pesos.sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return pesos;
  }

  Future<void> savePeso(PesoRegistro peso) async {
    await _pesosBox.put(peso.id, peso);
  }

  Future<void> deletePeso(String id) async {
    await _pesosBox.delete(id);
  }

  // ============ NUEVOS MÉTODOS - MANTENIMIENTOS ============

  Future<List<MantenimientoRegistro>> getMantenimientosByAnimalId(
      String animalId) async {
    final List<MantenimientoRegistro> mantenimientos =
        _mantenimientosBox.values.where((m) => m.animalId == animalId).toList();
    mantenimientos
        .sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return mantenimientos;
  }

  Future<List<MantenimientoRegistro>> getAllMantenimientos() async {
    return List.from(_mantenimientosBox.values);
  }

  Future<void> saveMantenimiento(MantenimientoRegistro mantenimiento) async {
    await _mantenimientosBox.put(mantenimiento.id, mantenimiento);
  }

  Future<void> deleteMantenimiento(String id) async {
    await _mantenimientosBox.delete(id);
  }

  /// Obtiene mantenimientos vencidos de un animal
  Future<List<MantenimientoRegistro>> getMantenimientosVencidos(
      String animalId) async {
    final mantenimientos = await getMantenimientosByAnimalId(animalId);
    return mantenimientos.where((m) => m.estaVencido).toList();
  }

  /// Obtiene mantenimientos próximos a vencer (30 días)
  Future<List<MantenimientoRegistro>> getMantenimientosProximos(
      String animalId) async {
    final mantenimientos = await getMantenimientosByAnimalId(animalId);
    return mantenimientos.where((m) => m.estaProximo).toList();
  }

  // ============ NUEVOS MÉTODOS - COSTOS REGISTRO ============

  Future<List<CostoRegistro>> getCostoRegistroByAnimalId(
      String animalId) async {
    final List<CostoRegistro> costos =
        _costosRegistroBox.values.where((c) => c.animalId == animalId).toList();
    costos.sort((a, b) => b.fecha.compareTo(a.fecha)); // Más recientes primero
    return costos;
  }

  Future<double> getTotalCostoRegistroByAnimalId(String animalId) async {
    double total = 0;
    for (var costo
        in _costosRegistroBox.values.where((c) => c.animalId == animalId)) {
      total += costo.monto;
    }
    return total;
  }

  /// Obtiene costos por tipo (del enum TipoCosto centralizado)
  Future<double> getCostosRegistroPorTipo(
      String animalId, TipoCosto tipo) async {
    double total = 0;
    for (var costo in _costosRegistroBox.values) {
      if (costo.animalId == animalId && costo.tipo == tipo) {
        total += costo.monto;
      }
    }
    return total;
  }

  Future<void> saveCostoRegistro(CostoRegistro costo) async {
    await _costosRegistroBox.put(costo.id, costo);
  }

  Future<void> deleteCostoRegistro(String id) async {
    await _costosRegistroBox.delete(id);
  }

  /// Obtiene costos asociados a un mantenimiento
  Future<List<CostoRegistro>> getCostosByMantenimiento(
      String mantenimientoId) async {
    return _costosRegistroBox.values
        .where((c) => c.mantenimientoRelacionadoId == mantenimientoId)
        .toList();
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
