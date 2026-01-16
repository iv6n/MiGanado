import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';

/// Configurador de providers para inicializar la base de datos
/// Este provider debe ser inicializado en main() antes de usar otros providers

/// Instancia singleton de la base de datos
late MiGanadoDatabaseTyped _database;

/// Inicializa la base de datos
/// Debe ser llamado una sola vez en main()
Future<void> initializeDatabase() async {
  _database = MiGanadoDatabaseTyped();
  await _database.init();
}

/// Provider que proporciona la base de datos inicializada
final databaseProvider = Provider<MiGanadoDatabaseTyped>((ref) {
  return _database;
});
