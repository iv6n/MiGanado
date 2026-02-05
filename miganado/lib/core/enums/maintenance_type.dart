/// Types of sanitary and productive maintenance that can be registered
enum MaintenanceType {
  /// Vaccination against diseases
  vaccination,

  /// Internal or external deworming
  deworming,

  /// Application of vitamins
  vitamins,

  /// Clinical examination or veterinary examination
  clinicalReview,

  /// Wound healing or infection treatment
  woundHealing,

  /// Teeth check and cleaning
  dentalCare,

  /// Surgical castration
  castration,

  /// Other type of maintenance
  other,
}

extension MaintenanceTypeExt on MaintenanceType {
  /// Gets the name in Spanish (for UI)
  String get displayNameSpanish {
    switch (this) {
      case MaintenanceType.vaccination:
        return 'Vacunación';
      case MaintenanceType.deworming:
        return 'Desparasitación';
      case MaintenanceType.vitamins:
        return 'Vitaminas';
      case MaintenanceType.clinicalReview:
        return 'Revisión Clínica';
      case MaintenanceType.woundHealing:
        return 'Curación';
      case MaintenanceType.dentalCare:
        return 'Dentadura';
      case MaintenanceType.castration:
        return 'Castración';
      case MaintenanceType.other:
        return 'Otro';
    }
  }
}
