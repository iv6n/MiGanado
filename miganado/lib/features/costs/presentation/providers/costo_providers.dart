import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/costs/data/repositories/costo_repository_impl.dart';
import 'package:miganado/features/costs/domain/repositories/costo_repository.dart';
import 'package:miganado/features/costs/domain/usecases/calcular_costo_total.dart';

/// Provider de la base de datos
final databaseProvider =
    Provider<MiGanadoDatabaseTyped>((ref) => MiGanadoDatabaseTyped());

/// Provider del repositorio de costos
final costoRepositoryProvider = Provider<CostoRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return CostoRepositoryImpl(database);
});

/// Provider del use case para calcular costos
final calcularCostoProvider = Provider<CalcularCostoTotal>((ref) {
  return CalcularCostoTotal();
});

/// Provider de costos por animal
final costosByAnimalProvider =
    FutureProvider.family<List<dynamic>, String>((ref, animalId) async {
  final repository = ref.watch(costoRepositoryProvider);
  return repository.getByAnimalId(animalId);
});

/// Provider de costo total por animal
final costoTotalProvider =
    FutureProvider.family<double, String>((ref, animalId) async {
  final repository = ref.watch(costoRepositoryProvider);
  return repository.getCostoTotal(animalId);
});

/// Provider de costo promedio mensual
final costoPromediMensualProvider =
    FutureProvider.family<double, String>((ref, animalId) async {
  final repository = ref.watch(costoRepositoryProvider);
  return repository.getCostoPromediMensual(animalId);
});

/// Provider de desglose de costos por tipo
final desgloseProvider =
    FutureProvider.family<Map<String, double>, String>((ref, animalId) async {
  final repository = ref.watch(costoRepositoryProvider);
  return repository.getDesglosePorTipo(animalId);
});

/// Provider de estadísticas de costos
final estadisticasCostosProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, animalId) async {
  final repository = ref.watch(costoRepositoryProvider);
  return repository.getEstadisticas(animalId);
});

/// StateNotifier para agregar/actualizar costos
class CostoNotifier extends StateNotifier<AsyncValue<void>> {
  final CostoRepository repository;

  CostoNotifier(this.repository) : super(const AsyncValue.data(null));

  Future<void> addOrUpdate(dynamic costo) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.save(costo));
  }

  Future<void> delete(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.delete(id));
  }
}

/// Provider del StateNotifier
final costoNotifierProvider =
    StateNotifierProvider<CostoNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(costoRepositoryProvider);
  return CostoNotifier(repository);
});
