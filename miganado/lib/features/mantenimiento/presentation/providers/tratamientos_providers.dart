import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/tratamientos_usecases.dart';

final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

final registrarTratamientoUseCaseProvider =
    Provider<RegistrarTratamientoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarTratamientoUseCase(database: database);
});

final obtenerTratamientosUseCaseProvider =
    Provider<ObtenerTratamientosUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerTratamientosUseCase(database: database);
});

final actualizarTratamientoUseCaseProvider =
    Provider<ActualizarTratamientoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ActualizarTratamientoUseCase(database: database);
});

final finalizarTratamientoUseCaseProvider =
    Provider<FinalizarTratamientoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return FinalizarTratamientoUseCase(database: database);
});

final tratamientosByAnimalProvider =
    FutureProvider.family<List<TratamientoEntity>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(obtenerTratamientosUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

final registrandoTratamientoProvider = StateProvider<bool>((ref) => false);
