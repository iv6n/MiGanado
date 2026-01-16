import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;

/// Repositorio abstracto para operaciones de animales
abstract class AnimalRepository {
  /// Obtiene un animal por su ID
  Future<v2.AnimalModel?> getById(String id);

  /// Obtiene todos los animales del ganadero
  Future<List<v2.AnimalModel>> getAll();

  /// Obtiene animales filtrados por tipo
  Future<List<v2.AnimalModel>> getByTipo(String tipo);

  /// Obtiene animales filtrados por ubicación
  Future<List<v2.AnimalModel>> getByUbicacion(String ubicacionId);

  /// Guarda o actualiza un animal
  Future<void> save(v2.AnimalModel animal);

  /// Elimina un animal
  Future<void> delete(String id);

  /// Obtiene cantidad total de animales
  Future<int> getTotal();

  /// Obtiene estadísticas del rebaño
  Future<Map<String, dynamic>> getEstadisticas();

  /// Observa cambios en tiempo real de un animal
  Stream<v2.AnimalModel?> watchById(String id);

  /// Observa cambios en tiempo real de todos los animales
  Stream<List<v2.AnimalModel>> watchAll();
}
