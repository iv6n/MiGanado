import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/mantenimiento_usecases.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============================================================================
// PROVIDERS - Use Cases
// ============================================================================

final registerMaintenanceEventUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return RegisterMaintenanceEventUseCase(database: database);
  },
);

final getMaintenanceHistoryUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return GetMaintenanceHistoryUseCase(database: database);
  },
);

final getUpcomingDosagesUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return GetUpcomingDosagesUseCase(database: database);
  },
);

// ============================================================================
// PROVIDERS - Data
// ============================================================================

/// Obtener historial de mantenimiento para un animal
final historialMantenimientoProvider =
    FutureProvider.family<List<EventoMantenimiento>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(getMaintenanceHistoryUseCaseProvider);
  return useCase.call(animalUuid);
});

/// Obtener próximas dosis pendientes
final upcomingDosagesProvider =
    FutureProvider.family<List<EventoMantenimiento>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(getUpcomingDosagesUseCaseProvider);
  return useCase.call(animalUuid);
});

// ============================================================================
// STATE - Para registrar mantenimiento
// ============================================================================

class RegisterMaintenanceEventState {
  final String animalUuid;
  final String type;
  final String description;
  final DateTime date;
  final String? veterinarian;
  final String? medicament;
  final String? appliedDosage;
  final String? applicationRoute;
  final DateTime? nextDosage;
  final String? observations;
  final bool isLoading;
  final String? error;
  final bool successful;

  RegisterMaintenanceEventState({
    required this.animalUuid,
    this.type = 'Vaccination',
    this.description = '',
    required this.date,
    this.veterinarian,
    this.medicament,
    this.appliedDosage,
    this.applicationRoute,
    this.nextDosage,
    this.observations,
    this.isLoading = false,
    this.error,
    this.successful = false,
  });

  RegisterMaintenanceEventState copyWith({
    String? animalUuid,
    String? type,
    String? description,
    DateTime? date,
    String? veterinarian,
    String? medicament,
    String? appliedDosage,
    String? applicationRoute,
    DateTime? nextDosage,
    String? observations,
    bool? isLoading,
    String? error,
    bool? successful,
  }) {
    return RegisterMaintenanceEventState(
      animalUuid: animalUuid ?? this.animalUuid,
      type: type ?? this.type,
      description: description ?? this.description,
      date: date ?? this.date,
      veterinarian: veterinarian ?? this.veterinarian,
      medicament: medicament ?? this.medicament,
      appliedDosage: appliedDosage ?? this.appliedDosage,
      applicationRoute: applicationRoute ?? this.applicationRoute,
      nextDosage: nextDosage ?? this.nextDosage,
      observations: observations ?? this.observations,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      successful: successful ?? this.successful,
    );
  }

  @override
  String toString() =>
      'RegisterMaintenanceEventState(animal: $animalUuid, type: $type, loading: $isLoading)';
}

// ============================================================================
// NOTIFIER - Para registrar mantenimiento
// ============================================================================

class RegisterMaintenanceEventNotifier
    extends StateNotifier<RegisterMaintenanceEventState> {
  final RegisterMaintenanceEventUseCase useCase;
  final Ref ref;

  RegisterMaintenanceEventNotifier({
    required this.useCase,
    required this.ref,
    required String animalUuid,
  }) : super(RegisterMaintenanceEventState(
          animalUuid: animalUuid,
          date: DateTime.now(),
        ));

  void updateType(String type) {
    state = state.copyWith(type: type);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void updateDate(DateTime date) {
    state = state.copyWith(date: date);
  }

  void updateVeterinarian(String veterinarian) {
    state = state.copyWith(veterinarian: veterinarian);
  }

  void updateMedicament(String medicament) {
    state = state.copyWith(medicament: medicament);
  }

  void updateAppliedDosage(String appliedDosage) {
    state = state.copyWith(appliedDosage: appliedDosage);
  }

  void updateApplicationRoute(String applicationRoute) {
    state = state.copyWith(applicationRoute: applicationRoute);
  }

  void updateNextDosage(DateTime nextDosage) {
    state = state.copyWith(nextDosage: nextDosage);
  }

  void updateObservations(String observations) {
    state = state.copyWith(observations: observations);
  }

  Future<void> register() async {
    if (state.type.isEmpty) {
      state = state.copyWith(error: 'Selecciona un tipo de mantenimiento');
      return;
    }

    if (state.description.isEmpty) {
      state = state.copyWith(error: 'La descripción es requerida');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await useCase.call(
        animalUuid: state.animalUuid,
        type: state.type,
        description: state.description,
        date: state.date,
        veterinarian: state.veterinarian,
        medicament: state.medicament,
        appliedDosage: state.appliedDosage,
        applicationRoute: state.applicationRoute,
        nextDosage: state.nextDosage,
        observations: state.observations,
      );

      // Invalidar historial para refrescar
      ref.invalidate(historialMantenimientoProvider(state.animalUuid));

      state = state.copyWith(isLoading: false, successful: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        successful: false,
      );
    }
  }

  void reset() {
    state = RegisterMaintenanceEventState(
      animalUuid: state.animalUuid,
      date: DateTime.now(),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ============================================================================
// PROVIDER - Notifier para registrar mantenimiento
// ============================================================================

final registerMaintenanceEventProvider = StateNotifierProvider.family<
    RegisterMaintenanceEventNotifier,
    RegisterMaintenanceEventState,
    String>((ref, animalUuid) {
  final useCase = ref.watch(registerMaintenanceEventUseCaseProvider);
  return RegisterMaintenanceEventNotifier(
    useCase: useCase,
    ref: ref,
    animalUuid: animalUuid,
  );
});
