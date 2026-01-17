import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/locations/domain/entities/ubicacion.dart';
import 'package:miganado/features/locations/domain/usecases/ubicaciones_usecases.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============================================================================
// PROVIDERS - Use Cases
// ============================================================================

final getAllUbicacionesUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return GetAllUbicacionesUseCase(database: database);
  },
);

final cambiarUbicacionUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return CambiarUbicacionUseCase(database: database);
  },
);

final crearUbicacionUseCaseProvider = Provider(
  (ref) {
    final database = ref.watch(databaseProvider);
    return CrearUbicacionUseCase(database: database);
  },
);

// ============================================================================
// PROVIDERS - Data
// ============================================================================

/// Obtener todas las ubicaciones disponibles
final ubicacionesProvider = FutureProvider<List<Ubicacion>>((ref) async {
  final useCase = ref.watch(getAllUbicacionesUseCaseProvider);
  return useCase.call();
});

// ============================================================================
// STATE - Para cambiar ubicación
// ============================================================================

class CambiarUbicacionState {
  final String animalUuid;
  final String? ubicacionUuidSeleccionada;
  final String? razon;
  final String? observaciones;
  final bool isLoading;
  final String? error;
  final bool exitoso;

  CambiarUbicacionState({
    required this.animalUuid,
    this.ubicacionUuidSeleccionada,
    this.razon,
    this.observaciones,
    this.isLoading = false,
    this.error,
    this.exitoso = false,
  });

  CambiarUbicacionState copyWith({
    String? animalUuid,
    String? ubicacionUuidSeleccionada,
    String? razon,
    String? observaciones,
    bool? isLoading,
    String? error,
    bool? exitoso,
  }) {
    return CambiarUbicacionState(
      animalUuid: animalUuid ?? this.animalUuid,
      ubicacionUuidSeleccionada:
          ubicacionUuidSeleccionada ?? this.ubicacionUuidSeleccionada,
      razon: razon ?? this.razon,
      observaciones: observaciones ?? this.observaciones,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      exitoso: exitoso ?? this.exitoso,
    );
  }

  @override
  String toString() =>
      'CambiarUbicacionState(animal: $animalUuid, ubicacion: $ubicacionUuidSeleccionada, loading: $isLoading)';
}

// ============================================================================
// NOTIFIER - Para cambiar ubicación
// ============================================================================

class CambiarUbicacionNotifier extends StateNotifier<CambiarUbicacionState> {
  final CambiarUbicacionUseCase useCase;

  CambiarUbicacionNotifier({
    required this.useCase,
    required String animalUuid,
  }) : super(
          CambiarUbicacionState(animalUuid: animalUuid),
        );

  void selectUbicacion(String ubicacionUuid) {
    state = state.copyWith(ubicacionUuidSeleccionada: ubicacionUuid);
  }

  void setRazon(String razon) {
    state = state.copyWith(razon: razon);
  }

  void setObservaciones(String observaciones) {
    state = state.copyWith(observaciones: observaciones);
  }

  Future<void> cambiar() async {
    if (state.ubicacionUuidSeleccionada == null) {
      state = state.copyWith(error: 'Selecciona una ubicación');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await useCase.call(
        animalUuid: state.animalUuid,
        ubicacionUuidNueva: state.ubicacionUuidSeleccionada!,
        razon: state.razon,
        observaciones: state.observaciones,
      );

      state = state.copyWith(isLoading: false, exitoso: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        exitoso: false,
      );
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ============================================================================
// PROVIDER - Notifier para cambiar ubicación
// ============================================================================

final cambiarUbicacionProvider = StateNotifierProvider.family<
    CambiarUbicacionNotifier, CambiarUbicacionState, String>((ref, animalUuid) {
  final useCase = ref.watch(cambiarUbicacionUseCaseProvider);
  return CambiarUbicacionNotifier(
    useCase: useCase,
    animalUuid: animalUuid,
  );
});

// ============================================================================
// STATE - Para crear ubicación
// ============================================================================

class CrearUbicacionFormState {
  final String nombre;
  final String? descripcion;
  final String? tipoUbicacion;
  final bool isLoading;
  final String? error;
  final bool exitoso;

  CrearUbicacionFormState({
    this.nombre = '',
    this.descripcion,
    this.tipoUbicacion,
    this.isLoading = false,
    this.error,
    this.exitoso = false,
  });

  CrearUbicacionFormState copyWith({
    String? nombre,
    String? descripcion,
    String? tipoUbicacion,
    bool? isLoading,
    String? error,
    bool? exitoso,
  }) {
    return CrearUbicacionFormState(
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      tipoUbicacion: tipoUbicacion ?? this.tipoUbicacion,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      exitoso: exitoso ?? this.exitoso,
    );
  }
}

// ============================================================================
// NOTIFIER - Para crear ubicación
// ============================================================================

class CrearUbicacionNotifier extends StateNotifier<CrearUbicacionFormState> {
  final CrearUbicacionUseCase useCase;
  final Ref ref;

  CrearUbicacionNotifier({
    required this.useCase,
    required this.ref,
  }) : super(CrearUbicacionFormState());

  void updateNombre(String nombre) {
    state = state.copyWith(nombre: nombre);
  }

  void updateDescripcion(String descripcion) {
    state = state.copyWith(descripcion: descripcion);
  }

  void updateTipoUbicacion(String tipoUbicacion) {
    state = state.copyWith(tipoUbicacion: tipoUbicacion);
  }

  Future<void> crear() async {
    if (state.nombre.trim().isEmpty) {
      state = state.copyWith(error: 'El nombre es requerido');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await useCase.call(
        nombre: state.nombre.trim(),
        descripcion: state.descripcion?.trim(),
        tipoUbicacion: state.tipoUbicacion,
      );

      // Invalidar el provider de ubicaciones para refrescar
      ref.invalidate(ubicacionesProvider);

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
    state = CrearUbicacionFormState();
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ============================================================================
// PROVIDER - Notifier para crear ubicación
// ============================================================================

final crearUbicacionProvider =
    StateNotifierProvider<CrearUbicacionNotifier, CrearUbicacionFormState>(
  (ref) {
    final useCase = ref.watch(crearUbicacionUseCaseProvider);
    return CrearUbicacionNotifier(useCase: useCase, ref: ref);
  },
);
