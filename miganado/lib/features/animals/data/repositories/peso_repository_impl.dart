import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/peso_registro.dart';
import 'package:miganado/features/animals/domain/repositories/peso_repository.dart';

/// Implementación de PesoRepository usando Hive
class PesoRepositoryImpl implements PesoRepository {
  final MiGanadoDatabaseTyped _database;

  PesoRepositoryImpl(this._database);

  @override
  Future<PesoRegistro?> getById(String id) async {
    try {
      return await _database.getPesoById(id);
    } catch (e) {
      print('Error obteniendo peso: $e');
      return null;
    }
  }

  @override
  Future<List<PesoRegistro>> getByAnimalId(String animalId) async {
    try {
      return await _database.getPesosByAnimalId(animalId);
    } catch (e) {
      print('Error obteniendo pesos: $e');
      return [];
    }
  }

  @override
  Future<PesoRegistro?> getUltimoPeso(String animalId) async {
    try {
      final pesos = await getByAnimalId(animalId);
      if (pesos.isEmpty) return null;
      return pesos.reduce((a, b) => a.fecha.isAfter(b.fecha) ? a : b);
    } catch (e) {
      print('Error obteniendo último peso: $e');
      return null;
    }
  }

  @override
  Future<List<PesoRegistro>> getByFechaRango(
    String animalId,
    DateTime inicio,
    DateTime fin,
  ) async {
    try {
      final pesos = await getByAnimalId(animalId);
      return pesos
          .where((p) =>
              p.fecha.isAfter(inicio) &&
              p.fecha.isBefore(fin.add(Duration(days: 1))))
          .toList();
    } catch (e) {
      print('Error obteniendo pesos por fecha: $e');
      return [];
    }
  }

  @override
  Future<void> save(PesoRegistro peso) async {
    try {
      await _database.addOrUpdatePeso(peso);
    } catch (e) {
      print('Error guardando peso: $e');
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _database.deletePeso(id);
    } catch (e) {
      print('Error eliminando peso: $e');
      rethrow;
    }
  }

  @override
  Future<double> getGananciaPeso(String animalId) async {
    try {
      final pesos = await getByAnimalId(animalId);
      if (pesos.length < 2) return 0;

      final orderdados = pesos..sort((a, b) => a.fecha.compareTo(b.fecha));
      final inicial = orderdados.first.peso;
      final final_ = orderdados.last.peso;

      return final_ - inicial;
    } catch (e) {
      print('Error calculando ganancia: $e');
      return 0;
    }
  }

  @override
  Future<double> getPromedioGananciaMensual(String animalId) async {
    try {
      final pesos = await getByAnimalId(animalId);
      if (pesos.length < 2) return 0;

      final ordenados = pesos..sort((a, b) => a.fecha.compareTo(b.fecha));
      final inicial = ordenados.first;
      final final_ = ordenados.last;

      final diasTranscurridos = final_.fecha.difference(inicial.fecha).inDays;
      if (diasTranscurridos == 0) return 0;

      final mesesTranscurridos = diasTranscurridos / 30.44;
      final gananciaPeso = final_.peso - inicial.peso;

      return gananciaPeso / mesesTranscurridos;
    } catch (e) {
      print('Error calculando promedio mensual: $e');
      return 0;
    }
  }

  @override
  Future<int> getTotalPesajes(String animalId) async {
    try {
      final pesos = await getByAnimalId(animalId);
      return pesos.length;
    } catch (e) {
      print('Error contando pesajes: $e');
      return 0;
    }
  }

  @override
  Future<Map<String, dynamic>> getEstadisticas(String animalId) async {
    try {
      final pesos = await getByAnimalId(animalId);
      if (pesos.isEmpty) {
        return {
          'total': 0,
          'pesoPromedio': 0.0,
          'pesoMinimo': 0.0,
          'pesoMaximo': 0.0,
          'gananciaPeso': 0.0,
          'promedioGananciaMensual': 0.0,
        };
      }

      final pesoPromedio =
          pesos.map((p) => p.peso).reduce((a, b) => a + b) / pesos.length;
      final pesoMinimo =
          pesos.map((p) => p.peso).reduce((a, b) => a < b ? a : b);
      final pesoMaximo =
          pesos.map((p) => p.peso).reduce((a, b) => a > b ? a : b);

      return {
        'total': pesos.length,
        'pesoPromedio': pesoPromedio,
        'pesoMinimo': pesoMinimo,
        'pesoMaximo': pesoMaximo,
        'gananciaPeso': await getGananciaPeso(animalId),
        'promedioGananciaMensual': await getPromedioGananciaMensual(animalId),
      };
    } catch (e) {
      print('Error obteniendo estadísticas: $e');
      return {};
    }
  }

  @override
  Stream<List<PesoRegistro>> watchByAnimalId(String animalId) async* {
    try {
      yield await getByAnimalId(animalId);
      // En una implementación real, aquí habría observable con Hive
    } catch (e) {
      print('Error observando pesos: $e');
      yield [];
    }
  }
}
