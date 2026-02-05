import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/core/validators/form_validators.dart';

void main() {
  group('FormValidators', () {
    // =========================================================================
    // validateNumeroArete Tests
    // =========================================================================
    group('validateNumeroArete', () {
      test('returns null for valid arete number', () {
        final result = FormValidators.validateNumeroArete('001234');
        expect(result, isNull);
      });

      test('returns error for empty arete', () {
        final result = FormValidators.validateNumeroArete('');
        expect(result, isNotNull);
        expect(result, contains('requerido'));
      });

      test('returns error for null arete', () {
        final result = FormValidators.validateNumeroArete(null);
        expect(result, isNotNull);
      });

      test('returns error for arete with invalid characters', () {
        final result = FormValidators.validateNumeroArete('@#\$%');
        expect(result, isNotNull);
      });

      test('returns error for arete exceeding max length', () {
        final result = FormValidators.validateNumeroArete('0' * 51);
        expect(result, isNotNull);
      });
    });

    // =========================================================================
    // validateNombre Tests
    // =========================================================================
    group('validateNombre', () {
      test('returns null for valid name', () {
        final result = FormValidators.validateNombre('Bessie');
        expect(result, isNull);
      });

      test('returns error for empty name', () {
        final result = FormValidators.validateNombre('');
        expect(result, isNotNull);
      });

      test('returns error for name with only spaces', () {
        final result = FormValidators.validateNombre('   ');
        expect(result, isNotNull);
      });

      test('returns error for very long name', () {
        final result = FormValidators.validateNombre('a' * 101);
        expect(result, isNotNull);
      });

      test('accepts names with special characters', () {
        final result = FormValidators.validateNombre("María O'Brien");
        expect(result, isNull);
      });
    });

    // =========================================================================
    // validateEmail Tests
    // =========================================================================
    group('validateEmail', () {
      test('returns null for valid email', () {
        final result = FormValidators.validateEmail('user@example.com');
        expect(result, isNull);
      });

      test('returns error for invalid email format', () {
        final result = FormValidators.validateEmail('notanemail');
        expect(result, isNotNull);
      });

      test('returns error for email without domain', () {
        final result = FormValidators.validateEmail('user@');
        expect(result, isNotNull);
      });

      test('returns error for empty email', () {
        final result = FormValidators.validateEmail('');
        expect(result, isNotNull);
      });

      test('returns error for email with spaces', () {
        final result = FormValidators.validateEmail('user @example.com');
        expect(result, isNotNull);
      });

      test('accepts valid email formats', () {
        expect(FormValidators.validateEmail('test.email+tag@example.co.uk'),
            isNull);
      });
    });

    // =========================================================================
    // validatePhone Tests
    // =========================================================================
    group('validatePhone', () {
      test('returns null for valid phone number', () {
        final result = FormValidators.validatePhone('3001234567');
        expect(result, isNull);
      });

      test('returns error for empty phone', () {
        final result = FormValidators.validatePhone('');
        expect(result, isNotNull);
      });

      test('returns error for phone with letters', () {
        final result = FormValidators.validatePhone('30012ABC67');
        expect(result, isNotNull);
      });

      test('returns error for too short phone', () {
        final result = FormValidators.validatePhone('123');
        expect(result, isNotNull);
      });

      test('returns error for too long phone', () {
        final result = FormValidators.validatePhone('1' * 20);
        expect(result, isNotNull);
      });
    });

    // =========================================================================
    // validateFecha Tests
    // =========================================================================
    group('validateFecha', () {
      test('returns null for valid date', () {
        final date = DateTime(2020, 1, 15);
        final result = FormValidators.validateFecha(date);
        expect(result, isNull);
      });

      test('returns error for null date', () {
        final result = FormValidators.validateFecha(null);
        expect(result, isNotNull);
      });

      test('returns error for future date', () {
        final tomorrow = DateTime.now().add(const Duration(days: 1));
        final result = FormValidators.validateFecha(tomorrow);
        expect(result, isNotNull);
      });

      test('accepts past dates', () {
        final pastDate = DateTime(1990, 5, 20);
        final result = FormValidators.validateFecha(pastDate);
        expect(result, isNull);
      });
    });

    // =========================================================================
    // validatePeso Tests
    // =========================================================================
    group('validatePeso', () {
      test('returns null for valid weight', () {
        final result = FormValidators.validatePeso('450.5');
        expect(result, isNull);
      });

      test('returns error for empty weight', () {
        final result = FormValidators.validatePeso('');
        expect(result, isNotNull);
      });

      test('returns error for non-numeric weight', () {
        final result = FormValidators.validatePeso('abc');
        expect(result, isNotNull);
      });

      test('returns error for negative weight', () {
        final result = FormValidators.validatePeso('-50');
        expect(result, isNotNull);
      });

      test('returns error for zero weight', () {
        final result = FormValidators.validatePeso('0');
        expect(result, isNotNull);
      });

      test('accepts decimal weights', () {
        final result = FormValidators.validatePeso('350.75');
        expect(result, isNull);
      });
    });

    // =========================================================================
    // validateRequired Tests
    // =========================================================================
    group('validateRequired', () {
      test('returns null for non-empty string', () {
        final result = FormValidators.validateRequired('value', 'Field');
        expect(result, isNull);
      });

      test('returns error for empty string', () {
        final result = FormValidators.validateRequired('', 'Field');
        expect(result, isNotNull);
      });

      test('returns error for null', () {
        final result = FormValidators.validateRequired(null, 'Field');
        expect(result, isNotNull);
      });

      test('returns error for whitespace only', () {
        final result = FormValidators.validateRequired('   ', 'Field');
        expect(result, isNotNull);
      });
    });
  });
}
