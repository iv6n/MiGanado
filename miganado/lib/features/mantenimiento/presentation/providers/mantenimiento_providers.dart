import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/mantenimiento/domain/entities/evento_mantenimiento.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/mantenimiento_usecases.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============================================================================
// PROVIDERS - Use Cases
// ============================================================================

final registrarMantenimientoUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return RegistrarMantenimientoUseCase(database: database);
  },
);

final obtenerHistorialUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return ObtenerHistorialMantenimientoUseCase(database: database);
  },
);

final obtenerProximasDosisUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return ObtenerProximasDosisUseCase(database: database);
  },
);

// ============================================================================
// PROVIDERS - Data
// ============================================================================

/// Obtener historial de mantenimiento para un animal
final historialMantenimientoProvider =
    FutureProvider.family<List<EventoMantenimiento>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(obtenerHistorialUseCaseProvider);
  return useCase.call(animalUuid);
});

/// Obtener próximas dosis pendientes
final proximasDosisProvider =
    FutureProvider.family<List<EventoMantenimiento>, String>(
        (ref, animalUuid) async {
  final useCase = ref.watch(obtenerProximasDosisUseCaseProvider);
  return useCase.call(animalUuid);
});

// ============================================================================
// STATE - Para registrar mantenimiento
// ============================================================================

class RegistrarMantenimientoState {
  final String animalUuid;
  final String tipo;
  final String descripcion;
  final DateTime fecha;
  final String? veterinario;
  final String? medicamento;
  final String? dosisAplicada;
  final String? rutaAplicacion;
  final DateTime? proximaDosis;
  final String? observaciones;
  final bool isLoading;
  final String? error;
  final bool exitoso;

  RegistrarMantenimientoState({
    required this.animalUuid,
    this.tipo = 'Vacunacion',
    this.descripcion = '',
    required this.fecha,
    this.veterinario,
    this.medicamento,
    this.dosisAplicada,
    this.rutaAplicacion,
    this.proximaDosis,
    this.observaciones,
    this.isLoading = false,
    this.error,
    this.exitoso = false,
  });

  RegistrarMantenimientoState copyWith({
    String? animalUuid,
    String? tipo,
    String? descripcion,
    DateTime? fecha,
    String? veterinario,
    String? medicamento,
    String? dosisAplicada,
    String? rutaAplicacion,
    DateTime? proximaDosis,
    String? observaciones,
    bool? isLoading,
    String? error,
    bool? exitoso,
  }) {
    return RegistrarMantenimientoState(
      animalUuid: animalUuid ?? this.animalUuid,
      tipo: tipo ?? this.tipo,
      descripcion: descripcion ?? this.descripcion,
      fecha: fecha ?? this.fecha,
      veterinario: veterinario ?? this.veterinario,
      medicamento: medicamento ?? this.medicamento,
      dosisAplicada: dosisAplicada ?? this.dosisAplicada,
      rutaAplicacion: rutaAplicacion ?? this.rutaAplicacion,
      proximaDosis: proximaDosis ?? this.proximaDosis,
      observaciones: observaciones ?? this.observaciones,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      exitoso: exitoso ?? this.exitoso,
    );
  }

  @override
  String toString() =>
      'RegistrarMantenimientoState(animal: $animalUuid, tipo: $tipo, loading: $isLoading)';
}

// ============================================================================
// NOTIFIER - Para registrar mantenimiento
// ============================================================================

class RegistrarMantenimientoNotifier
    extends StateNotifier<RegistrarMantenimientoState> {
  final RegistrarMantenimientoUseCase useCase;
  final Ref ref;

  RegistrarMantenimientoNotifier({
    required this.useCase,
    required this.ref,
    required String animalUuid,
  }) : super(RegistrarMantenimientoState(
          animalUuid: animalUuid,
          fecha: DateTime.now(),
        ));

  void updateTipo(String tipo) {
    state = state.copyWith(tipo: tipo);
  }

  void updateDescripcion(String descripcion) {
    state = state.copyWith(descripcion: descripcion);
  }

  void updateFecha(DateTime fecha) {
    state = state.copyWith(fecha: fecha);
  }

  void updateVeterinario(String veterinario) {
    state = state.copyWith(veterinario: veterinario);
  }

  void updateMedicamento(String medicamento) {
    state = state.copyWith(medicamento: medicamento);
  }

  void updateDosisAplicada(String dosisAplicada) {
    state = state.copyWith(dosisAplicada: dosisAplicada);
  }

  void updateRutaAplicacion(String rutaAplicacion) {
    state = state.copyWith(rutaAplicacion: rutaAplicacion);
  }

  void updateProximaDosis(DateTime proximaDosis) {
    state = state.copyWith(proximaDosis: proximaDosis);
  }

  void updateObservaciones(String observaciones) {
    state = state.copyWith(observaciones: observaciones);
  }

  Future<void> registrar() async {
    if (state.tipo.isEmpty) {
      state = state.copyWith(error: 'Selecciona un tipo de mantenimiento');
      return;
    }

    if (state.descripcion.isEmpty) {
      state = state.copyWith(error: 'La descripción es requerida');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await useCase.call(
        animalUuid: state.animalUuid,
        tipo: state.tipo,
        descripcion: state.descripcion,
        fecha: state.fecha,
        veterinario: state.veterinario,
        medicamento: state.medicamento,
        dosisAplicada: state.dosisAplicada,
        rutaAplicacion: state.rutaAplicacion,
        proximaDosis: state.proximaDosis,
        observaciones: state.observaciones,
      );

      // Invalidar historial para refrescar
      ref.invalidate(historialMantenimientoProvider(state.animalUuid));

      state = state.copyWith(isLoading: false, exitoso: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        exitoso: false,
      );
    }
  }

  void reset() {
    state = RegistrarMantenimientoState(
      animalUuid: state.animalUuid,
      fecha: DateTime.now(),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ============================================================================
// PROVIDER - Notifier para registrar mantenimiento
// ============================================================================

final registrarMantenimientoProvider = StateNotifierProvider.family<
    RegistrarMantenimientoNotifier,
    RegistrarMantenimientoState,
    String>((ref, animalUuid) {
  final useCase = ref.watch(registrarMantenimientoUseCaseProvider);
  return RegistrarMantenimientoNotifier(
    useCase: useCase,
    ref: ref,
    animalUuid: animalUuid,
  );
});
