import 'package:miganado/features/animals/data/models/animal_entity.dart';

/// Extensión para Categoria con métodos de validación y descripción
extension CategoriaHelper on Categoria {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case Categoria.vaca:
        return 'Vaca';
      case Categoria.caballo:
        return 'Caballo';
      case Categoria.burro:
        return 'Burro';
      case Categoria.mula:
        return 'Mula';
    }
  }

  /// Icono para la categoría
  String get assetIcon {
    switch (this) {
      case Categoria.vaca:
        return 'assets/images/vaca.png';
      case Categoria.caballo:
        return 'assets/images/caballo.png';
      case Categoria.burro:
        return 'assets/images/burro.png';
      case Categoria.mula:
        return 'assets/images/mula.png';
    }
  }

  /// Obtiene la especie correspondiente a la categoría
  Especie get especie {
    switch (this) {
      case Categoria.vaca:
        return Especie.bovino;
      case Categoria.caballo:
      case Categoria.burro:
      case Categoria.mula:
        return Especie.equino;
    }
  }
}

/// Extensión para Especie con métodos de validación
extension EspecieHelper on Especie {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case Especie.bovino:
        return 'Bovino';
      case Especie.equino:
        return 'Equino';
    }
  }

  /// Categorías válidas para esta especie
  List<Categoria> get categoriasValidas {
    switch (this) {
      case Especie.bovino:
        return [Categoria.vaca];
      case Especie.equino:
        return [Categoria.caballo, Categoria.burro, Categoria.mula];
    }
  }
}

/// Extensión para EtapaVida con métodos de descripción e iconografía
extension EtapaVidaHelper on EtapaVida {
  /// Descripción legible en español
  String get descripcion {
    switch (this) {
      case EtapaVida.becerro:
        return 'Becerro';
      case EtapaVida.becerra:
        return 'Becerra';
      case EtapaVida.vaquilla:
        return 'Vaquilla';
      case EtapaVida.torete:
        return 'Torete';
      case EtapaVida.novillo:
        return 'Novillo';
      case EtapaVida.vaca:
        return 'Vaca';
      case EtapaVida.toro:
        return 'Toro';
      case EtapaVida.potro:
        return 'Potro';
      case EtapaVida.adulto:
        return 'Adulto';
    }
  }

  /// Icono para la etapa de vida
  String get assetIcon {
    switch (this) {
      case EtapaVida.becerro:
      case EtapaVida.becerra:
        return 'assets/images/becerro.png';
      case EtapaVida.vaquilla:
        return 'assets/images/vaquilla.png';
      case EtapaVida.torete:
        return 'assets/images/torete.png';
      case EtapaVida.novillo:
        return 'assets/images/novillo.png';
      case EtapaVida.vaca:
        return 'assets/images/vaca.png';
      case EtapaVida.toro:
        return 'assets/images/toro.png';
      case EtapaVida.potro:
        return 'assets/images/potro.png';
      case EtapaVida.adulto:
        return 'assets/images/adulto.png';
    }
  }

  /// Rango de edad en meses (mín, máx)
  (int, int?) get rangoEdadMeses {
    switch (this) {
      case EtapaVida.becerro:
      case EtapaVida.becerra:
        return (0, 12);
      case EtapaVida.vaquilla:
      case EtapaVida.torete:
      case EtapaVida.novillo:
        return (12, 24);
      case EtapaVida.vaca:
      case EtapaVida.toro:
        return (24, null);
      case EtapaVida.potro:
        return (0, 36);
      case EtapaVida.adulto:
        return (36, null);
    }
  }

  /// Valida si una etapa es válida para una especie dada
  bool esValidaParaEspecie(Especie especie) {
    switch (especie) {
      case Especie.bovino:
        return [
          EtapaVida.becerro,
          EtapaVida.becerra,
          EtapaVida.vaquilla,
          EtapaVida.torete,
          EtapaVida.novillo,
          EtapaVida.vaca,
          EtapaVida.toro,
        ].contains(this);
      case Especie.equino:
        return [EtapaVida.potro, EtapaVida.adulto].contains(this);
    }
  }
}

/// Validación de cambios de sexo: verifica si una etapa es compatible con el nuevo sexo
extension SexoEtapaValidation on Sexo {
  /// Etapas válidas para este sexo en bovinos
  List<EtapaVida> etapasValidasBovino() {
    switch (this) {
      case Sexo.macho:
        return [
          EtapaVida.becerro,
          EtapaVida.torete,
          EtapaVida.novillo,
          EtapaVida.toro,
        ];
      case Sexo.hembra:
        return [
          EtapaVida.becerra,
          EtapaVida.vaquilla,
          EtapaVida.vaca,
        ];
    }
  }

  /// Etapas válidas para este sexo en equinos
  List<EtapaVida> etapasValidasEquino() {
    return [EtapaVida.potro, EtapaVida.adulto];
  }

  /// Valida si una etapa es compatible con este sexo
  bool etapaCompatible(EtapaVida etapa, Especie especie) {
    if (especie == Especie.bovino) {
      return etapasValidasBovino().contains(etapa);
    } else {
      return etapasValidasEquino().contains(etapa);
    }
  }
}

/// Extensión para validación de castración
extension CastracionValidation on bool {
  /// Valida si la castración es válida para una etapa bovino
  bool esValidaParaEtapaBovino(EtapaVida etapa) {
    // La castración solo es válida para machos en etapas específicas
    // Becerro -> puede o no estar castrado
    // Torete -> NO debe estar castrado (es macho entero)
    // Novillo -> DEBE estar castrado
    // Toro -> NO debe estar castrado
    switch (etapa) {
      case EtapaVida.torete:
        return !this; // No debe estar castrado
      case EtapaVida.novillo:
        return this; // Debe estar castrado
      case EtapaVida.toro:
        return !this; // No debe estar castrado
      default:
        return true; // Para otras etapas, cualquier valor es válido
    }
  }
}
