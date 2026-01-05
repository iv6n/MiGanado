import 'package:miganado/data/database/database.dart';
import 'package:miganado/models/index.dart';

/// Repositorio para Ubicaciones
class UbicacionRepository {
  final MiGanadoDatabase _database;

  UbicacionRepository(this._database);

  Future<List<Ubicacion>> getAllUbicaciones() {
    return _database.getAllUbicaciones();
  }

  Future<Ubicacion?> getUbicacionById(String id) {
    return _database.getUbicacionById(id);
  }

  Future<void> create(Ubicacion ubicacion) {
    return _database.insertUbicacion(ubicacion);
  }

  Future<void> update(Ubicacion ubicacion) {
    return _database.updateUbicacion(ubicacion);
  }

  Future<void> delete(String id) {
    return _database.deleteUbicacion(id);
  }
}
