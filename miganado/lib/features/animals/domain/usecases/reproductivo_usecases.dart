import 'package:miganado/features/animals/data/models/reproductivo_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

class CrearReproductivoUseCase {
  final MiGanadoDatabase database;

  CrearReproductivoUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String estado,
    required String registradoPor,
    String? observaciones,
  }) async {
    final reproductivo = ReproductivEntity(
      animalUuid: animalUuid,
      estado: estado,
      registradoPor: registradoPor,
      observaciones: observaciones,
    );

    await database.saveReproductivo(reproductivo);
  }
}

class ObtenerReproductivoUseCase {
  final MiGanadoDatabase database;

  ObtenerReproductivoUseCase({required this.database});

  Future<ReproductivEntity?> call({required String animalUuid}) async {
    return database.getReproductivoByAnimal(animalUuid);
  }
}

class ActualizarEstadoReproductivoUseCase {
  final MiGanadoDatabase database;

  ActualizarEstadoReproductivoUseCase({required this.database});

  Future<void> call({
    required ReproductivEntity reproductivo,
    required String nuevoEstado,
  }) async {
    final updated = reproductivo.copyWith(estado: nuevoEstado);
    await database.updateReproductivo(updated);
  }
}

class RegistrarEmpadreUseCase {
  final MiGanadoDatabase database;

  RegistrarEmpadreUseCase({required this.database});

  Future<void> call({
    required ReproductivEntity reproductivo,
    required DateTime fecha,
    required String sementalUuid,
    String? metodo,
    String? observaciones,
  }) async {
    // TODO: Considerar guardar datos del empadre en registro histórico
    // final empadreData = EmpadreData(
    //   fecha: fecha,
    //   sementalUuid: sementalUuid,
    //   metodo: metodo,
    //   observaciones: observaciones,
    // );

    final updated = reproductivo.copyWith(
      estado: 'Gestante',
      fechaEmpadreActual: fecha,
      fechaPartoEstimada: fecha.add(Duration(days: 283)), // ~9 meses
      sementalUuid: sementalUuid,
    );

    // Agregar empadre a la lista (como ignoramos la lista, esto es para referencia)
    await database.updateReproductivo(updated);
  }
}

class RegistrarPartoUseCase {
  final MiGanadoDatabase database;

  RegistrarPartoUseCase({required this.database});

  Future<void> call({
    required ReproductivEntity reproductivo,
    required DateTime fecha,
    int? numeroCrias,
    String? tipoParto,
    String? resultado,
    String? observaciones,
  }) async {
    // TODO: Considerar guardar datos del parto en registro histórico
    // final partoData = PartoData(
    //   fecha: fecha,
    //   numeroCrias: numeroCrias,
    //   tipoParto: tipoParto,
    //   resultado: resultado,
    //   observaciones: observaciones,
    // );

    final updated = reproductivo.copyWith(
      estado: 'Lactante',
      fechaEmpadreActual: null,
      fechaPartoEstimada: null,
    );

    // Incrementar estadísticas (partos y crías)
    updated.totalPartos = (reproductivo.totalPartos) + 1;
    updated.totalCrias = (reproductivo.totalCrias) + (numeroCrias ?? 0);
    if (reproductivo.primerParto == null) {
      updated.primerParto = fecha;
    }
    updated.ultimoParto = fecha;

    await database.updateReproductivo(updated);
  }
}

class FinalizarLactanciaUseCase {
  final MiGanadoDatabase database;

  FinalizarLactanciaUseCase({required this.database});

  Future<void> call({
    required ReproductivEntity reproductivo,
    String? observaciones,
  }) async {
    final updated = reproductivo.copyWith(
      estado: 'En pausa',
      observaciones: observaciones,
    );

    await database.updateReproductivo(updated);
  }
}
