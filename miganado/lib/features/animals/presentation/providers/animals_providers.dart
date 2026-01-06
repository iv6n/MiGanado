import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/animals/domain/usecases/calculate_animal_metrics.dart';
import 'package:miganado/features/animals/domain/usecases/filter_animals.dart';
import 'package:miganado/features/animals/domain/usecases/validate_animal.dart';

// ============ DATABASE PROVIDER ============
// Este provider proporciona acceso a la base de datos
final databaseProvider = Provider<MiGanadoDatabaseTyped>((ref) {
  throw UnimplementedError('Debe inicializar el database provider');
});

// ============ ANIMALES PROVIDERS ============

/// Provider que obtiene todos los animales
final allAnimalesProvider = FutureProvider<List<AnimalModel>>((ref) async {
  final database = ref.watch(databaseProvider);
  return await database.getAllAnimales();
});

/// Provider que obtiene un animal por ID
final animalByIdProvider =
    FutureProvider.family<AnimalModel?, String>((ref, id) async {
  final database = ref.watch(databaseProvider);
  return await database.getAnimalById(id);
});

// ============ USE CASES PROVIDERS ============

/// Provider para calcular métricas
final calculateMetricsProvider = Provider<CalculateAnimalMetrics>((ref) {
  return CalculateAnimalMetrics();
});

/// Provider para validar animales
final validateAnimalProvider = Provider<ValidateAnimal>((ref) {
  return ValidateAnimal();
});

/// Provider para filtrar animales
final filterAnimalsProvider = Provider<FilterAnimals>((ref) {
  return FilterAnimals();
});

// ============ FILTERED ANIMALES PROVIDER ============

/// Provider para obtener animales filtrados
final filteredAnimalesProvider =
    FutureProvider.family<List<AnimalModel>, FilterCriteria>(
        (ref, criteria) async {
  final database = ref.watch(databaseProvider);
  final filterUseCase = ref.watch(filterAnimalsProvider);

  final allAnimales = await database.getAllAnimales();

  return filterUseCase(
    animales: allAnimales,
    numeroArete: criteria.numeroArete,
    nombrePersonalizado: criteria.nombrePersonalizado,
    tipo: criteria.tipo,
    sexo: criteria.sexo,
    soloVacunados: criteria.soloVacunados,
    soloDesparasitados: criteria.soloDesparasitados,
    conAlertas: criteria.conAlertas,
  );
});

/// Criterios de filtrado
class FilterCriteria {
  final String? numeroArete;
  final String? nombrePersonalizado;
  final TipoGanado? tipo;
  final Sexo? sexo;
  final bool? soloVacunados;
  final bool? soloDesparasitados;
  final bool? conAlertas;

  FilterCriteria({
    this.numeroArete,
    this.nombrePersonalizado,
    this.tipo,
    this.sexo,
    this.soloVacunados,
    this.soloDesparasitados,
    this.conAlertas,
  });

  FilterCriteria copyWith({
    String? numeroArete,
    String? nombrePersonalizado,
    TipoGanado? tipo,
    Sexo? sexo,
    bool? soloVacunados,
    bool? soloDesparasitados,
    bool? conAlertas,
  }) {
    return FilterCriteria(
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      tipo: tipo ?? this.tipo,
      sexo: sexo ?? this.sexo,
      soloVacunados: soloVacunados ?? this.soloVacunados,
      soloDesparasitados: soloDesparasitados ?? this.soloDesparasitados,
      conAlertas: conAlertas ?? this.conAlertas,
    );
  }
}

// ============ CREATE/UPDATE ANIMALS ============

/// State notifier para crear/actualizar animales
class AnimalNotifier extends StateNotifier<AsyncValue<void>> {
  final MiGanadoDatabaseTyped database;

  AnimalNotifier(this.database) : super(const AsyncValue.data(null));

  Future<void> saveAnimal(AnimalModel animal) async {
    state = const AsyncValue.loading();
    try {
      await database.saveAnimal(animal);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> deleteAnimal(String id) async {
    state = const AsyncValue.loading();
    try {
      await database.deleteAnimal(id);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

/// Provider para el notifier de animales
final animalNotifierProvider =
    StateNotifierProvider<AnimalNotifier, AsyncValue<void>>((ref) {
  final database = ref.watch(databaseProvider);
  return AnimalNotifier(database);
});
