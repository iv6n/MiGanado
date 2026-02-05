import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
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
/// GANADERO PROVIDER - Datos del propietario/ganadero
/// ============================================================================

/// Obtener ganadero actual (singleton - debería haber solo uno)
final ganaderoProvider = FutureProvider<GanaderoEntity?>((ref) async {
  try {
    LoggerService.startOperation('getGanadero', 'ganadero_providers');
    final database = ref.watch(databaseProvider);
    final ganaderos = await database.getAllGanaderos();
    LoggerService.operationCompleted('getGanadero', 'ganadero_providers');

    // Retornar el primero (debería ser el único)
    return ganaderos.isNotEmpty ? ganaderos.first : null;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando ganadero', appEx, st, 'ganadero_providers');
    throw DatabaseException(
      message: 'No se pudo cargar los datos del ganadero: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Crear o actualizar ganadero
final updateGanaderoProvider =
    FutureProvider.family<void, GanaderoEntity>((ref, ganadero) async {
  try {
    LoggerService.startOperation('updateGanadero', 'ganadero_providers');
    final database = ref.watch(databaseProvider);
    await database.saveGanadero(ganadero);
    LoggerService.operationCompleted('updateGanadero', 'ganadero_providers');

    // Refrescar el provider
    ref.invalidate(ganaderoProvider);
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error actualizando ganadero', appEx, st, 'ganadero_providers');
    throw DatabaseException(
      message: 'No se pudo actualizar los datos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// ============================================================================
/// EXTENSION REFRESH
/// ============================================================================

extension RefreshGanadero on Ref {
  void refreshGanadero() {
    invalidate(ganaderoProvider);
  }
}
