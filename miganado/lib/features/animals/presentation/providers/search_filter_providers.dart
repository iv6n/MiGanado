import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

/// Provider para el término de búsqueda
final searchQueryProvider = StateProvider<String>((ref) => '');

/// Provider para filtro por tipo de animal
final animalTypeFilterProvider = StateProvider<String?>((ref) => null);

/// Provider para filtro por estado (activo/inactivo)
final animalStatusFilterProvider = StateProvider<String?>((ref) => null);

/// Provider de animales filtrados y buscados
final filteredAnimalsProvider = FutureProvider<List<Animal>>((ref) async {
  final allAnimalsAsync = ref.watch(animalsListProvider);

  return allAnimalsAsync.when(
    data: (allAnimals) {
      final searchQuery = ref.watch(searchQueryProvider).toLowerCase();
      final typeFilter = ref.watch(animalTypeFilterProvider);
      final statusFilter = ref.watch(animalStatusFilterProvider);

      var filtered = allAnimals;

      // Filtrar por búsqueda (nombre, código, raza)
      if (searchQuery.isNotEmpty) {
        filtered = filtered.where((animal) {
          return (animal.customName?.toLowerCase().contains(searchQuery) ??
                  false) ||
              animal.earTagNumber.toLowerCase().contains(searchQuery) ||
              animal.breed.toLowerCase().contains(searchQuery);
        }).toList();
      }

      // Filtrar por tipo de animal (categoría)
      if (typeFilter != null && typeFilter.isNotEmpty) {
        filtered = filtered
            .where((animal) => animal.category.toString().contains(typeFilter))
            .toList();
      }

      // Filtrar por etapa de vida (activo se considera como etapa actual)
      if (statusFilter != null) {
        // Simplificación: filtrar por etapa de vida
        filtered = filtered
            .where((animal) =>
                animal.lifeStage.toString().split('.').last == statusFilter)
            .toList();
      }

      return filtered;
    },
    loading: () => [],
    error: (err, stack) => [],
  );
});

/// Provider para obtener tipos de animales únicos
final uniqueAnimalTypesProvider = FutureProvider<List<String>>((ref) async {
  final allAnimalsAsync = ref.watch(animalsListProvider);

  return allAnimalsAsync.when(
    data: (allAnimals) {
      final types = allAnimals
          .map((animal) => animal.category.toString())
          .toSet()
          .toList();
      return types..sort();
    },
    loading: () => [],
    error: (err, stack) => [],
  );
});

/// Provider para contar animales por estado
final animalCountByStatusProvider =
    FutureProvider<(int active, int inactive)>((ref) async {
  final allAnimalsAsync = ref.watch(animalsListProvider);

  return allAnimalsAsync.when(
    data: (allAnimals) {
      // Contar por etapa: activos son los que no están en etapa terminal
      final active = allAnimals
          .where((animal) => animal.lifeStage.toString() != 'desechado')
          .length;
      final inactive = allAnimals
          .where((animal) => animal.lifeStage.toString() == 'desechado')
          .length;
      return (active, inactive);
    },
    loading: () => (0, 0),
    error: (err, stack) => (0, 0),
  );
});

/// Provider para contar animales por tipo
final animalCountByTypeProvider = FutureProvider<Map<String, int>>((ref) async {
  final allAnimalsAsync = ref.watch(animalsListProvider);

  return allAnimalsAsync.when(
    data: (allAnimals) {
      final counts = <String, int>{};

      for (final animal in allAnimals) {
        final categoria = animal.category.toString();
        counts[categoria] = (counts[categoria] ?? 0) + 1;
      }

      return counts;
    },
    loading: () => {},
    error: (err, stack) => {},
  );
});

/// Provider para búsqueda avanzada por rango de edad
class AnimalAgeFilterNotifier extends StateNotifier<(int? min, int? max)> {
  AnimalAgeFilterNotifier() : super((null, null));

  void setMinAge(int? age) {
    state = (age, state.$2);
  }

  void setMaxAge(int? age) {
    state = (state.$1, age);
  }

  void reset() {
    state = (null, null);
  }
}

final animalAgeFilterProvider =
    StateNotifierProvider<AnimalAgeFilterNotifier, (int? min, int? max)>((ref) {
  return AnimalAgeFilterNotifier();
});

/// Provider para búsqueda con filtro de edad
final filteredAnimalsWithAgeProvider =
    FutureProvider<List<Animal>>((ref) async {
  final filteredAsync = ref.watch(filteredAnimalsProvider);
  final (minAge, maxAge) = ref.watch(animalAgeFilterProvider);

  return filteredAsync.when(
    data: (filtered) {
      if (minAge == null && maxAge == null) {
        return filtered;
      }

      return filtered.where((animal) {
        // Aquí podrías calcular la edad del animal usando CalcularEdad
        // Por ahora, solo una estructura base
        return true; // TODO: Implementar cálculo de edad
      }).toList();
    },
    loading: () => [],
    error: (err, stack) => [],
  );
});
