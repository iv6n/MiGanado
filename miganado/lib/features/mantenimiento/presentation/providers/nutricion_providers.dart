import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/nutricion_usecases.dart';

final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

final registrarNutricionUseCaseProvider =
    Provider<RegistrarNutricionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarNutricionUseCase(database: database);
});

final obtenerNutricionUseCaseProvider =
    Provider<ObtenerNutricionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerNutricionUseCase(database: database);
});

final obtenerNutricionActualUseCaseProvider =
    Provider<ObtenerNutricionActualUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerNutricionActualUseCase(database: database);
});

final finalizarNutricionUseCaseProvider =
    Provider<FinalizarNutricionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return FinalizarNutricionUseCase(database: database);
});

final nutricionByAnimalProvider =
    FutureProvider.family<List<NutricionEntity>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(obtenerNutricionUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

final nutricionActualProvider =
    FutureProvider.family<NutricionEntity?, String>((ref, animalUuid) async {
  final useCase = ref.watch(obtenerNutricionActualUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

final registrandoNutricionProvider = StateProvider<bool>((ref) => false);
