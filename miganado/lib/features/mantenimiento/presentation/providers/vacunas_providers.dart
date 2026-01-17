import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/vacunas_usecases.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Use cases
final registrarVacunaUseCaseProvider = Provider<RegistrarVacunaUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarVacunaUseCase(database: database);
});

final obtenerVacunasUseCaseProvider = Provider<ObtenerVacunasUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerVacunasUseCase(database: database);
});

final actualizarVacunaUseCaseProvider =
    Provider<ActualizarVacunaUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ActualizarVacunaUseCase(database: database);
});

final eliminarVacunaUseCaseProvider = Provider<EliminarVacunaUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return EliminarVacunaUseCase(database: database);
});

// Data providers
final vacunasByAnimalProvider =
    FutureProvider.family<List<VacunaEntity>, String>((ref, animalUuid) async {
  final useCase = ref.watch(obtenerVacunasUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

// State providers
final registrandoVacunaProvider = StateProvider<bool>((ref) => false);
