import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';

/// Provider de la base de datos TypeSafe
final databaseProvider = Provider<MiGanadoDatabaseTyped>((ref) {
  throw UnimplementedError(
    'databaseProvider debe ser sobrescrito en main.dart con una instancia inicializada',
  );
});
