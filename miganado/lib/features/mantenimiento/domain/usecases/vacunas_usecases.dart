import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

class RegistrarVacunaUseCase {
  final MiGanadoDatabase database;

  RegistrarVacunaUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String tipo,
    required String enfermedad,
    required DateTime fecha,
    required int diasIntervalo,
    required String aplicadoPor,
    required String registradoPor,
    String? producto,
    String? lote,
    String? dosis,
    String? viaAplicacion,
    double? costo,
    String? observaciones,
  }) async {
    DateTime? proximaFecha;
    if (diasIntervalo > 0) {
      proximaFecha = fecha.add(Duration(days: diasIntervalo));
    }

    final vacuna = VacunaEntity(
      animalUuid: animalUuid,
      tipo: tipo,
      enfermedad: enfermedad,
      fecha: fecha,
      diasIntervalo: diasIntervalo,
      aplicadoPor: aplicadoPor,
      registradoPor: registradoPor,
      producto: producto,
      lote: lote,
      dosis: dosis,
      viaAplicacion: viaAplicacion,
      proximaFecha: proximaFecha,
      costo: costo,
      observaciones: observaciones,
    );

    await database.saveVacuna(vacuna);
  }
}

class ObtenerVacunasUseCase {
  final MiGanadoDatabase database;

  ObtenerVacunasUseCase({required this.database});

  Future<List<VacunaEntity>> call({required String animalUuid}) async {
    return database.getVacunasByAnimal(animalUuid);
  }
}

class ActualizarVacunaUseCase {
  final MiGanadoDatabase database;

  ActualizarVacunaUseCase({required this.database});

  Future<void> call({
    required VacunaEntity vacuna,
  }) async {
    await database.updateVacuna(vacuna);
  }
}

class EliminarVacunaUseCase {
  final MiGanadoDatabase database;

  EliminarVacunaUseCase({required this.database});

  Future<void> call({required String vacunaUuid}) async {
    await database.deleteVacuna(vacunaUuid);
  }
}
