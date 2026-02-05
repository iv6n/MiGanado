import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Caso de uso para registrar una nueva desparasitación
class RegisterDewormedUseCase {
  final MiGanadoDatabase database;

  RegisterDewormedUseCase({required this.database});

  /// Registra una nueva aplicación de desparasitante
  /// Calcula automáticamente la siguiente fecha de aplicación
  Future<void> call({
    required String animalUuid,
    required String type,
    required String product,
    required DateTime date,
    required String dosage,
    required String administrationRoute,
    required int intervalDays,
    required String recordedBy,
    String? brand,
    String? lot,
    String? appliedBy,
    double? cost,
    String? observations,
  }) async {
    DateTime? nextApplication;
    if (intervalDays > 0) {
      nextApplication = date.add(Duration(days: intervalDays));
    }

    final dewormed = DesparasitacionEntity(
      animalUuid: animalUuid,
      tipo: type,
      producto: product,
      fecha: date,
      dosis: dosage,
      viaAplicacion: administrationRoute,
      diasIntervalo: intervalDays,
      registradoPor: recordedBy,
      marca: brand,
      lote: lot,
      aplicadoPor: appliedBy,
      proximaAplicacion: nextApplication,
      costo: cost,
      observaciones: observations,
    );

    await database.saveDesparasitacion(dewormed);
  }
}

/// Caso de uso para obtener el historial de desparasitaciones
class GetDewormedUseCase {
  final MiGanadoDatabase database;

  GetDewormedUseCase({required this.database});

  /// Obtiene todas las desparasitaciones registradas para un animal
  Future<List<DesparasitacionEntity>> call({
    required String animalUuid,
  }) async {
    return database.getDesparasitacionesByAnimal(animalUuid);
  }
}

/// Caso de uso para actualizar informaci ón de una desparasitación
class UpdateDewormedUseCase {
  final MiGanadoDatabase database;

  UpdateDewormedUseCase({required this.database});

  /// Actualiza los datos de una desparasitación ya registrada
  Future<void> call({
    required DesparasitacionEntity dewormed,
  }) async {
    await database.updateDesparasitacion(dewormed);
  }
}
