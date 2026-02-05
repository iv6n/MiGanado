/// Reproductive status of the female
enum ReproductiveStatus {
  /// Female pregnant
  pregnant,

  /// Female lactating after birth
  lactating,

  /// Female in reproductive rest
  dry,

  /// Undefined or non-applicable status
  undefined,
}

extension ReproductiveStatusExt on ReproductiveStatus {
  /// Gets the name in Spanish (for UI)
  String get displayNameSpanish {
    switch (this) {
      case ReproductiveStatus.pregnant:
        return 'Preñada';
      case ReproductiveStatus.lactating:
        return 'Lactando';
      case ReproductiveStatus.dry:
        return 'Seca';
      case ReproductiveStatus.undefined:
        return 'No definido';
    }
  }
}
