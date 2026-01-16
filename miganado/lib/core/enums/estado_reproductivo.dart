import 'package:hive/hive.dart';

part 'estado_reproductivo.g.dart';

/// Estado reproductivo de la hembra
@HiveType(typeId: 12)
enum EstadoReproductivo {
  /// Hembra preñada
  @HiveField(0)
  prenada,

  /// Hembra lactando después de parto
  @HiveField(1)
  lactando,

  /// Hembra en descanso reproductor
  @HiveField(2)
  seca,

  /// Estado no definido o no aplicable
  @HiveField(3)
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
