import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/tratamientos_usecases.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

final registerTreatmentUseCaseProvider =
    Provider<RegisterTreatmentUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegisterTreatmentUseCase(database: database);
});

final getTreatmentsUseCaseProvider = Provider<GetTreatmentsUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return GetTreatmentsUseCase(database: database);
});

final updateTreatmentUseCaseProvider = Provider<UpdateTreatmentUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return UpdateTreatmentUseCase(database: database);
});

final finishTreatmentUseCaseProvider = Provider<FinishTreatmentUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return FinishTreatmentUseCase(database: database);
});

final treatmentsByAnimalProvider =
    FutureProvider.family<List<TratamientoEntity>, String>(
        (ref, animalUuid) async {
  try {
    LoggerService.startOperation(
        'treatmentsByAnimal', 'tratamientos_providers');
    final useCase = ref.watch(getTreatmentsUseCaseProvider);
    final tratamientos = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted(
        'treatmentsByAnimal', 'tratamientos_providers');
    return tratamientos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo tratamientos', appEx, st, 'tratamientos_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar los tratamientos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

final registeringTreatmentProvider = StateProvider<bool>((ref) => false);
