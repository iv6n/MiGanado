import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/locations/data/models/ubicacion_entity.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

/// ============================================================================
/// DATABASE PROVIDER - Punto único de acceso a la base de datos
/// ============================================================================

/// Provider principal - Se inicializa en main.dart con overrides
///
/// Uso:
/// ```dart
/// final database = ref.watch(databaseProvider);
/// ```
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  throw UnimplementedError(
    'databaseProvider debe inicializarse en main.dart con overrides',
  );
});

/// ============================================================================
/// PROVIDERS DE DATOS - Acceso a colecciones principales
/// ============================================================================

/// Obtener lista de todos los animales
///
/// Estados posibles:
/// - loading: Cargando datos
/// - error: Error durante la carga
/// - data: Lista de animales (puede estar vacía)
final animalsListProvider = FutureProvider<List<AnimalEntity>>((ref) async {
  try {
    LoggerService.startOperation('getAllAnimales', 'database_providers');
    final database = ref.watch(databaseProvider);
    final animals = await database.getAllAnimales();
    LoggerService.operationCompleted('getAllAnimales', 'database_providers');
    return animals;
  } on Exception catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando animales', appEx, st, 'database_providers');
    throw DatabaseException(
        message: 'No se pudieron cargar los animales: ${appEx.message}');
  }
});

/// Obtener lista de todas las ubicaciones
final ubicacionesListProvider =
    FutureProvider<List<UbicacionEntity>>((ref) async {
  try {
    LoggerService.startOperation('getAllUbicaciones', 'database_providers');
    final database = ref.watch(databaseProvider);
    final ubicaciones = await database.getAllUbicaciones();
    LoggerService.operationCompleted('getAllUbicaciones', 'database_providers');
    return ubicaciones;
  } on Exception catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando ubicaciones', appEx, st, 'database_providers');
    throw DatabaseException(
        message: 'No se pudieron cargar las ubicaciones: ${appEx.message}');
  }
});

/// Obtener lista de todos los eventos ganaderos
final eventosListProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  try {
    LoggerService.startOperation('getAllEventosGanadero', 'database_providers');
    final database = ref.watch(databaseProvider);
    final eventos = await database.getAllEventosGanadero();
    LoggerService.operationCompleted(
        'getAllEventosGanadero', 'database_providers');
    return eventos;
  } on Exception catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error cargando eventos', appEx, st, 'database_providers');
    throw DatabaseException(
        message: 'No se pudieron cargar los eventos: ${appEx.message}');
  }
});

/// ============================================================================
/// REFRESH HELPERS - Para invalidar datos después de cambios
/// ============================================================================

/// Extension en Ref para facilitar invalidación de providers
///
/// Uso:
/// ```dart
/// ref.refreshAnimals();
/// ref.refreshAll();
/// ```
extension RefreshProviders on Ref {
  /// Refrescar lista de animales después de crear/actualizar/eliminar
  void refreshAnimals() {
    invalidate(animalsListProvider);
  }

  /// Refrescar ubicaciones después de cambios
  void refreshUbicaciones() {
    invalidate(ubicacionesListProvider);
  }

  /// Refrescar eventos después de cambios
  void refreshEventos() {
    invalidate(eventosListProvider);
  }

  /// Refrescar todo de una vez
  void refreshAll() {
    invalidate(animalsListProvider);
    invalidate(ubicacionesListProvider);
    invalidate(eventosListProvider);
  }
}
