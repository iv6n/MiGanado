import 'package:hive/hive.dart';

part 'tipo_costo.g.dart';

/// Tipos de costos asociados a los animales
@HiveType(typeId: 15)
enum TipoCosto {
  /// Costo de compra inicial del animal
  @HiveField(0)
  compra_inicial,

  /// Costos veterinarios (consultas, tratamientos, cirugías)
  @HiveField(1)
  veterinario,

  /// Costos de alimento (concentrado, sal, forraje)
  @HiveField(2)
  alimento,

  /// Medicamentos y suplementos
  @HiveField(3)
  medicamento,

  /// Equipo, herramientas, o infraestructura
  @HiveField(4)
  equipo,

  /// Otros costos diversos
  @HiveField(5)
  otro,
}

extension TipoCostoExt on TipoCosto {
  /// Obtiene el nombre en español
  String get nombreEspanol {
    switch (this) {
      case TipoCosto.compra_inicial:
        return 'Compra Inicial';
      case TipoCosto.veterinario:
        return 'Veterinario';
      case TipoCosto.alimento:
        return 'Alimento';
      case TipoCosto.medicamento:
        return 'Medicamento';
      case TipoCosto.equipo:
        return 'Equipo';
      case TipoCosto.otro:
        return 'Otro';
    }
  }

  /// Obtiene el color asociado al tipo de costo (para UI)
  String get colorHex {
    switch (this) {
      case TipoCosto.compra_inicial:
        return '#1976D2'; // Azul
      case TipoCosto.veterinario:
        return '#D32F2F'; // Rojo
      case TipoCosto.alimento:
        return '#388E3C'; // Verde
      case TipoCosto.medicamento:
        return '#F57C00'; // Naranja
      case TipoCosto.equipo:
        return '#7B1FA2'; // Púrpura
      case TipoCosto.otro:
        return '#616161'; // Gris
    }
  }

  /// Indica si es costo inicial único
  bool get esUnico {
    return this == TipoCosto.compra_inicial;
  }

  /// Indica si se puede asociar a un mantenimiento
  bool get puedeAsociarseAMantenimiento {
    return this != TipoCosto.compra_inicial && this != TipoCosto.equipo;
  }
}
