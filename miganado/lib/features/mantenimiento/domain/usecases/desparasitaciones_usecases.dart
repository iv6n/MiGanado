import 'package:miganado/features/mantenimiento/data/models/desparasitacion_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

class RegistrarDesparasitacionUseCase {
  final MiGanadoDatabase database;

  RegistrarDesparasitacionUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String tipo,
    required String producto,
    required DateTime fecha,
    required String dosis,
    required String viaAplicacion,
    required int diasIntervalo,
    required String registradoPor,
    String? marca,
    String? lote,
    String? aplicadoPor,
    double? costo,
    String? observaciones,
  }) async {
    DateTime? proximaAplicacion;
    if (diasIntervalo > 0) {
      proximaAplicacion = fecha.add(Duration(days: diasIntervalo));
    }

    final desparasitacion = DesparasitacionEntity(
      animalUuid: animalUuid,
      tipo: tipo,
      producto: producto,
      fecha: fecha,
      dosis: dosis,
      viaAplicacion: viaAplicacion,
      diasIntervalo: diasIntervalo,
      registradoPor: registradoPor,
      marca: marca,
      lote: lote,
      aplicadoPor: aplicadoPor,
      proximaAplicacion: proximaAplicacion,
      costo: costo,
      observaciones: observaciones,
    );

    await database.saveDesparasitacion(desparasitacion);
  }
}

class ObtenerDesparasitacionesUseCase {
  final MiGanadoDatabase database;

  ObtenerDesparasitacionesUseCase({required this.database});

  Future<List<DesparasitacionEntity>> call({
    required String animalUuid,
  }) async {
    return database.getDesparasitacionesByAnimal(animalUuid);
  }
}

class ActualizarDesparasitacionUseCase {
  final MiGanadoDatabase database;

  ActualizarDesparasitacionUseCase({required this.database});

  Future<void> call({
    required DesparasitacionEntity desparasitacion,
  }) async {
    await database.updateDesparasitacion(desparasitacion);
  }
}
