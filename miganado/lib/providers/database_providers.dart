import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Provider de la base de datos Isar
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  throw UnimplementedError(
    'databaseProvider debe ser sobrescrito en main.dart con una instancia inicializada',
  );
});
