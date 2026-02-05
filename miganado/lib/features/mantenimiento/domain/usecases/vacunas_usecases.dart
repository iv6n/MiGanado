import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Caso de uso para registrar una nueva vacuna en el sistema
class RegisterVaccineUseCase {
  final MiGanadoDatabase database;

  RegisterVaccineUseCase({required this.database});

  /// Registra una nueva vacuna para un animal
  /// Calcula automáticamente la próxima fecha de aplicación
  Future<void> call({
    required String animalUuid,
    required String type,
    required String disease,
    required DateTime date,
    required int intervalDays,
    required String appliedBy,
    required String recordedBy,
    String? product,
    String? lot,
    String? dosage,
    String? administrationRoute,
    double? cost,
    String? observations,
  }) async {
    DateTime? nextDate;
    if (intervalDays > 0) {
      nextDate = date.add(Duration(days: intervalDays));
    }

    final vaccine = VacunaEntity.crear(
      animalUuid: animalUuid,
      tipo: type,
      enfermedad: disease,
      fecha: date,
      diasIntervalo: intervalDays,
      aplicadoPor: appliedBy,
      registradoPor: recordedBy,
      producto: product,
      lote: lot,
      dosis: dosage,
      viaAplicacion: administrationRoute,
      proximaFecha: nextDate,
      costo: cost,
      observaciones: observations,
    );

    await database.saveVacuna(vaccine);
  }
}

/// Caso de uso para obtener todas las vacunas de un animal
class GetVaccinesUseCase {
  final MiGanadoDatabase database;

  GetVaccinesUseCase({required this.database});

  /// Obtiene todas las vacunas registradas para un animal específico
  Future<List<VacunaEntity>> call({required String animalUuid}) async {
    return database.getVacunasByAnimal(animalUuid);
  }
}

/// Caso de uso para actualizar informaci ón de una vacuna existente
class UpdateVaccineUseCase {
  final MiGanadoDatabase database;

  UpdateVaccineUseCase({required this.database});

  /// Actualiza los datos de una vacuna ya registrada
  Future<void> call({
    required VacunaEntity vaccine,
  }) async {
    await database.updateVacuna(vaccine);
  }
}

/// Caso de uso para eliminar una vacuna del registro
class DeleteVaccineUseCase {
  final MiGanadoDatabase database;

  DeleteVaccineUseCase({required this.database});

  /// Elimina una vacuna del sistema por su UUID
  Future<void> call({required String vaccineUuid}) async {
    await database.deleteVacuna(vaccineUuid);
  }
}
