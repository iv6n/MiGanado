import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/costs/domain/entities/costo.dart';
import 'package:miganado/features/costs/domain/usecases/costos_usecases.dart';
import 'package:miganado/providers/database_providers.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// ============================================================================
// USE CASE PROVIDERS
// ============================================================================

/// Provider para RegistrarCostoUseCase
final registrarCostoUseCaseProvider = Provider<RegistrarCostoUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return RegistrarCostoUseCase(database);
});

/// Provider para ObtenerHistorialCostosUseCase
final obtenerHistorialCostosUseCaseProvider =
    Provider<ObtenerHistorialCostosUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return ObtenerHistorialCostosUseCase(database);
});

/// Provider para ObtenerResumenFinancieroUseCase
final obtenerResumenFinancieroUseCaseProvider =
    Provider<ObtenerResumenFinancieroUseCase>((ref) {
  final database = ref.watch(databaseProvider);
  return ObtenerResumenFinancieroUseCase(database);
});

// ============================================================================
// DATA PROVIDERS (FutureProvider.family)
// ============================================================================

/// Provider para obtener historial de costos por animal
/// Usage: ref.watch(historialCostosProvider(animalUuid))
final historialCostosProvider =
    FutureProvider.family<List<Costo>, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('historialCostos', 'costos_providers');
    final useCase = ref.watch(obtenerHistorialCostosUseCaseProvider);
    final costos = await useCase(animalUuid);
    LoggerService.operationCompleted('historialCostos', 'costos_providers');
    return costos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo historial de costos', appEx, st, 'costos_providers');
    throw DatabaseException(
      message: 'No se pudo cargar el historial de costos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Provider para obtener resumen financiero por animal
/// Usage: ref.watch(resumenFinancieroProvider(animalUuid))
final resumenFinancieroProvider =
    FutureProvider.family<ResumenFinanciero, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('resumenFinanciero', 'costos_providers');
    final useCase = ref.watch(obtenerResumenFinancieroUseCaseProvider);
    final resumen = await useCase(animalUuid);
    LoggerService.operationCompleted('resumenFinanciero', 'costos_providers');
    return resumen;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo resumen financiero', appEx, st, 'costos_providers');
    throw DatabaseException(
      message: 'No se pudo cargar el resumen financiero: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ============================================================================
// FORM STATE PARA REGISTRAR COSTO
// ============================================================================

/// Estado para el formulario de registrar costo
class RegistrarCostoState {
  final String? concepto;
  final double? monto;
  final String moneda;
  final DateTime? fecha;
  final String? categoria;
  final String? eventoMantenimientoUuid;
  final String? descripcion;
  final String? proveedor;
  final bool isLoading;
  final String? error;
  final bool isSuccess;

  const RegistrarCostoState({
    this.concepto,
    this.monto,
    this.moneda = 'COP',
    this.fecha,
    this.categoria,
    this.eventoMantenimientoUuid,
    this.descripcion,
    this.proveedor,
    this.isLoading = false,
    this.error,
    this.isSuccess = false,
  });

  RegistrarCostoState copyWith({
    String? concepto,
    double? monto,
    String? moneda,
    DateTime? fecha,
    String? categoria,
    String? eventoMantenimientoUuid,
    String? descripcion,
    String? proveedor,
    bool? isLoading,
    String? error,
    bool? isSuccess,
  }) {
    return RegistrarCostoState(
      concepto: concepto ?? this.concepto,
      monto: monto ?? this.monto,
      moneda: moneda ?? this.moneda,
      fecha: fecha ?? this.fecha,
      categoria: categoria ?? this.categoria,
      eventoMantenimientoUuid:
          eventoMantenimientoUuid ?? this.eventoMantenimientoUuid,
      descripcion: descripcion ?? this.descripcion,
      proveedor: proveedor ?? this.proveedor,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  /// Validar si el formulario es válido
  bool get isValid => concepto != null && monto != null && fecha != null;
}

/// Notifier para registrar costo
class RegistrarCostoNotifier extends StateNotifier<RegistrarCostoState> {
  final RegistrarCostoUseCase _useCase;
  final String _animalUuid;

  RegistrarCostoNotifier(this._useCase, this._animalUuid)
      : super(const RegistrarCostoState());

  void setConcepto(String concepto) {
    state = state.copyWith(concepto: concepto, error: null);
  }

  void setMonto(double monto) {
    state = state.copyWith(monto: monto, error: null);
  }

  void setMoneda(String moneda) {
    state = state.copyWith(moneda: moneda);
  }

  void setFecha(DateTime fecha) {
    state = state.copyWith(fecha: fecha, error: null);
  }

  void setCategoria(String? categoria) {
    state = state.copyWith(categoria: categoria);
  }

  void setEventoMantenimientoUuid(String? uuid) {
    state = state.copyWith(eventoMantenimientoUuid: uuid);
  }

  void setDescripcion(String? descripcion) {
    state = state.copyWith(descripcion: descripcion);
  }

  void setProveedor(String? proveedor) {
    state = state.copyWith(proveedor: proveedor);
  }

  void resetForm() {
    state = const RegistrarCostoState();
  }

  Future<void> registrar(WidgetRef ref) async {
    if (!state.isValid) {
      state = state.copyWith(error: 'Por favor completa todos los campos');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      await _useCase(
        animalUuid: _animalUuid,
        concepto: state.concepto!,
        monto: state.monto!,
        moneda: state.moneda,
        fecha: state.fecha!,
        categoria: state.categoria,
        eventoMantenimientoUuid: state.eventoMantenimientoUuid,
        descripcion: state.descripcion,
        proveedor: state.proveedor,
      );

      state = state.copyWith(isSuccess: true, isLoading: false);

      // Invalidar providers para actualizar lista
      ref.invalidate(historialCostosProvider(_animalUuid));
      ref.invalidate(resumenFinancieroProvider(_animalUuid));

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

/// Provider para registrar costo (StateNotifierProvider.family)
/// Usage: ref.watch(registrarCostoProvider(animalUuid))
///        ref.read(registrarCostoProvider(animalUuid).notifier).registrar()
final registrarCostoProvider = StateNotifierProvider.family<
    RegistrarCostoNotifier, RegistrarCostoState, String>((ref, animalUuid) {
  final useCase = ref.watch(registrarCostoUseCaseProvider);
  return RegistrarCostoNotifier(useCase, animalUuid);
});
