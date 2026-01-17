/// Estado reproductivo de la hembra
enum EstadoReproductivo {
  /// Hembra preñada
  prenada,

  /// Hembra lactando después de parto
  lactando,

  /// Hembra en descanso reproductor
  seca,

  /// Estado no definido o no aplicable
  no_definido,
}

extension EstadoReproductivoExt on EstadoReproductivo {
  /// Obtiene el nombre en español
  String get nombreEspanol {
    switch (this) {
      case EstadoReproductivo.prenada:
        return 'Preñada';
      case EstadoReproductivo.lactando:
        return 'Lactando';
      case EstadoReproductivo.seca:
        return 'Seca';
      case EstadoReproductivo.no_definido:
        return 'No definido';
    }
  }
}
