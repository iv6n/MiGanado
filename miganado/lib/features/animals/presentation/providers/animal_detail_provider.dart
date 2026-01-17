import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/domain/entities/animal_detail.dart';
import 'package:miganado/features/animals/domain/usecases/get_animal_detail_usecase.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============================================================================
// PROVIDERS - Casos de uso
// ============================================================================

/// Provider del use case para obtener detalles
final getAnimalDetailUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return GetAnimalDetailUseCase(database: database);
  },
);

// ============================================================================
// PROVIDERS - Datos
// ============================================================================

/// Provider para obtener detalles de un animal por UUID
/// Uso: ref.watch(animalDetailProvider(uuid))
final animalDetailProvider =
    FutureProvider.family<AnimalDetail, String>((ref, uuid) async {
  final useCase = ref.watch(getAnimalDetailUseCaseProvider);
  return useCase.call(uuid);
});

// ============================================================================
// STATE - Para editar observaciones
// ============================================================================

class ObservacionesState {
  final String animalUuid;
  final String observaciones;
  final bool isLoading;
  final String? error;

  ObservacionesState({
    required this.animalUuid,
    required this.observaciones,
    this.isLoading = false,
    this.error,
  });

  ObservacionesState copyWith({
    String? animalUuid,
    String? observaciones,
    bool? isLoading,
    String? error,
  }) {
    return ObservacionesState(
      animalUuid: animalUuid ?? this.animalUuid,
      observaciones: observaciones ?? this.observaciones,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  String toString() =>
      'ObservacionesState(uuid: $animalUuid, observaciones: $observaciones, loading: $isLoading, error: $error)';
}

// ============================================================================
// NOTIFIER - Para actualizar observaciones
// ============================================================================

class ObservacionesNotifier extends StateNotifier<ObservacionesState> {
  final MiGanadoDatabase database;

  ObservacionesNotifier({
    required this.database,
    required String animalUuid,
    required String observacionesIniciales,
  }) : super(
          ObservacionesState(
            animalUuid: animalUuid,
            observaciones: observacionesIniciales,
          ),
        );

  /// Actualizar el contenido de las observaciones
  void updateObservaciones(String newObservaciones) {
    state = state.copyWith(
      observaciones: newObservaciones,
      error: null,
    );
  }

  /// Guardar las observaciones a la base de datos
  Future<void> guardar() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Obtener el animal actual
      final animalEntity = await database.getAnimalByUuid(state.animalUuid);
      if (animalEntity == null) {
        throw Exception('Animal no encontrado');
      }

      // Actualizar las observaciones
      animalEntity.observaciones = state.observaciones;
      animalEntity.fechaActualizacion = DateTime.now();

      // Guardar a Isar
      await database.updateAnimal(animalEntity);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error al guardar: $e',
      );
    }
  }

  /// Limpiar error
  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ============================================================================
// PROVIDER - Para el notifier de observaciones
// ============================================================================

final observacionesProvider = StateNotifierProvider.family<
    ObservacionesNotifier, ObservacionesState, String>((ref, animalUuid) {
  final database = ref.watch(databaseProvider);
  const observacionesIniciales = '';

  return ObservacionesNotifier(
    database: database,
    animalUuid: animalUuid,
    observacionesIniciales: observacionesIniciales,
  );
});
