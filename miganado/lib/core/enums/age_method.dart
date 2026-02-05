/// Method used to determine the age of the animal
/// RULE: Birth date is OPTIONAL
/// If there is no date, the system assumes that the animal is STARTING that stage
enum AgeMethod {
  /// Age calculated from known birth date
  /// More accurate and reliable
  exactByBirthDate,

  /// Age simulated by selected category without birth date
  /// Used when exact date is unknown
  /// The animal "begins" in that stage on the day it is registered
  simulatedByCategory,

  /// Age estimated from current weight
  /// Future: For ranchers who don't have accurate records
  estimatedByWeight,
}

extension AgeMethodExt on AgeMethod {
  /// Readable name in Spanish (for UI)
  String get displayNameSpanish {
    switch (this) {
      case AgeMethod.exactByBirthDate:
        return 'Fecha exacta de nacimiento';
      case AgeMethod.simulatedByCategory:
        return 'Simulada por categoría';
      case AgeMethod.estimatedByWeight:
        return 'Estimada por peso';
    }
  }
}
