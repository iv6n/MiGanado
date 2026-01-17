import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

class RegistrarTratamientoUseCase {
  final MiGanadoDatabase database;

  RegistrarTratamientoUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String motivo,
    required String medicamento,
    required DateTime fechaInicio,
    required String dosis,
    required String viaAplicacion,
    required int duracionDias,
    required String frecuencia,
    required String registradoPor,
    String? marca,
    String? lote,
    DateTime? fechaFin,
    String? resultado,
    String? diagnosticoPrevio,
    String? diagnosticoFinal,
    double? costoMedicamento,
    double? costoVeterinario,
    String? observaciones,
    String? diagnosticadoPor,
  }) async {
    final tratamiento = TratamientoEntity(
      animalUuid: animalUuid,
      motivo: motivo,
      medicamento: medicamento,
      fechaInicio: fechaInicio,
      dosis: dosis,
      viaAplicacion: viaAplicacion,
      duracionDias: duracionDias,
      frecuencia: frecuencia,
      registradoPor: registradoPor,
      marca: marca,
      lote: lote,
      fechaFin: fechaFin,
      resultado: resultado,
      diagnosticoPrevio: diagnosticoPrevio,
      diagnosticoFinal: diagnosticoFinal,
      costoMedicamento: costoMedicamento,
      costoVeterinario: costoVeterinario,
      costoTotal: (costoMedicamento ?? 0) + (costoVeterinario ?? 0),
      observaciones: observaciones,
      diagnosticadoPor: diagnosticadoPor,
    );

    await database.saveTratamiento(tratamiento);
  }
}

class ObtenerTratamientosUseCase {
  final MiGanadoDatabase database;

  ObtenerTratamientosUseCase({required this.database});

  Future<List<TratamientoEntity>> call({
    required String animalUuid,
  }) async {
    return database.getTratamientosByAnimal(animalUuid);
  }
}

class ActualizarTratamientoUseCase {
  final MiGanadoDatabase database;

  ActualizarTratamientoUseCase({required this.database});

  Future<void> call({
    required TratamientoEntity tratamiento,
  }) async {
    await database.updateTratamiento(tratamiento);
  }
}

class FinalizarTratamientoUseCase {
  final MiGanadoDatabase database;

  FinalizarTratamientoUseCase({required this.database});

  Future<void> call({
    required TratamientoEntity tratamiento,
    required String resultado,
    String? diagnosticoFinal,
    String? observaciones,
  }) async {
    final updated = tratamiento.copyWith(
      fechaFin: DateTime.now(),
      resultado: resultado,
      diagnosticoFinal: diagnosticoFinal,
      observaciones: observaciones,
    );

    await database.updateTratamiento(updated);
  }
}
