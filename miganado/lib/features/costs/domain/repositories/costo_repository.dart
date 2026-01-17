// TODO: [LEGACY] mantenimiento_registro.dart no existe
// import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';

/// Repositorio abstracto para operaciones de costos
abstract class CostoRepository {
  /// Obtiene un costo por su ID
  Future<dynamic> getById(String id);

  /// Obtiene todos los costos de un animal
  Future<List<dynamic>> getByAnimalId(String animalId);

  /// Obtiene costos por tipo
  Future<List<dynamic>> getByTipo(String tipo);

  /// Obtiene costos por rango de fechas
  Future<List<dynamic>> getByFechaRango(
    String animalId,
    DateTime inicio,
    DateTime fin,
  );

  /// Obtiene costos relacionados a un mantenimiento
  Future<List<dynamic>> getByMantenimiento(String mantenimientoId);

  /// Guarda o actualiza un costo
  Future<void> save(dynamic costo);

  /// Elimina un costo
  Future<void> delete(String id);

  /// Calcula costo total de un animal
  Future<double> getCostoTotal(String animalId);

  /// Calcula costo promedio mensual
  Future<double> getCostoPromediMensual(String animalId);

  /// Obtiene desglose de costos por tipo
  Future<Map<String, double>> getDesglosePorTipo(String animalId);

  /// Obtiene estadísticas de costos
  Future<Map<String, dynamic>> getEstadisticas(String animalId);

  /// Observa cambios en tiempo real
  Stream<List<dynamic>> watchByAnimalId(String animalId);
}
