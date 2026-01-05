import 'package:miganado/data/database/database.dart';
import 'package:miganado/models/pesaje.dart';

class PesajeRepository {
  final MiGanadoDatabase _database;

  PesajeRepository(this._database);

  /// Obtiene todos los pesajes de un animal
  Future<List<Pesaje>> getPesajesByAnimalId(String animalId) =>
      _database.getPesajesByAnimalId(animalId);

  /// Obtiene el último pesaje de un animal
  Future<Pesaje?> getUltimoPesaje(String animalId) =>
      _database.getUltimoPesaje(animalId);

  /// Obtiene el peso inicial (primer pesaje) de un animal
  Future<Pesaje?> getPesoInicial(String animalId) =>
      _database.getPesoInicial(animalId);

  /// Crea un nuevo pesaje
  Future<void> createPesaje(Pesaje pesaje) => _database.insertPesaje(pesaje);

  /// Actualiza un pesaje
  Future<void> updatePesaje(Pesaje pesaje) => _database.updatePesaje(pesaje);

  /// Elimina un pesaje
  Future<void> deletePesaje(String id) => _database.deletePesaje(id);

  /// Obtiene pesajes en un rango de fechas
  Future<List<Pesaje>> getPesajesByFechaRange(
    String animalId,
    DateTime inicio,
    DateTime fin,
  ) =>
      _database.getPesajesByFechaRange(animalId, inicio, fin);

  /// Calcula el peso promedio de un animal
  Future<double> getPesoPromedio(String animalId) async {
    final pesajes = await _database.getPesajesByAnimalId(animalId);
    if (pesajes.isEmpty) return 0;
    final suma = pesajes.fold<double>(0, (sum, p) => sum + p.pesoKg);
    return suma / pesajes.length;
  }

  /// Calcula la ganancia de peso en kg
  Future<double> getGananciaPeso(String animalId) async {
    final actual = await getUltimoPesaje(animalId);
    final inicial = await getPesoInicial(animalId);

    if (actual == null || inicial == null) return 0;
    return actual.pesoKg - inicial.pesoKg;
  }

  /// Obtiene la tasa de ganancia de peso diaria
  Future<double> getTasaGananciaDiaria(String animalId) async {
    final actual = await getUltimoPesaje(animalId);
    final inicial = await getPesoInicial(animalId);

    if (actual == null || inicial == null) return 0;

    final diasTranscurridos = actual.fecha.difference(inicial.fecha).inDays;
    if (diasTranscurridos == 0) return 0;

    final ganancia = actual.pesoKg - inicial.pesoKg;
    return ganancia / diasTranscurridos;
  }
}
