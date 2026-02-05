/// Gender of the animal
enum Gender {
  /// Male
  male,

  /// Female
  female,
}

extension GenderExt on Gender {
  /// Gets the name in Spanish (for UI)
  String get displayNameSpanish {
    switch (this) {
      case Gender.male:
        return 'Macho';
      case Gender.female:
        return 'Hembra';
    }
  }

  /// Gets the initial (M/H)
  String get initial {
    switch (this) {
      case Gender.male:
        return 'M';
      case Gender.female:
        return 'H';
    }
  }
}
