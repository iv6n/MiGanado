/// Enumeraciones para animales ganaderos

/// Especies de animales
enum Species {
  cattle,
  equine,
}

/// Categorías de animales bovinos
enum Category {
  cow,
  bull,
  horse,
  mare,
  donkey,
  jenny,
  donkeyFemale,
  mule,
}

/// Etapas de vida del animal
enum LifeStage {
  calf,
  calfMale,
  calfFemale,
  heifer,
  youngBull,
  steer,
  cow,
  bull,
  colt,
  filly,
  horse,
  mare,
  donkey,
  donkeyFemale,
  mule,
}

/// Estados reproductivos
enum ReproductiveStatus {
  virgin,
  pregnant,
  lactating,
  empty,
  blocked,
  undefined,
}

/// Sexo del animal
enum Sex {
  male,
  female,
}

/// Extensión para Species con métodos de validación y descripción
extension SpeciesHelper on Species {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case Species.cattle:
        return 'Bovino';
      case Species.equine:
        return 'Equino';
    }
  }

  /// Categorías válidas para esta especie
  List<Category> get categoriasValidas {
    switch (this) {
      case Species.cattle:
        return [Category.cow, Category.bull];
      case Species.equine:
        return [
          Category.horse,
          Category.mare,
          Category.donkey,
          Category.donkeyFemale,
          Category.mule
        ];
    }
  }
}

/// Extensión para Category con métodos de validación y descripción
extension CategoryHelper on Category {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case Category.cow:
        return 'Vaca';
      case Category.bull:
        return 'Toro';
      case Category.horse:
        return 'Caballo';
      case Category.mare:
        return 'Yegua';
      case Category.donkey:
        return 'Burro';
      case Category.jenny:
        return 'Burra';
      case Category.donkeyFemale:
        return 'Burra';
      case Category.mule:
        return 'Mula';
      default:
        return name;
    }
  }

  /// Icono para la categoría
  String get assetIcon {
    switch (this) {
      case Category.cow:
      case Category.bull:
        return 'assets/images/vaca.png';
      case Category.horse:
      case Category.mare:
        return 'assets/images/caballo.png';
      case Category.donkey:
      case Category.jenny:
      case Category.donkeyFemale:
        return 'assets/images/burro.png';
      case Category.mule:
        return 'assets/images/mula.png';
      default:
        return 'assets/images/animal.png';
    }
  }

  /// Obtiene la especie correspondiente a la categoría
  Species get especie {
    switch (this) {
      case Category.cow:
      case Category.bull:
        return Species.cattle;
      case Category.horse:
      case Category.mare:
      case Category.donkey:
      case Category.jenny:
      case Category.donkeyFemale:
      case Category.mule:
        return Species.equine;
      default:
        return Species.cattle;
    }
  }
}

