import 'package:miganado/data/database/database.dart';
import 'package:miganado/models/index.dart';

/// Repositorio para Ganadero
class GanaderoRepository {
  final MiGanadoDatabase _database;

  GanaderoRepository(this._database);

  Future<Ganadero?> getGanadero() {
    return _database.getGanadero();
  }

  Future<void> save(Ganadero ganadero) {
    return _database.saveGanadero(ganadero);
  }
}
