import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/usecases/reproductivo_usecases.dart';
import 'package:miganado/features/animals/data/models/reproductivo_entity.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Use cases
final crearReproductivoUseCaseProvider =
    Provider<CrearReproductivoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return CrearReproductivoUseCase(database: database);
});

final obtenerReproductivoUseCaseProvider =
    Provider<ObtenerReproductivoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerReproductivoUseCase(database: database);
});

final actualizarEstadoReproductivoUseCaseProvider =
    Provider<ActualizarEstadoReproductivoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ActualizarEstadoReproductivoUseCase(database: database);
});

final registrarEmpadreUseCaseProvider =
    Provider<RegistrarEmpadreUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarEmpadreUseCase(database: database);
});

final registrarPartoUseCaseProvider = Provider<RegistrarPartoUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarPartoUseCase(database: database);
});

final finalizarLactanciaUseCaseProvider =
    Provider<FinalizarLactanciaUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return FinalizarLactanciaUseCase(database: database);
});

// Provider para obtener el reproductivo de un animal
final reproductivoProvider =
    FutureProvider.family<ReproductivEntity?, String>((ref, animalUuid) async {
  final useCase = ref.watch(obtenerReproductivoUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

// Provider para refrescar reproductivo
final reproductivoRefreshProvider =
    StateNotifierProvider<ReproductivoRefreshNotifier, bool>((ref) {
  return ReproductivoRefreshNotifier();
});

class ReproductivoRefreshNotifier extends StateNotifier<bool> {
  ReproductivoRefreshNotifier() : super(false);

  void refresh() {
    state = !state;
  }
}
