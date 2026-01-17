import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Provider simple para acceder a la base de datos Isar
/// Este reemplaza todos los providers viejos de Hive
final isarDatabaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});
