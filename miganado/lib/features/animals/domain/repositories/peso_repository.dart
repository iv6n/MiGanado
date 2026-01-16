import 'package:miganado/features/animals/data/models/peso_registro.dart';

/// Repositorio abstracto para operaciones de pesajes
abstract class PesoRepository {
  /// Obtiene un pesaje por su ID
  Future<PesoRegistro?> getById(String id);

  /// Obtiene todos los pesajes de un animal
  Future<List<PesoRegistro>> getByAnimalId(String animalId);

  /// Obtiene el pesaje más reciente de un animal
  Future<PesoRegistro?> getUltimoPeso(String animalId);

  /// Obtiene pesajes por rango de fechas
  Future<List<PesoRegistro>> getByFechaRango(
    String animalId,
    DateTime inicio,
    DateTime fin,
  );

  /// Guarda o actualiza un pesaje
  Future<void> save(PesoRegistro peso);

  /// Elimina un pesaje
  Future<void> delete(String id);

  /// Obtiene ganancia de peso total
  Future<double> getGananciaPeso(String animalId);

  /// Obtiene promedio de ganancia mensual
  Future<double> getPromedioGananciaMensual(String animalId);

  /// Obtiene cantidad total de pesajes
  Future<int> getTotalPesajes(String animalId);

  /// Obtiene estadísticas de peso
  Future<Map<String, dynamic>> getEstadisticas(String animalId);

  /// Observa cambios en tiempo real de pesajes
  Stream<List<PesoRegistro>> watchByAnimalId(String animalId);
}
