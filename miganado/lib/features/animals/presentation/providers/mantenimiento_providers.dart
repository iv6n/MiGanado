import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';
import 'package:miganado/features/animals/data/repositories/mantenimiento_repository_impl.dart';
import 'package:miganado/features/animals/domain/repositories/mantenimiento_repository.dart';
import 'package:miganado/features/animals/domain/usecases/deducir_alertas_sanitarias.dart';
import 'package:miganado/data/database/hive_database_typed.dart';

/// Provider de la base de datos (reutilizado del animal_providers)
import 'package:miganado/features/animals/presentation/providers/animal_providers.dart'
    show databaseProvider;

/// Provider del repositorio de mantenimientos
final mantenimientoRepositoryProvider =
    Provider<MantenimientoRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return MantenimientoRepositoryImpl(database);
});

/// Provider del use case de deducir alertas
final deducirAlertasProvider = Provider<DeducirAlertasSanitarias>((ref) {
  return DeducirAlertasSanitarias();
});

/// Provider de mantenimientos por animal
final mantenimientosByAnimalProvider =
    FutureProvider.family<List<MantenimientoRegistro>, String>(
        (ref, animalId) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getByAnimalId(animalId);
});

/// Provider de mantenimientos vencidos por animal
final mantenimientosVencidosByAnimalProvider =
    FutureProvider.family<List<MantenimientoRegistro>, String>(
        (ref, animalId) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getVencidosByAnimalId(animalId);
});

/// Provider de mantenimientos próximos por animal
final mantenimientosProximosByAnimalProvider =
    FutureProvider.family<List<MantenimientoRegistro>, String>(
        (ref, animalId) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getProximosByAnimalId(animalId);
});

/// Provider de vencidos globales
final vencidosGlobalProvider =
    FutureProvider<List<MantenimientoRegistro>>((ref) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getVencidosGlobal();
});

/// Provider de próximos globales
final proximosGlobalProvider =
    FutureProvider<List<MantenimientoRegistro>>((ref) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getProximosGlobal();
});

/// Provider de alertas sanitarias por animal
final alertasSanitariasProvider =
    FutureProvider.family<List<String>, String>((ref, animalId) async {
  final mantenimientos =
      await ref.watch(mantenimientosByAnimalProvider(animalId).future);
  final deducirAlertas = ref.watch(deducirAlertasProvider);
  return deducirAlertas.call(mantenimientos);
});

/// Provider de nivel de alerta global
final nivelAlertaGlobalProvider =
    FutureProvider<({String nivel, int vencidos, int proximos})>((ref) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  final vencidos = await repository.getVencidosGlobal();
  final proximos = await repository.getProximosGlobal();

  final nivel = vencidos.isNotEmpty
      ? 'CRÍTICO'
      : proximos.isNotEmpty
          ? 'PRECAUCIÓN'
          : 'OK';

  return (nivel: nivel, vencidos: vencidos.length, proximos: proximos.length);
});

/// Provider de estadísticas de mantenimientos
final estadisticasMantenimientosProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, animalId) async {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return repository.getEstadisticas(animalId);
});

/// StateNotifier para agregar/actualizar mantenimientos
class MantenimientoNotifier extends StateNotifier<AsyncValue<void>> {
  final MantenimientoRepository repository;

  MantenimientoNotifier(this.repository) : super(const AsyncValue.data(null));

  Future<void> addOrUpdate(MantenimientoRegistro mantenimiento) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.save(mantenimiento));
  }

  Future<void> delete(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.delete(id));
  }
}

/// Provider del StateNotifier
final mantenimientoNotifierProvider =
    StateNotifierProvider<MantenimientoNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(mantenimientoRepositoryProvider);
  return MantenimientoNotifier(repository);
});
