import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

/// ============================================================================
/// DATABASE PROVIDER
/// ============================================================================

final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  throw UnimplementedError(
    'databaseProvider debe inicializarse en main.dart con overrides',
  );
});

/// ============================================================================
/// ANIMAL FILTERS STATE
/// ============================================================================

/// Clase para mantener el estado de los filtros
class AnimalFilters {
  final String? searchQuery; // Búsqueda por arete o nombre
  final String? tipoGanado; // vaca, becerro, toro, etc
  final String? sexo; // macho, hembra
  final String? estadoSalud; // vacunado, desparasitado, sano, etc
  final String? ubicacion;

  AnimalFilters({
    this.searchQuery,
    this.tipoGanado,
    this.sexo,
    this.estadoSalud,
    this.ubicacion,
  });

  AnimalFilters copyWith({
    String? searchQuery,
    String? tipoGanado,
    String? sexo,
    String? estadoSalud,
    String? ubicacion,
  }) {
    return AnimalFilters(
      searchQuery: searchQuery ?? this.searchQuery,
      tipoGanado: tipoGanado ?? this.tipoGanado,
      sexo: sexo ?? this.sexo,
      estadoSalud: estadoSalud ?? this.estadoSalud,
      ubicacion: ubicacion ?? this.ubicacion,
    );
  }

  bool get hasFilters =>
      searchQuery != null ||
      tipoGanado != null ||
      sexo != null ||
      estadoSalud != null ||
      ubicacion != null;

  void reset() {}
}

/// ============================================================================
/// FILTERS PROVIDER - Mantiene estado de filtros
/// ============================================================================

final animalFiltersProvider = StateProvider<AnimalFilters>((ref) {
  return AnimalFilters();
});

/// ============================================================================
/// FILTERED ANIMALS PROVIDER - Retorna lista filtrada
/// ============================================================================

final filteredAnimalsProvider = FutureProvider<List<AnimalEntity>>((ref) async {
  try {
    LoggerService.startOperation('getFilteredAnimals', 'animals_providers');
    final database = ref.watch(databaseProvider);
    final filters = ref.watch(animalFiltersProvider);

    // Obtener todos los animales
    var animals = await database.getAllAnimales();

    // Aplicar filtros
    if (filters.searchQuery != null && filters.searchQuery!.isNotEmpty) {
      final query = filters.searchQuery!.toLowerCase();
      animals = animals
          .where((a) =>
              a.earTagNumber.toLowerCase().contains(query) ||
              (a.customName?.toLowerCase().contains(query) ?? false))
          .toList();
    }

    if (filters.tipoGanado != null) {
      animals = animals
          .where((a) =>
              a.lifeStage.toString().split('.').last == filters.tipoGanado)
          .toList();
    }

    if (filters.sexo != null) {
      animals = animals
          .where((a) => a.sex.toString().split('.').last == filters.sexo)
          .toList();
    }

    if (filters.estadoSalud != null) {
      switch (filters.estadoSalud) {
        case 'vacunado':
          // Note: AnimalEntity does not have a vaccinated field
          // This filter should be removed or implemented differently
          break;
        case 'no_vacunado':
          // Note: AnimalEntity does not have a vaccinated field
          break;
        case 'desparasitado':
          // Note: AnimalEntity does not have a dewormed field
          // This filter should be removed or implemented differently
          break;
        case 'no_desparasitado':
          // Note: AnimalEntity does not have a dewormed field
          break;
      }
    }

    if (filters.ubicacion != null && filters.ubicacion!.isNotEmpty) {
      // Note: AnimalEntity does not have a location field
      // This filtering needs to be removed or location field needs to be added
    }

    LoggerService.operationCompleted('getFilteredAnimals', 'animals_providers');
    return animals;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando animales filtrados', appEx, st, 'animals_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar los animales filtrados: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// ============================================================================
/// HELPER PROVIDERS - Opciones para dropdowns
/// ============================================================================

/// ============================================================================
/// HELPER PROVIDERS - Opciones para dropdowns
/// ============================================================================

final tiposGanadoProvider = Provider<List<String>>((ref) {
  return [
    'becerro',
    'becerra',
    'vaquilla',
    'torete',
    'novillo',
    'vaca',
    'toro',
    'potro',
    'potranca',
    'caballo',
    'yegua',
    'burro',
    'burra',
    'mula',
  ];
});

final sexosProvider = Provider<List<String>>((ref) {
  return ['macho', 'hembra'];
});

final estadosSaludProvider = Provider<List<String>>((ref) {
  return ['vacunado', 'no_vacunado', 'desparasitado', 'no_desparasitado'];
});

/// ============================================================================
/// EXTENSIONS
/// ============================================================================

extension AnimalFiltersRef on Ref {
  void setSearchQuery(String query) {
    read(animalFiltersProvider.notifier).state =
        read(animalFiltersProvider).copyWith(searchQuery: query);
  }

  void setTipoGanado(String? tipo) {
    read(animalFiltersProvider.notifier).state =
        read(animalFiltersProvider).copyWith(tipoGanado: tipo);
  }

  void setSexo(String? sexo) {
    read(animalFiltersProvider.notifier).state =
        read(animalFiltersProvider).copyWith(sexo: sexo);
  }

  void setEstadoSalud(String? estado) {
    read(animalFiltersProvider.notifier).state =
        read(animalFiltersProvider).copyWith(estadoSalud: estado);
  }

  void setUbicacion(String? ubicacion) {
    read(animalFiltersProvider.notifier).state =
        read(animalFiltersProvider).copyWith(ubicacion: ubicacion);
  }

  void resetFilters() {
    read(animalFiltersProvider.notifier).state = AnimalFilters();
  }
}
