/// Types of costs that can be registered for livestock management
enum CostType {
  /// Purchase cost of the animal
  purchase,

  /// Health and maintenance costs (vaccines, deworming, etc.)
  health,

  /// Feed and nutrition costs
  feeding,

  /// Breeding and reproductive services
  breeding,

  /// Transport and logistics
  transport,

  /// Labor and manpower costs
  labor,

  /// Infrastructure and facilities
  infrastructure,

  /// Other miscellaneous costs
  other,
}

extension CostTypeExt on CostType {
  /// Gets the name in Spanish (for UI)
  String get displayNameSpanish {
    switch (this) {
      case CostType.purchase:
        return 'Compra';
      case CostType.health:
        return 'Salud';
      case CostType.feeding:
        return 'Alimentación';
      case CostType.breeding:
        return 'Reproducción';
      case CostType.transport:
        return 'Transporte';
      case CostType.labor:
        return 'Mano de Obra';
      case CostType.infrastructure:
        return 'Infraestructura';
      case CostType.other:
        return 'Otro';
    }
  }
}
