import 'package:miganado/core/enums/gender.dart';

/// Use Case: Calculate the automatic category of an animal
///
/// Implements the BUSINESS RULE:
/// - Calf/Heifer: < 12 months
/// - Young Bull/Young Cow: 12-36 months
/// - Bull/Cow: > 36 months
///
/// Note: Differentiation is made by gender.
class CalculateCategoryAutomatically {
  /// Calculates the category based on gender + age in months
  ///
  /// Parameters:
  /// - [gender]: Gender of the animal (Male or Female)
  /// - [ageMonths]: Age in months of the animal
  ///
  /// Returns:
  /// - "Calf" if male < 12 months
  /// - "Heifer" if female < 12 months
  /// - "Young Bull" if male between 12-36 months
  /// - "Young Cow" if female between 12-36 months
  /// - "Bull" if male > 36 months
  /// - "Cow" if female > 36 months
  ///
  /// Example:
  /// ```dart
  /// final useCase = CalculateCategoryAutomatically();
  /// expect(useCase.call(Gender.male, 8), 'Calf');
  /// expect(useCase.call(Gender.female, 24), 'Young Cow');
  /// expect(useCase.call(Gender.male, 60), 'Bull');
  /// ```
  String call(Gender gender, int ageMonths) {
    if (ageMonths < 12) {
      return gender == Gender.male ? 'Calf' : 'Heifer';
    } else if (ageMonths < 36) {
      return gender == Gender.male ? 'Young Bull' : 'Young Cow';
    } else {
      return gender == Gender.male ? 'Bull' : 'Cow';
    }
  }

  /// Calculates the approximate category without exact date
  /// Useful when using the "simulated_by_category" method
  ///
  /// It is assumed that if there is no date, the animal is starting that category:
  /// - If you choose Calf/Heifer, we assume it is ~6 months old
  /// - If you choose Young Bull/Young Cow, we assume it is ~24 months old
  /// - If you choose Bull/Cow, we assume it is ~48 months old
  String getCategoryByName(String categoryName) {
    final validCalfCategories = ['Calf', 'Heifer'];
    final validIntermediateCategories = ['Young Bull', 'Young Cow'];
    final validAdultCategories = ['Bull', 'Cow'];

    if (validCalfCategories.contains(categoryName)) {
      return categoryName;
    } else if (validIntermediateCategories.contains(categoryName)) {
      return categoryName;
    } else if (validAdultCategories.contains(categoryName)) {
      return categoryName;
    }

    return 'Unknown';
  }

  /// Gets the estimated age range for a category
  /// Returns tuple (minimum, maximum, approximate)
  ({int min, int max, int approx}) getAgeRangeByCategory(
    String category,
  ) {
    switch (category) {
      case 'Calf':
      case 'Heifer':
        return (min: 0, max: 12, approx: 6);
      case 'Young Bull':
      case 'Young Cow':
        return (min: 12, max: 36, approx: 24);
      case 'Bull':
      case 'Cow':
        return (min: 36, max: 999, approx: 48);
      default:
        return (min: 0, max: 0, approx: 0);
    }
  }
}
