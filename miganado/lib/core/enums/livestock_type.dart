/// Types of livestock available in the system
/// RULE: There is no "steer-ette"
/// - < 12 months, Male → Calf
/// - < 12 months, Female → Heifer
enum LivestockType {
  /// Adult female (> 36 months)
  cow,

  /// Male or female < 12 months
  calf, // Calf (M) or Heifer (F)

  /// Adult male castrated or whole
  bull,

  /// Male 12-36 months
  steer,

  /// Horse
  horse,

  /// Mule
  mule,

  /// Donkey
  donkey,
}

/// Extension to validate if livestock type requires ear tag
extension LivestockTypeValidation on LivestockType {
  /// Validates if this livestock type requires ear tag by local regulations
  /// According to sanitary regulations, only cattle (cows, calves, bulls, steers) require ear tags
  bool get requiresEarTag {
    switch (this) {
      case LivestockType.cow:
      case LivestockType.calf:
      case LivestockType.bull:
      case LivestockType.steer:
        return true;
      case LivestockType.horse:
      case LivestockType.mule:
      case LivestockType.donkey:
        return false;
    }
  }

  /// Gets the message about ear tag obligation
  String get earTagMessage {
    return requiresEarTag
        ? 'El arete es obligatorio para bovinos según regulaciones sanitarias'
        : 'El arete es opcional para esta especie';
  }

  /// Gets the name in Spanish in readable form (for UI)
  String get displayNameSpanish {
    switch (this) {
      case LivestockType.cow:
        return 'Vaca';
      case LivestockType.calf:
        return 'Becerro/Becerra';
      case LivestockType.bull:
        return 'Toro';
      case LivestockType.steer:
        return 'Novillo/Vaquilla';
      case LivestockType.horse:
        return 'Caballo';
      case LivestockType.mule:
        return 'Mula';
      case LivestockType.donkey:
        return 'Burro';
    }
  }
}
