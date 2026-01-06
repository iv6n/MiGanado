import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/ubicacion_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ UBICACIONES PROVIDERS ============

/// Provider que obtiene una ubicación por ID
final ubicacionByIdProvider =
    FutureProvider.family<UbicacionModel?, String>((ref, id) async {
  final database = ref.watch(databaseProvider);
  return await database.getUbicacionById(id);
});

/// Provider que obtiene todas las ubicaciones
final allUbicacionesProvider =
    FutureProvider<List<UbicacionModel>>((ref) async {
  final database = ref.watch(databaseProvider);
  return await database.getAllUbicaciones();
});

// ============ CREATE/UPDATE UBICACIONES ============

/// State notifier para crear/actualizar ubicaciones
class UbicacionNotifier extends StateNotifier<AsyncValue<void>> {
  final database;

  UbicacionNotifier(this.database) : super(const AsyncValue.data(null));

  Future<void> saveUbicacion(UbicacionModel ubicacion) async {
    state = const AsyncValue.loading();
    try {
      await database.saveUbicacion(ubicacion);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> deleteUbicacion(String id) async {
    state = const AsyncValue.loading();
    try {
      await database.deleteUbicacion(id);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

/// Provider para el notifier de ubicaciones
final ubicacionNotifierProvider =
    StateNotifierProvider<UbicacionNotifier, AsyncValue<void>>((ref) {
  final database = ref.watch(databaseProvider);
  return UbicacionNotifier(database);
});
