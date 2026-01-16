import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';

/// Repositorio abstracto para operaciones de mantenimientos sanitarios
abstract class MantenimientoRepository {
  /// Obtiene un mantenimiento por su ID
  Future<MantenimientoRegistro?> getById(String id);

  /// Obtiene todos los mantenimientos de un animal
  Future<List<MantenimientoRegistro>> getByAnimalId(String animalId);

  /// Obtiene mantenimientos vencidos de un animal
  Future<List<MantenimientoRegistro>> getVencidosByAnimalId(String animalId);

  /// Obtiene mantenimientos próximos de un animal
  Future<List<MantenimientoRegistro>> getProximosByAnimalId(String animalId);

  /// Obtiene mantenimientos por tipo
  Future<List<MantenimientoRegistro>> getByTipo(String tipo);

  /// Obtiene mantenimientos por rango de fechas
  Future<List<MantenimientoRegistro>> getByFechaRango(
    DateTime inicio,
    DateTime fin,
  );

  /// Guarda o actualiza un mantenimiento
  Future<void> save(MantenimientoRegistro mantenimiento);

  /// Elimina un mantenimiento
  Future<void> delete(String id);

  /// Cuenta mantenimientos vencidos de un animal
  Future<int> contarVencidos(String animalId);

  /// Cuenta mantenimientos próximos de un animal
  Future<int> contarProximos(String animalId);

  /// Obtiene estadísticas de mantenimientos
  Future<Map<String, dynamic>> getEstadisticas(String animalId);

  /// Observa cambios en tiempo real de mantenimientos de un animal
  Stream<List<MantenimientoRegistro>> watchByAnimalId(String animalId);

  /// Obtiene mantenimientos vencidos globalmente
  Future<List<MantenimientoRegistro>> getVencidosGlobal();

  /// Obtiene mantenimientos próximos globalmente
  Future<List<MantenimientoRegistro>> getProximosGlobal();
}
