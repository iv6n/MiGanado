import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/pesos/domain/entities/pesaje.dart';
import 'package:miganado/features/pesos/domain/usecases/pesos_usecases.dart';
import 'package:miganado/providers/database_providers.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// ============================================================================
// USE CASE PROVIDERS
// ============================================================================

/// Provider para RegistrarPesajeUseCase
final registrarPesajeUseCaseProvider = Provider<RegistrarPesajeUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return RegistrarPesajeUseCase(database);
});

/// Provider para ObtenerHistorialPesosUseCase
final obtenerHistorialPesosUseCaseProvider =
    Provider<ObtenerHistorialPesosUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return ObtenerHistorialPesosUseCase(database);
});

/// Provider para ObtenerAnalisisPesosUseCase
final obtenerAnalisisPesosUseCaseProvider =
    Provider<ObtenerAnalisisPesosUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return ObtenerAnalisisPesosUseCase(database);
});

/// Provider para ObtenerUltimosPesosUseCase
final obtenerUltimosPesosUseCaseProvider =
    Provider<ObtenerUltimosPesosUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return ObtenerUltimosPesosUseCase(database);
});

// ============================================================================
// DATA PROVIDERS (FutureProvider.family)
// ============================================================================

/// Provider para obtener historial de pesajes por animal
/// Usage: ref.watch(historialPesosProvider(animalUuid))
final historialPesosProvider =
    FutureProvider.family<List<Pesaje>, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('historialPesos', 'pesos_providers');
    final useCase = ref.watch(obtenerHistorialPesosUseCaseProvider);
    final pesos = await useCase(animalUuid);
    LoggerService.operationCompleted('historialPesos', 'pesos_providers');
    return pesos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo historial de pesos', appEx, st, 'pesos_providers');
    throw DatabaseException(
      message: 'No se pudo cargar el historial de pesos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Provider para obtener análisis de pesos por animal
/// Usage: ref.watch(analisisPesosProvider(animalUuid))
final analisisPesosProvider =
    FutureProvider.family<AnalisisPesos, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('analisisPesos', 'pesos_providers');
    final useCase = ref.watch(obtenerAnalisisPesosUseCaseProvider);
    final analisis = await useCase(animalUuid);
    LoggerService.operationCompleted('analisisPesos', 'pesos_providers');
    return analisis;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo análisis de pesos', appEx, st, 'pesos_providers');
    throw DatabaseException(
      message: 'No se pudo cargar el análisis de pesos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Provider para obtener últimos pesajes (para gráfico)
/// Usage: ref.watch(ultimosPesosProvider(animalUuid))
final ultimosPesosProvider =
    FutureProvider.family<List<Pesaje>, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('ultimosPesos', 'pesos_providers');
    final useCase = ref.watch(obtenerUltimosPesosUseCaseProvider);
    final pesos = await useCase(animalUuid, limite: 30);
    LoggerService.operationCompleted('ultimosPesos', 'pesos_providers');
    return pesos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo últimos pesos', appEx, st, 'pesos_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar los pesos recientes: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ============================================================================
// FORM STATE PARA REGISTRAR PESAJE
// ============================================================================

/// Estado para el formulario de registrar pesaje
class RegistrarPesajeState {
  final double? peso;
  final String unidad;
  final DateTime? fecha;
  final String? notas;
  final bool isLoading;
  final String? error;
  final bool isSuccess;

  const RegistrarPesajeState({
    this.peso,
    this.unidad = 'kg',
    this.fecha,
    this.notas,
    this.isLoading = false,
    this.error,
    this.isSuccess = false,
  });

  RegistrarPesajeState copyWith({
    double? peso,
    String? unidad,
    DateTime? fecha,
    String? notas,
    bool? isLoading,
    String? error,
    bool? isSuccess,
  }) {
    return RegistrarPesajeState(
      peso: peso ?? this.peso,
      unidad: unidad ?? this.unidad,
      fecha: fecha ?? this.fecha,
      notas: notas ?? this.notas,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  /// Validar si el formulario es válido
  bool get isValid => peso != null && fecha != null;
}

/// Notifier para registrar pesaje
class RegistrarPesajeNotifier extends StateNotifier<RegistrarPesajeState> {
  final RegistrarPesajeUseCase _useCase;
  final String _animalUuid;

  RegistrarPesajeNotifier(this._useCase, this._animalUuid)
      : super(const RegistrarPesajeState());

  void setPeso(double peso) {
    state = state.copyWith(peso: peso, error: null);
  }

  void setUnidad(String unidad) {
    state = state.copyWith(unidad: unidad);
  }

  void setFecha(DateTime fecha) {
    state = state.copyWith(fecha: fecha, error: null);
  }

  void setNotas(String? notas) {
    state = state.copyWith(notas: notas);
  }

  void resetForm() {
    state = const RegistrarPesajeState();
  }

  Future<void> registrar(WidgetRef ref) async {
    if (!state.isValid) {
      state = state.copyWith(error: 'Por favor completa peso y fecha');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await _useCase(
        animalUuid: _animalUuid,
        peso: state.peso!,
        unidad: state.unidad,
        fecha: state.fecha!,
        notas: state.notas,
      );

      state = state.copyWith(isSuccess: true, isLoading: false);

      // Invalidar providers para actualizar listas
      ref.invalidate(historialPesosProvider(_animalUuid));
      ref.invalidate(analisisPesosProvider(_animalUuid));
      ref.invalidate(ultimosPesosProvider(_animalUuid));

      // Reset después de un poco
      Future.delayed(const Duration(milliseconds: 500), () {
        resetForm();
      });
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        isSuccess: false,
      );
    }
  }
}

/// Provider para registrar pesaje (StateNotifierProvider.family)
/// Usage: ref.watch(registrarPesajeProvider(animalUuid))
///        ref.read(registrarPesajeProvider(animalUuid).notifier).registrar()
final registrarPesajeProvider = StateNotifierProvider.family<
    RegistrarPesajeNotifier, RegistrarPesajeState, String>((ref, animalUuid) {
  final useCase = ref.watch(registrarPesajeUseCaseProvider);
  return RegistrarPesajeNotifier(useCase, animalUuid);
});
