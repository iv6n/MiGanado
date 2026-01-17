import 'package:miganado/features/animals/domain/entities/foto.dart';
import 'package:miganado/data/database/isar_database.dart';

// TODO: Implementar métodos de fotografía en MiGanadoDatabase
// Estas clases están pendientes de integración con el sistema de almacenamiento de fotos

class CapturarFotoUseCase {
  final MiGanadoDatabase database;

  CapturarFotoUseCase({required this.database});

  Future<void> call({
    required String animalUuid,
    required String rutaFoto,
    required String registradoPor,
    String? descripcion,
    String? tituloFoto,
  }) async {
    // TODO: Implementar saveFoto en MiGanadoDatabase
    // await database.saveFoto(
    //   animalUuid: animalUuid,
    //   rutaLocal: rutaFoto,
    //   fechaCaptura: DateTime.now(),
    //   descripcion: descripcion,
    //   tituloFoto: tituloFoto,
    //   registradoPor: registradoPor,
    // );
    print('📸 Captura de foto registrada (no persistida aún)');
  }
}

class ObtenerFotosByAnimalUseCase {
  final MiGanadoDatabase database;

  ObtenerFotosByAnimalUseCase({required this.database});

  Future<List<Foto>> call({required String animalUuid}) async {
    // TODO: Implementar getFotosByAnimal en MiGanadoDatabase
    // return database.getFotosByAnimal(animalUuid);
    return [];
  }
}

class EliminarFotoUseCase {
  final MiGanadoDatabase database;

  EliminarFotoUseCase({required this.database});

  Future<void> call({required String fotoUuid}) async {
    // TODO: Implementar deleteFoto en MiGanadoDatabase
    // await database.deleteFoto(fotoUuid);
    print('🗑️ Foto eliminada (no persistida aún)');
  }
}

class ActualizarFotoUseCase {
  final MiGanadoDatabase database;

  ActualizarFotoUseCase({required this.database});

  Future<void> call({
    required String fotoUuid,
    String? descripcion,
    String? tituloFoto,
  }) async {
    // TODO: Implementar updateFoto en MiGanadoDatabase
    // await database.updateFoto(
    //   fotoUuid,
    //   descripcion: descripcion,
    //   tituloFoto: tituloFoto,
    // );
    print('✏️ Foto actualizada (no persistida aún)');
  }
}
