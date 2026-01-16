import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/costs/domain/repositories/costo_repository.dart';

/// Implementación de CostoRepository usando Hive
class CostoRepositoryImpl implements CostoRepository {
  final MiGanadoDatabaseTyped _database;

  CostoRepositoryImpl(this._database);

  @override
  Future<dynamic> getById(String id) async {
    try {
      return await _database.getCostoById(id);
    } catch (e) {
      print('Error obteniendo costo: $e');
      return null;
    }
  }

  @override
  Future<List<dynamic>> getByAnimalId(String animalId) async {
    try {
      return await _database.getCostoRegistroByAnimalId(animalId);
    } catch (e) {
      print('Error obteniendo costos: $e');
      return [];
    }
  }

  @override
  Future<List<dynamic>> getByTipo(String tipo) async {
    try {
      final todos = await _database.getAllCostos();
      return todos.where((c) => c.tipo.toString().contains(tipo)).toList();
    } catch (e) {
      print('Error obteniendo costos por tipo: $e');
      return [];
    }
  }

  @override
  Future<List<dynamic>> getByFechaRango(
    String animalId,
    DateTime inicio,
    DateTime fin,
  ) async {
    try {
      final costos = await getByAnimalId(animalId);
      return costos
          .where((c) =>
              c.fecha.isAfter(inicio) &&
              c.fecha.isBefore(fin.add(Duration(days: 1))))
          .toList();
    } catch (e) {
      print('Error obteniendo costos por fecha: $e');
      return [];
    }
  }

  @override
  Future<List<dynamic>> getByMantenimiento(String mantenimientoId) async {
    try {
      final todos = await _database.getCostosByMantenimiento(mantenimientoId);
      return todos;
    } catch (e) {
      print('Error obteniendo costos por mantenimiento: $e');
      return [];
    }
  }

  @override
  Future<void> save(dynamic costo) async {
    try {
      await _database.addOrUpdateCosto(costo);
    } catch (e) {
      print('Error guardando costo: $e');
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _database.deleteCosto(id);
    } catch (e) {
      print('Error eliminando costo: $e');
      rethrow;
    }
  }

  @override
  Future<double> getCostoTotal(String animalId) async {
    try {
      final costos = await getByAnimalId(animalId);
      return costos.fold<double>(
          0, (suma, costo) => suma + (costo.monto as double? ?? 0));
    } catch (e) {
      print('Error calculando costo total: $e');
      return 0;
    }
  }

  @override
  Future<double> getCostoPromediMensual(String animalId) async {
    try {
      final costos = await getByAnimalId(animalId);
      if (costos.isEmpty) return 0;

      final primero = costos.first;
      final ultimo = costos.last;

      final diasTranscurridos = ultimo.fecha.difference(primero.fecha).inDays;
      if (diasTranscurridos == 0) return 0;

      final mesesTranscurridos = diasTranscurridos / 30.44;
      final costoTotal = await getCostoTotal(animalId);

      return costoTotal / mesesTranscurridos;
    } catch (e) {
      print('Error calculando costo promedio: $e');
      return 0;
    }
  }

  @override
  Future<Map<String, double>> getDesglosePorTipo(String animalId) async {
    try {
      final costos = await getByAnimalId(animalId);
      final desglose = <String, double>{};

      for (final costo in costos) {
        final tipo = costo.tipo.toString();
        desglose[tipo] = (desglose[tipo] ?? 0) + (costo.monto as double? ?? 0);
      }

      return desglose;
    } catch (e) {
      print('Error obteniendo desglose: $e');
      return {};
    }
  }

  @override
  Future<Map<String, dynamic>> getEstadisticas(String animalId) async {
    try {
      final costos = await getByAnimalId(animalId);
      final costoTotal = await getCostoTotal(animalId);
      final costoPromedio = await getCostoPromediMensual(animalId);
      final desglose = await getDesglosePorTipo(animalId);

      return {
        'total': costos.length,
        'costoTotal': costoTotal,
        'costoPromedio': costoPromedio,
        'desglose': desglose,
        'costoMinimo': costos.isEmpty
            ? 0
            : costos.map((c) => c.monto).reduce((a, b) => a < b ? a : b),
        'costoMaximo': costos.isEmpty
            ? 0
            : costos.map((c) => c.monto).reduce((a, b) => a > b ? a : b),
      };
    } catch (e) {
      print('Error obteniendo estadísticas: $e');
      return {};
    }
  }

  @override
  Stream<List<dynamic>> watchByAnimalId(String animalId) async* {
    try {
      yield await getByAnimalId(animalId);
      // En una implementación real, aquí habría observable con Hive
    } catch (e) {
      print('Error observando costos: $e');
      yield [];
    }
  }
}
