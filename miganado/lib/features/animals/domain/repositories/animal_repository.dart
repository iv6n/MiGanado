import 'package:miganado/features/animals/domain/entities/animal.dart';

/// Repositorio abstracto para operaciones de animales
abstract class AnimalRepository {
  /// Obtiene un animal por su ID
  Future<Animal?> getById(String id);

  /// Obtiene todos los animales del ganadero
  Future<List<Animal>> getAll();

  /// Guarda o actualiza un animal
  Future<void> save(Animal animal);

  /// Elimina un animal
  Future<void> delete(String id);

  /// Obtiene cantidad total de animales
  Future<int> getTotal();

  /// Observa cambios en tiempo real de un animal
  Stream<Animal?> watchById(String id);

  /// Observa cambios en tiempo real de todos los animales
  Stream<List<Animal>> watchAll();
}
