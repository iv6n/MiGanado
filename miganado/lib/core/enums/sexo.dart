/// Sexo del animal
enum Sexo {
  /// Macho
  macho,

  /// Hembra
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
