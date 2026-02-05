import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/nutricion_usecases.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

final registerNutritionUseCaseProvider =
    Provider<RegisterNutritionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegisterNutritionUseCase(database: database);
});

final getNutritionHistoryUseCaseProvider =
    Provider<GetNutritionHistoryUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return GetNutritionHistoryUseCase(database: database);
});

final getCurrentNutritionUseCaseProvider =
    Provider<GetCurrentNutritionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return GetCurrentNutritionUseCase(database: database);
});

final finishNutritionUseCaseProvider = Provider<FinishNutritionUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return FinishNutritionUseCase(database: database);
});

final nutritionByAnimalProvider =
    FutureProvider.family<List<NutricionEntity>, String>(
        (ref, animalUuid) async {
  try {
    LoggerService.startOperation('nutritionByAnimal', 'nutricion_providers');
    final useCase = ref.watch(getNutritionHistoryUseCaseProvider);
    final nutrition = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted(
        'nutritionByAnimal', 'nutricion_providers');
    return nutrition;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo nutrición', appEx, st, 'nutricion_providers');
    throw DatabaseException(
      message: 'No se pudo cargar el historial de nutrición: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

final currentNutritionProvider =
    FutureProvider.family<NutricionEntity?, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('currentNutrition', 'nutricion_providers');
    final useCase = ref.watch(getCurrentNutritionUseCaseProvider);
    final nutrition = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted('currentNutrition', 'nutricion_providers');
    return nutrition;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo nutrición actual', appEx, st, 'nutricion_providers');
    throw DatabaseException(
      message: 'No se pudo cargar la nutrición actual: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

final registeringNutritionProvider = StateProvider<bool>((ref) => false);
