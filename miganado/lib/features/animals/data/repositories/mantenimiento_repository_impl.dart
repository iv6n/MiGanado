import 'package:miganado/core/enums/tipo_mantenimiento.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';
import 'package:miganado/features/animals/domain/repositories/mantenimiento_repository.dart';

/// Implementación de MantenimientoRepository usando Hive
class MantenimientoRepositoryImpl implements MantenimientoRepository {
  final MiGanadoDatabaseTyped _database;

  MantenimientoRepositoryImpl(this._database);

  @override
  Future<MantenimientoRegistro?> getById(String id) async {
    try {
      return await _database.getMantenimientoById(id);
    } catch (e) {
      print('Error obteniendo mantenimiento: $e');
      return null;
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getByAnimalId(String animalId) async {
    try {
      return await _database.getMantenimientosByAnimalId(animalId);
    } catch (e) {
      print('Error obteniendo mantenimientos: $e');
      return [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getVencidosByAnimalId(
      String animalId) async {
    try {
      final todos = await getByAnimalId(animalId);
      return todos.where((m) => m.estaVencido).toList();
    } catch (e) {
      print('Error obteniendo vencidos: $e');
      return [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getProximosByAnimalId(
      String animalId) async {
    try {
      final todos = await getByAnimalId(animalId);
      return todos.where((m) => m.estaProximo).toList();
    } catch (e) {
      print('Error obteniendo próximos: $e');
      return [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getByTipo(String tipo) async {
    try {
      final todos = await _database.getMantenimientosByTipo(tipo);
      return todos;
    } catch (e) {
      print('Error obteniendo mantenimientos por tipo: $e');
      return [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getByFechaRango(
    DateTime inicio,
    DateTime fin,
  ) async {
    try {
      final allManteniminetos = await _database.getAllMantenimientos();
      return allManteniminetos
          .where((m) =>
              m.fecha.isAfter(inicio) &&
              m.fecha.isBefore(fin.add(Duration(days: 1))))
          .toList();
    } catch (e) {
      print('Error obteniendo mantenimientos por fecha: $e');
      return [];
    }
  }

  @override
  Future<void> save(MantenimientoRegistro mantenimiento) async {
    try {
      await _database.addOrUpdateMantenimiento(mantenimiento);
    } catch (e) {
      print('Error guardando mantenimiento: $e');
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _database.deleteMantenimiento(id);
    } catch (e) {
      print('Error eliminando mantenimiento: $e');
      rethrow;
    }
  }

  @override
  Future<int> contarVencidos(String animalId) async {
    try {
      final vencidos = await getVencidosByAnimalId(animalId);
      return vencidos.length;
    } catch (e) {
      print('Error contando vencidos: $e');
      return 0;
    }
  }

  @override
  Future<int> contarProximos(String animalId) async {
    try {
      final proximos = await getProximosByAnimalId(animalId);
      return proximos.length;
    } catch (e) {
      print('Error contando próximos: $e');
      return 0;
    }
  }

  @override
  Future<Map<String, dynamic>> getEstadisticas(String animalId) async {
    try {
      final todos = await getByAnimalId(animalId);
      final vencidos = await getVencidosByAnimalId(animalId);
      final proximos = await getProximosByAnimalId(animalId);

      final porTipo = <String, int>{};
      for (final m in todos) {
        final tipo = m.tipo.toString();
        porTipo[tipo] = (porTipo[tipo] ?? 0) + 1;
      }

      return {
        'total': todos.length,
        'vencidos': vencidos.length,
        'proximos': proximos.length,
        'ok': todos.length - vencidos.length - proximos.length,
        'porTipo': porTipo,
        'ultimoMantenimiento': todos.isNotEmpty
            ? todos.reduce((a, b) => a.fecha.isAfter(b.fecha) ? a : b)
            : null,
      };
    } catch (e) {
      print('Error obteniendo estadísticas: $e');
      return {};
    }
  }

  @override
  Stream<List<MantenimientoRegistro>> watchByAnimalId(String animalId) async* {
    try {
      yield await getByAnimalId(animalId);
      // En una implementación real, aquí habría observable con Hive
    } catch (e) {
      print('Error observando mantenimientos: $e');
      yield [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getVencidosGlobal() async {
    try {
      final todos = await _database.getAllMantenimientos();
      return todos.where((m) => m.estaVencido).toList();
    } catch (e) {
      print('Error obteniendo vencidos global: $e');
      return [];
    }
  }

  @override
  Future<List<MantenimientoRegistro>> getProximosGlobal() async {
    try {
      final todos = await _database.getAllMantenimientos();
      return todos.where((m) => m.estaProximo).toList();
    } catch (e) {
      print('Error obteniendo próximos global: $e');
      return [];
    }
  }
}
