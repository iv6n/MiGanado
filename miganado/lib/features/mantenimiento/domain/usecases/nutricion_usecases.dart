import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Caso de uso para registrar un nuevo plan de nutrición
class RegisterNutritionUseCase {
  final MiGanadoDatabase database;

  RegisterNutritionUseCase({required this.database});

  /// Registra un nuevo plan de nutrición para un animal
  /// Cierra automáticamente cualquier plan anterior activo
  Future<void> call({
    required String animalUuid,
    required String feedingType,
    required DateTime startDate,
    required String recordedBy,
    String? mainFeed,
    List<String>? supplements,
    String? dailyQuantity,
    double? costPerDay,
    String? observations,
  }) async {
    // Cerrar nutrición anterior si existe y está activa
    final currentNutrition = await database.getNutricionActual(animalUuid);
    if (currentNutrition != null) {
      final closed = currentNutrition.copyWith(
        fechaFin: startDate,
      );
      await database.updateNutricion(closed);
    }

    final nutrition = NutricionEntity(
      animalUuid: animalUuid,
      tipoAlimentacion: feedingType,
      fechaInicio: startDate,
      registradoPor: recordedBy,
      alimentoPrincipal: mainFeed,
      suplementos: supplements ?? [],
      cantidadDiaria: dailyQuantity,
      costoPorDia: costPerDay,
      observaciones: observations,
    );

    await database.saveNutricion(nutrition);
  }
}

/// Caso de uso para obtener historial de nutrición
class GetNutritionHistoryUseCase {
  final MiGanadoDatabase database;

  GetNutritionHistoryUseCase({required this.database});

  /// Obtiene todo el historial de planes de nutrición de un animal
  Future<List<NutricionEntity>> call({
    required String animalUuid,
  }) async {
    return database.getNutricionByAnimal(animalUuid);
  }
}

/// Caso de uso para obtener plan de nutrición actual
class GetCurrentNutritionUseCase {
  final MiGanadoDatabase database;

  GetCurrentNutritionUseCase({required this.database});

  /// Obtiene el plan de nutrición activo (sin fecha final)
  Future<NutricionEntity?> call({
    required String animalUuid,
  }) async {
    return database.getNutricionActual(animalUuid);
  }
}

/// Caso de uso para finalizar un plan de nutrición
class FinishNutritionUseCase {
  final MiGanadoDatabase database;

  FinishNutritionUseCase({required this.database});

  /// Finaliza un plan de nutrición y registra cambios observados
  Future<void> call({
    required NutricionEntity nutrition,
    String? observedChanges,
  }) async {
    final finished = nutrition.copyWith(
      fechaFin: DateTime.now(),
      cambiosObservados: observedChanges,
    );

    await database.updateNutricion(finished);
  }
}
