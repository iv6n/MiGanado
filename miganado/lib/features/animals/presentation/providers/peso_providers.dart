import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/peso_registro.dart';
import 'package:miganado/features/animals/data/repositories/peso_repository_impl.dart';
import 'package:miganado/features/animals/domain/repositories/peso_repository.dart';
import 'package:miganado/features/animals/presentation/providers/animal_providers.dart'
    show databaseProvider;

/// Provider del repositorio de pesos
final pesoRepositoryProvider = Provider<PesoRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return PesoRepositoryImpl(database);
});

/// Provider de pesos por animal
final pesosByAnimalProvider =
    FutureProvider.family<List<PesoRegistro>, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getByAnimalId(animalId);
});

/// Provider del último peso de un animal
final ultimoPesoProvider =
    FutureProvider.family<PesoRegistro?, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getUltimoPeso(animalId);
});

/// Provider de ganancia de peso total
final gananciaPesoProvider =
    FutureProvider.family<double, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getGananciaPeso(animalId);
});

/// Provider de promedio de ganancia mensual
final promedioGananciaMensualProvider =
    FutureProvider.family<double, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getPromedioGananciaMensual(animalId);
});

/// Provider de total de pesajes
final totalPesajesProvider =
    FutureProvider.family<int, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getTotalPesajes(animalId);
});

/// Provider de estadísticas de peso
final estadisticasPesoProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, animalId) async {
  final repository = ref.watch(pesoRepositoryProvider);
  return repository.getEstadisticas(animalId);
});

/// StateNotifier para agregar/actualizar pesos
class PesoNotifier extends StateNotifier<AsyncValue<void>> {
  final PesoRepository repository;

  PesoNotifier(this.repository) : super(const AsyncValue.data(null));

  Future<void> addOrUpdate(PesoRegistro peso) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.save(peso));
  }

  Future<void> delete(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.delete(id));
  }
}

/// Provider del StateNotifier
final pesoNotifierProvider =
    StateNotifierProvider<PesoNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(pesoRepositoryProvider);
  return PesoNotifier(repository);
});
