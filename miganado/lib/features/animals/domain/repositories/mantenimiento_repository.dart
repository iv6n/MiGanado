import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';

/// Repositorio abstracto para operaciones de mantenimientos sanitarios
abstract class MantenimientoRepository {
  /// Obtiene un mantenimiento por su ID
  Future<EventoMantenimiento?> getById(String id);

  /// Obtiene todos los mantenimientos de un animal
  Future<List<EventoMantenimiento>> getByAnimalId(String animalId);

  /// Guarda o actualiza un mantenimiento
  Future<void> save(EventoMantenimiento mantenimiento);

  /// Elimina un mantenimiento
  Future<void> delete(String id);

  /// Observa cambios en tiempo real de mantenimientos de un animal
  Stream<List<EventoMantenimiento>> watchByAnimalId(String animalId);
}
