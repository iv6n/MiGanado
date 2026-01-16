import 'package:hive/hive.dart';

part 'sexo.g.dart';

/// Sexo del animal
@HiveType(typeId: 11)
enum Sexo {
  /// Macho
  @HiveField(0)
  macho,

  /// Hembra
  @HiveField(1)
  hembra,
}

extension SexoExt on Sexo {
  /// Obtiene el nombre en español
  String get nombreEspanol {
    switch (this) {
      case Sexo.macho:
        return 'Macho';
      case Sexo.hembra:
        return 'Hembra';
    }
  }

  /// Obtiene la inicial (M/H)
  String get inicial {
    switch (this) {
      case Sexo.macho:
        return 'M';
      case Sexo.hembra:
        return 'H';
    }
  }
}
