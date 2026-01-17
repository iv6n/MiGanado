import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/desparasitaciones_usecases.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Use cases
final obtenerDesparasitacionesUseCaseProvider =
    Provider<ObtenerDesparasitacionesUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ObtenerDesparasitacionesUseCase(database: database);
});

final registrarDesparasitacionUseCaseProvider =
    Provider<RegistrarDesparasitacionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegistrarDesparasitacionUseCase(database: database);
});

final actualizarDesparasitacionUseCaseProvider =
    Provider<ActualizarDesparasitacionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return ActualizarDesparasitacionUseCase(database: database);
});

// Provider para obtener desparasitaciones de un animal
final desparasitacionesProvider =
    FutureProvider.family<List<DesparasitacionEntity>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(obtenerDesparasitacionesUseCaseProvider);
  return useCase(animalUuid: animalUuid);
});

// Provider para refrescar desparasitaciones
final desparasitacionesRefreshProvider =
    StateNotifierProvider<DesparasitacionesRefreshNotifier, bool>((ref) {
  return DesparasitacionesRefreshNotifier();
});

class DesparasitacionesRefreshNotifier extends StateNotifier<bool> {
  DesparasitacionesRefreshNotifier() : super(false);

  void refresh() {
    state = !state;
  }
}
