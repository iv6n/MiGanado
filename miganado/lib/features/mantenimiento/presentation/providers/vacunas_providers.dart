import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/domain/usecases/vacunas_usecases.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// Database provider
final miganadoDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// Use cases
final registerVaccineUseCaseProvider = Provider<RegisterVaccineUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return RegisterVaccineUseCase(database: database);
});

final getVaccinesUseCaseProvider = Provider<GetVaccinesUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return GetVaccinesUseCase(database: database);
});

final updateVaccineUseCaseProvider = Provider<UpdateVaccineUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return UpdateVaccineUseCase(database: database);
});

final deleteVaccineUseCaseProvider = Provider<DeleteVaccineUseCase>((ref) {
  final database = ref.watch(miganadoDatabaseProvider);
  return DeleteVaccineUseCase(database: database);
});

// Data providers
final vaccinesByAnimalProvider =
    FutureProvider.family<List<VacunaEntity>, String>((ref, animalUuid) async {
  try {
    LoggerService.startOperation('vaccinesByAnimal', 'vacunas_providers');
    final useCase = ref.watch(getVaccinesUseCaseProvider);
    final vaccines = await useCase(animalUuid: animalUuid);
    LoggerService.operationCompleted('vaccinesByAnimal', 'vacunas_providers');
    return vaccines;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo vacunas', appEx, st, 'vacunas_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar las vacunas: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// State providers
final registeringVaccineProvider = StateProvider<bool>((ref) => false);
