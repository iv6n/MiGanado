import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/animal_model_v2.dart'
    as v2;
import 'package:miganado/features/animals/data/repositories/animal_repository_impl.dart';
import 'package:miganado/features/animals/domain/repositories/animal_repository.dart';

/// Provider de la base de datos
final databaseProvider = Provider<MiGanadoDatabaseTyped>((ref) {
  return MiGanadoDatabaseTyped();
});

/// Provider del repositorio de animales
final animalRepositoryProvider = Provider<AnimalRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return AnimalRepositoryImpl(database);
});

/// Provider de todos los animales (FutureProvider)
final allAnimalesV2Provider = FutureProvider<List<v2.AnimalModel>>((ref) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getAll();
});

/// Provider de animal por ID
final animalByIdProvider =
    FutureProvider.family<v2.AnimalModel?, String>((ref, id) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getById(id);
});

/// Provider de animales por tipo
final animalByTipoProvider =
    FutureProvider.family<List<v2.AnimalModel>, String>((ref, tipo) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getByTipo(tipo);
});

/// Provider de animales por ubicación
final animalByUbicacionProvider =
    FutureProvider.family<List<v2.AnimalModel>, String>(
        (ref, ubicacionId) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getByUbicacion(ubicacionId);
});

/// Provider de total de animales
final totalAnimalesProvider = FutureProvider<int>((ref) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getTotal();
});

/// Provider de estadísticas de animales
final estadisticasAnimalesProvider =
    FutureProvider<Map<String, dynamic>>((ref) async {
  final repository = ref.watch(animalRepositoryProvider);
  return repository.getEstadisticas();
});

/// StateNotifier para agregar/actualizar animales
class AnimalNotifier extends StateNotifier<AsyncValue<void>> {
  final AnimalRepository repository;

  AnimalNotifier(this.repository) : super(const AsyncValue.data(null));

  Future<void> addOrUpdateAnimal(v2.AnimalModel animal) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.save(animal));
  }

  Future<void> deleteAnimal(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.delete(id));
  }
}

/// Provider del StateNotifier para animales
final animalNotifierProvider =
    StateNotifierProvider<AnimalNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(animalRepositoryProvider);
  return AnimalNotifier(repository);
});
