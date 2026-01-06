import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/costs/data/models/costo_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ COSTOS PROVIDERS ============

/// Provider que obtiene costos de un animal
final costosByAnimalProvider =
    FutureProvider.family<List<CostoModel>, String>((ref, animalId) async {
  final database = ref.watch(databaseProvider);
  return await database.getCostosByAnimalId(animalId);
});

/// Provider que obtiene el total de costos de un animal
final totalCostosByAnimalProvider =
    FutureProvider.family<double, String>((ref, animalId) async {
  final database = ref.watch(databaseProvider);
  return await database.getTotalCostosByAnimalId(animalId);
});

/// Provider que obtiene todos los costos
final allCostosProvider = FutureProvider<List<CostoModel>>((ref) async {
  final database = ref.watch(databaseProvider);
  // Obtener todos los costos iterando a través de todos los animales
  final allAnimales = await ref.watch(allAnimalesProvider.future);
  final List<CostoModel> allCostos = [];

  for (var animal in allAnimales) {
    final costos = await database.getCostosByAnimalId(animal.id);
    allCostos.addAll(costos);
  }

  return allCostos;
});

// ============ CREATE/UPDATE COSTOS ============

/// State notifier para crear/actualizar costos
class CostoNotifier extends StateNotifier<AsyncValue<void>> {
  final MiGanadoDatabaseTyped database;

  CostoNotifier(this.database) : super(const AsyncValue.data(null));

  Future<void> saveCosto(CostoModel costo) async {
    state = const AsyncValue.loading();
    try {
      await database.saveCosto(costo);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> deleteCosto(String id) async {
    state = const AsyncValue.loading();
    try {
      await database.deleteCosto(id);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

/// Provider para el notifier de costos
final costoNotifierProvider =
    StateNotifierProvider<CostoNotifier, AsyncValue<void>>((ref) {
  final database = ref.watch(databaseProvider);
  return CostoNotifier(database);
});

// ============ STATISTICS ============

/// Provider que calcula estadísticas de costos
final costosStatisticsProvider = FutureProvider<CostoStatistics>((ref) async {
  final costos = await ref.watch(allCostosProvider.future);

  if (costos.isEmpty) {
    return CostoStatistics.empty();
  }

  double total = 0;
  double minCosto = costos.first.monto;
  double maxCosto = costos.first.monto;
  final tipoCostoCounts = <TipoCosto, int>{};

  for (var costo in costos) {
    total += costo.monto;
    if (costo.monto < minCosto) minCosto = costo.monto;
    if (costo.monto > maxCosto) maxCosto = costo.monto;

    tipoCostoCounts[costo.tipo] = (tipoCostoCounts[costo.tipo] ?? 0) + 1;
  }

  double promedio = total / costos.length;

  return CostoStatistics(
    totalCostos: total,
    promedioCostos: promedio,
    minCosto: minCosto,
    maxCosto: maxCosto,
    cantidadRegistros: costos.length,
    desglosePorTipo: tipoCostoCounts,
  );
});

/// Estadísticas de costos
class CostoStatistics {
  final double totalCostos;
  final double promedioCostos;
  final double minCosto;
  final double maxCosto;
  final int cantidadRegistros;
  final Map<TipoCosto, int> desglosePorTipo;

  CostoStatistics({
    required this.totalCostos,
    required this.promedioCostos,
    required this.minCosto,
    required this.maxCosto,
    required this.cantidadRegistros,
    required this.desglosePorTipo,
  });

  factory CostoStatistics.empty() {
    return CostoStatistics(
      totalCostos: 0,
      promedioCostos: 0,
      minCosto: 0,
      maxCosto: 0,
      cantidadRegistros: 0,
      desglosePorTipo: {},
    );
  }
}
