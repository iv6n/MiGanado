import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/features/animals/domain/repositories/animal_repository.dart';

/// Implementación de AnimalRepository usando Hive
class AnimalRepositoryImpl implements AnimalRepository {
  final MiGanadoDatabaseTyped _database;

  AnimalRepositoryImpl(this._database);

  @override
  Future<v2.AnimalModel?> getById(String id) async {
    try {
      return await _database.getAnimalV2ById(id);
    } catch (e) {
      print('Error obteniendo animal: $e');
      return null;
    }
  }

  @override
  Future<List<v2.AnimalModel>> getAll() async {
    try {
      return await _database.getAllAnimalesV2();
    } catch (e) {
      print('Error obteniendo animales: $e');
      return [];
    }
  }

  @override
  Future<List<v2.AnimalModel>> getByTipo(String tipo) async {
    try {
      final todos = await getAll();
      return todos.where((a) => a.tipo.toString().contains(tipo)).toList();
    } catch (e) {
      print('Error obteniendo animales por tipo: $e');
      return [];
    }
  }

  @override
  Future<List<v2.AnimalModel>> getByUbicacion(String ubicacionId) async {
    try {
      final todos = await getAll();
      return todos.where((a) => a.ubicacionId == ubicacionId).toList();
    } catch (e) {
      print('Error obteniendo animales por ubicación: $e');
      return [];
    }
  }

  @override
  Future<void> save(v2.AnimalModel animal) async {
    try {
      await _database.addOrUpdateAnimalV2(animal);
    } catch (e) {
      print('Error guardando animal: $e');
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _database.deleteAnimalV2(id);
    } catch (e) {
      print('Error eliminando animal: $e');
      rethrow;
    }
  }

  @override
  Future<int> getTotal() async {
    try {
      final todos = await getAll();
      return todos.length;
    } catch (e) {
      print('Error contando animales: $e');
      return 0;
    }
  }

  @override
  Future<Map<String, dynamic>> getEstadisticas() async {
    try {
      final todos = await getAll();

      final porTipo = <String, int>{};
      for (final animal in todos) {
        final tipo = animal.tipo.toString();
        porTipo[tipo] = (porTipo[tipo] ?? 0) + 1;
      }

      final porSexo = <String, int>{};
      for (final animal in todos) {
        final sexo = animal.sexo?.toString() ?? 'No definido';
        porSexo[sexo] = (porSexo[sexo] ?? 0) + 1;
      }

      return {
        'total': todos.length,
        'porTipo': porTipo,
        'porSexo': porSexo,
        'conAlertasVencidas': todos
            .where((a) =>
                a.alertasSanitarias.any((alerta) => alerta.startsWith('🔴')))
            .length,
        'conAlertasProximas': todos
            .where((a) =>
                a.alertasSanitarias.any((alerta) => alerta.startsWith('🟡')))
            .length,
      };
    } catch (e) {
      print('Error obteniendo estadísticas: $e');
      return {};
    }
  }

  @override
  Stream<v2.AnimalModel?> watchById(String id) async* {
    try {
      yield await getById(id);
      // En una implementación real, aquí habría observable con Hive
    } catch (e) {
      print('Error observando animal: $e');
      yield null;
    }
  }

  @override
  Stream<List<v2.AnimalModel>> watchAll() async* {
    try {
      yield await getAll();
      // En una implementación real, aquí habría observable con Hive
    } catch (e) {
      print('Error observando animales: $e');
      yield [];
    }
  }
}
