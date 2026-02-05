import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Caso de uso para registrar un nuevo tratamiento médico
class RegisterTreatmentUseCase {
  final MiGanadoDatabase database;

  RegisterTreatmentUseCase({required this.database});

  /// Registra un nuevo tratamiento médico para un animal
  /// Incluye medicamento, dosis, frecuencia y costos asociados
  Future<void> call({
    required String animalUuid,
    required String reason,
    required String medicament,
    required DateTime startDate,
    required String dosage,
    required String administrationRoute,
    required int durationDays,
    required String frequency,
    required String recordedBy,
    String? brand,
    String? lot,
    DateTime? endDate,
    String? result,
    String? priorDiagnosis,
    String? finalDiagnosis,
    double? medicamentCost,
    double? veterinaryCost,
    String? observations,
    String? diagnosedBy,
  }) async {
    final treatment = TratamientoEntity(
      animalUuid: animalUuid,
      motivo: reason,
      medicamento: medicament,
      fechaInicio: startDate,
      dosis: dosage,
      viaAplicacion: administrationRoute,
      duracionDias: durationDays,
      frecuencia: frequency,
      registradoPor: recordedBy,
      marca: brand,
      lote: lot,
      fechaFin: endDate,
      resultado: result,
      diagnosticoPrevio: priorDiagnosis,
      diagnosticoFinal: finalDiagnosis,
      costoMedicina: medicamentCost,
      costoVeterinario: veterinaryCost,
      costoTotal: (medicamentCost ?? 0) + (veterinaryCost ?? 0),
      observaciones: observations,
      diagnosticadoPor: diagnosedBy,
    );

    await database.saveTratamiento(treatment);
  }
}

/// Caso de uso para obtener el historial de tratamientos
class GetTreatmentsUseCase {
  final MiGanadoDatabase database;

  GetTreatmentsUseCase({required this.database});

  /// Obtiene todos los tratamientos registrados para un animal
  Future<List<TratamientoEntity>> call({
    required String animalUuid,
  }) async {
    return database.getTratamientosByAnimal(animalUuid);
  }
}

/// Caso de uso para actualizar un tratamiento existente
class UpdateTreatmentUseCase {
  final MiGanadoDatabase database;

  UpdateTreatmentUseCase({required this.database});

  /// Actualiza los datos de un tratamiento ya registrado
  Future<void> call({
    required TratamientoEntity treatment,
  }) async {
    await database.updateTratamiento(treatment);
  }
}

/// Caso de uso para finalizar un tratamiento
class FinishTreatmentUseCase {
  final MiGanadoDatabase database;

  FinishTreatmentUseCase({required this.database});

  /// Finaliza un tratamiento y registra el resultado y diagnóstico final
  Future<void> call({
    required TratamientoEntity treatment,
    required String result,
    String? finalDiagnosis,
    String? observations,
  }) async {
    final updated = treatment.copyWith(
      fechaFin: DateTime.now(),
      resultado: result,
      diagnosticoFinal: finalDiagnosis,
      observaciones: observations,
    );

    await database.updateTratamiento(updated);
  }
}
