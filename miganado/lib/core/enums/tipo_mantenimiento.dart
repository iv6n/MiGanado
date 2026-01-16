import 'package:hive/hive.dart';

part 'tipo_mantenimiento.g.dart';

/// Tipos de mantenimiento sanitario y productivo que se pueden registrar
@HiveType(typeId: 14)
enum TipoMantenimiento {
  /// Vacunación contra enfermedades
  @HiveField(0)
  vacunacion,

  /// Desparasitación interna o externa
  @HiveField(1)
  desparasitante,

  /// Aplicación de vitaminas
  @HiveField(2)
  vitaminas,

  /// Revisión clínica o examen veterinario
  @HiveField(3)
  revision_clinica,

  /// Curación de heridas o infecciones
  @HiveField(4)
  curacion,

  /// Revisión y limpieza de dentadura
  @HiveField(5)
  dentadura,

  /// Castración quirúrgica
  @HiveField(6)
  castracion,

  /// Otro tipo de mantenimiento
  @HiveField(7)
  otro,
}

extension TipoMantenimientoExt on TipoMantenimiento {
  /// Obtiene el nombre en español
  String get nombreEspanol {
    switch (this) {
      case TipoMantenimiento.vacunacion:
        return 'Vacunación';
      case TipoMantenimiento.desparasitante:
        return 'Desparasitación';
      case TipoMantenimiento.vitaminas:
        return 'Vitaminas';
      case TipoMantenimiento.revision_clinica:
        return 'Revisión Clínica';
      case TipoMantenimiento.curacion:
        return 'Curación';
      case TipoMantenimiento.dentadura:
        return 'Dentadura';
      case TipoMantenimiento.castracion:
        return 'Castración';
      case TipoMantenimiento.otro:
        return 'Otro';
    }
  }

  /// Ciclo recomendado en meses (para alertas)
  int get cicloMesesRecomendado {
    switch (this) {
      case TipoMantenimiento.vacunacion:
        return 12; // Anual
      case TipoMantenimiento.desparasitante:
        return 3; // Cada 3 meses típicamente
      case TipoMantenimiento.vitaminas:
        return 6; // Cada 6 meses
      case TipoMantenimiento.revision_clinica:
        return 12; // Anual
      case TipoMantenimiento.curacion:
        return 0; // No aplica ciclo
      case TipoMantenimiento.dentadura:
        return 24; // Cada 2 años
      case TipoMantenimiento.castracion:
        return 0; // Una sola vez
      case TipoMantenimiento.otro:
        return 12; // Predeterminado
    }
  }

  /// Indica si este tipo de mantenimiento típicamente genera costo
  bool get tieneCostaHabitual {
    switch (this) {
      case TipoMantenimiento.vacunacion:
      case TipoMantenimiento.desparasitante:
      case TipoMantenimiento.revision_clinica:
      case TipoMantenimiento.curacion:
      case TipoMantenimiento.castracion:
        return true;
      case TipoMantenimiento.vitaminas:
      case TipoMantenimiento.dentadura:
      case TipoMantenimiento.otro:
        return false;
    }
  }
}
