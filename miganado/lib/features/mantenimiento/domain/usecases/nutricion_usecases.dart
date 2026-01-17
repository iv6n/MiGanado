import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

class RegistrarNutricionUseCase {
  final MiGanadoDatabase database;

  RegistrarNutricionUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String tipoAlimentacion,
    required DateTime fechaInicio,
    required String registradoPor,
    String? alimentoPrincipal,
    List<String>? suplementos,
    String? cantidadDiaria,
    double? costoPorDia,
    String? observaciones,
  }) async {
    // Cerrar nutrición anterior si existe y está activa
    final nutricionActual = await database.getNutricionActual(animalUuid);
    if (nutricionActual != null) {
      final cerrada = nutricionActual.copyWith(
        fechaFin: fechaInicio,
      );
      await database.updateNutricion(cerrada);
    }

    final nutricion = NutricionEntity(
      animalUuid: animalUuid,
      tipoAlimentacion: tipoAlimentacion,
      fechaInicio: fechaInicio,
      registradoPor: registradoPor,
      alimentoPrincipal: alimentoPrincipal,
      suplementos: suplementos ?? [],
      cantidadDiaria: cantidadDiaria,
      costoPorDia: costoPorDia,
      observaciones: observaciones,
    );

    await database.saveNutricion(nutricion);
  }
}

class ObtenerNutricionUseCase {
  final MiGanadoDatabase database;

  ObtenerNutricionUseCase({required this.database});

  Future<List<NutricionEntity>> call({
    required String animalUuid,
  }) async {
    return database.getNutricionByAnimal(animalUuid);
  }
}

class ObtenerNutricionActualUseCase {
  final MiGanadoDatabase database;

  ObtenerNutricionActualUseCase({required this.database});

  Future<NutricionEntity?> call({
    required String animalUuid,
  }) async {
    return database.getNutricionActual(animalUuid);
  }
}

class FinalizarNutricionUseCase {
  final MiGanadoDatabase database;

  FinalizarNutricionUseCase({required this.database});

  Future<void> call({
    required NutricionEntity nutricion,
    String? cambiosObservados,
  }) async {
    final finalizada = nutricion.copyWith(
      fechaFin: DateTime.now(),
      cambiosObservados: cambiosObservados,
    );

    await database.updateNutricion(finalizada);
  }
}