/// Extensión para LifeStage con métodos de descripción e iconografía
extension LifeStageHelper on LifeStage {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case LifeStage.calf:
        return 'Becerro';
      case LifeStage.calfMale:
        return 'Becerro';
      case LifeStage.calfFemale:
        return 'Becerra';
      case LifeStage.heifer:
        return 'Vaquilla';
      case LifeStage.youngBull:
        return 'Torete';
      case LifeStage.steer:
        return 'Novillo';
      case LifeStage.cow:
        return 'Vaca';
      case LifeStage.bull:
        return 'Toro';
      case LifeStage.colt:
        return 'Potro';
      case LifeStage.filly:
        return 'Potranca';
      case LifeStage.horse:
        return 'Caballo';
      case LifeStage.mare:
        return 'Yegua';
      case LifeStage.donkey:
        return 'Burro';
      case LifeStage.donkeyFemale:
        return 'Burra';
      case LifeStage.mule:
        return 'Mula';
    }
  }

  /// Icono para la etapa de vida
  String get assetIcon {
    switch (this) {
      case LifeStage.calf:
      case LifeStage.calfMale:
      case LifeStage.calfFemale:
        return 'assets/images/becerro.png';
      case LifeStage.heifer:
        return 'assets/images/vaquilla.png';
      case LifeStage.youngBull:
        return 'assets/images/novillo.png';
      case LifeStage.steer:
        return 'assets/images/novillo.png';
      case LifeStage.cow:
        return 'assets/images/vaca.png';
      case LifeStage.bull:
        return 'assets/images/toro.png';
      case LifeStage.colt:
        return 'assets/images/caballo.png';
      case LifeStage.filly:
        return 'assets/images/caballo.png';
      case LifeStage.horse:
        return 'assets/images/caballo.png';
      case LifeStage.mare:
        return 'assets/images/caballo.png';
      case LifeStage.donkey:
        return 'assets/images/burro.png';
      case LifeStage.donkeyFemale:
        return 'assets/images/burro.png';
      case LifeStage.mule:
        return 'assets/images/mula.png';
      default:
        return 'assets/images/animal.png';
    }
  }

  /// Rango de edad en meses (mín, máx)
  (int, int?) get rangoEdadMeses {
    switch (this) {
      case LifeStage.calf:
      case LifeStage.calfMale:
      case LifeStage.calfFemale:
        return (0, 12);
      case LifeStage.heifer:
      case LifeStage.youngBull:
      case LifeStage.steer:
        return (12, 24);
      case LifeStage.cow:
      case LifeStage.bull:
        return (24, null);
      case LifeStage.colt:
      case LifeStage.filly:
        return (0, 36);
      case LifeStage.horse:
      case LifeStage.mare:
        return (36, null);
      case LifeStage.donkey:
      case LifeStage.donkeyFemale:
        return (0, null);
      case LifeStage.mule:
        return (0, null);
      default:
        return (0, null);
    }
  }

  /// Valida si una etapa es válida para una especie dada
  bool esValidaParaEspecie(Species especie) {
    switch (especie) {
      case Species.cattle:
        return [
          LifeStage.calf,
          LifeStage.calfFemale,
          LifeStage.heifer,
          LifeStage.youngBull,
          LifeStage.steer,
          LifeStage.cow,
          LifeStage.bull,
        ].contains(this);
      case Species.equine:
        return [
          LifeStage.colt,
          LifeStage.filly,
          LifeStage.horse,
          LifeStage.mare,
          LifeStage.donkey,
          LifeStage.donkeyFemale,
          LifeStage.mule,
        ].contains(this);
    }
  }
}

/// Validación de cambios de sexo: verifica si una etapa es compatible con el nuevo sexo
extension SexoEtapaValidation on Sex {
  /// Etapas válidas para este sexo en bovinos
  List<LifeStage> etapasValidasBovino() {
    switch (this) {
      case Sex.male:
        return [
          LifeStage.calf,
          LifeStage.youngBull,
          LifeStage.steer,
          LifeStage.bull,
        ];
      case Sex.female:
        return [
          LifeStage.calfFemale,
          LifeStage.heifer,
          LifeStage.cow,
        ];
    }
  }

  /// Etapas válidas para este sexo en equinos
  List<LifeStage> etapasValidasEquino() {
    switch (this) {
      case Sex.male:
        return [
          LifeStage.colt,
          LifeStage.horse,
          LifeStage.donkey,
        ];
      case Sex.female:
        return [
          LifeStage.filly,
          LifeStage.mare,
          LifeStage.donkeyFemale,
          LifeStage.mule,
        ];
    }
  }

  /// Valida si una etapa es compatible con este sexo
  bool etapaCompatible(LifeStage etapa, Species especie) {
    if (especie == Species.cattle) {
      return etapasValidasBovino().contains(etapa);
    } else {
      return etapasValidasEquino().contains(etapa);
    }
  }
}

/// Extensión para validación de castración
extension CastracionValidation on bool {
  /// Valida si la castración es válida para una etapa bovino
  bool esValidaParaEtapaBovino(LifeStage etapa) {
    // La castración solo es válida para machos en etapas específicas
    switch (etapa) {
      case LifeStage.youngBull:
        return !this; // No debe estar castrado
      case LifeStage.steer:
        return this; // Debe estar castrado
      case LifeStage.bull:
        return !this; // No debe estar castrado
      default:
        return true; // Para otras etapas, cualquier valor es válido
    }
  }
}
