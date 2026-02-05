import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/core/exceptions/app_exception.dart';

void main() {
  group('AppException Hierarchy', () {
    // =========================================================================
    // AppException Base Tests
    // =========================================================================
    // AppException is abstract and cannot be instantiated directly
    // The following tests are commented out as they would require a concrete subclass
    // Tests for specific exception types (DatabaseException, ValidationException, etc.)
    // are available in their respective test suites

    /*
    group('AppException', () {
      test('creates exception with message', () {
        final exception = AppException(
          message: 'Test error',
          originalError: null,
          stackTrace: null,
        );
        expect(exception.message, 'Test error');
      });

      test('has title property', () {
        final exception = AppException(
          message: 'Test',
          originalError: null,
          stackTrace: null,
        );
        expect(exception.title, isNotEmpty);
      });

      test('toString returns formatted error message', () {
        final exception = AppException(
          message: 'Test error',
          originalError: null,
          stackTrace: null,
        );
        expect(exception.toString(), contains('Test error'));
      });

      test('stores original error and stack trace', () {
        final originalError = Exception('Original');
        final stackTrace = StackTrace.current;
        final exception = AppException(
          message: 'Wrapper',
          originalError: originalError,
          stackTrace: stackTrace,
        );
        expect(exception.originalError, originalError);
        expect(exception.stackTrace, stackTrace);
      });
    });
    */

    // =========================================================================
    // ValidationException Tests
    // =========================================================================
    group('ValidationException', () {
      test('creates validation exception', () {
        final exception = ValidationException(
          message: 'Invalid email format',
        );
        expect(exception.message, contains('Validation Error'));
        expect(exception.title, 'Datos Inválidos');
      });

      test('preserves custom validation message', () {
        const customMessage = 'Email must contain @ symbol';
        final exception = ValidationException(
          message: customMessage,
        );
        expect(exception.message, contains(customMessage));
      });

      test('can be created with original error', () {
        const originalError = FormatException('Invalid number');
        final exception = ValidationException(
          message: 'Parse failed',
          originalError: originalError,
        );
        expect(exception.originalError, originalError);
      });
    });

    // =========================================================================
    // DatabaseException Tests
    // =========================================================================
    group('DatabaseException', () {
      test('creates database exception', () {
        final exception = DatabaseException(
          message: 'Connection failed',
        );
        expect(exception.title, 'Error de Base de Datos');
        expect(exception.message, contains('Connection failed'));
      });

      test('includes database-specific details', () {
        final exception = DatabaseException(
          message: 'Query timeout',
          originalError: Exception('Backend timeout'),
        );
        expect(exception.originalError, isNotNull);
      });
    });

    // =========================================================================
    // NotFoundException Tests
    // =========================================================================
    group('NotFoundException', () {
      test('creates not found exception', () {
        final exception = NotFoundException(
          message: 'Animal UUID: abc-123',
        );
        expect(exception.title, 'No Encontrado');
        expect(exception.message, contains('abc-123'));
      });

      test('useful for resource lookup failures', () {
        const uuid = '550e8400-e29b-41d4-a716-446655440000';
        final exception = NotFoundException(
          message: 'Resource not found: $uuid',
        );
        expect(exception.message, contains(uuid));
      });
    });

    // =========================================================================
    // AuthorizationException Tests
    // =========================================================================
    group('AuthorizationException', () {
      test('creates authorization exception', () {
        final exception = AuthorizationException(
          message: 'User does not have edit permissions',
        );
        expect(exception.title, 'Permiso Denegado');
      });

      test('appropriate for permission-related errors', () {
        final exception = AuthorizationException(
          message: 'Admin role required',
        );
        expect(exception.message, contains('Admin'));
      });
    });

    // =========================================================================
    // UnexpectedException Tests
    // =========================================================================
    group('UnexpectedException', () {
      test('creates unexpected exception', () {
        final originalError = Exception('Something went wrong');
        final exception = UnexpectedException(
          originalError: originalError,
        );
        expect(exception.title, 'Error Inesperado');
        expect(exception.originalError, originalError);
      });

      test('details property returns stringified error', () {
        final exception = UnexpectedException(
          originalError: Exception('Critical issue'),
        );
        expect(exception.details, contains('Critical'));
      });

      test('can include stack trace for debugging', () {
        final stackTrace = StackTrace.current;
        final exception = UnexpectedException(
          originalError: Exception('Debug info'),
          stackTrace: stackTrace,
        );
        expect(exception.stackTrace, stackTrace);
      });
    });

    // =========================================================================
    // Exception Conversion Tests
    // =========================================================================
    group('toAppException', () {
      test('returns same exception if already AppException', () {
        final appException = ValidationException(message: 'Test');
        final result = toAppException(appException, null);
        expect(result, appException);
      });

      test('converts FormatException to ValidationException', () {
        const formatError = FormatException('Invalid format');
        final result = toAppException(formatError, null);
        expect(result, isA<ValidationException>());
      });

      test('converts TypeError to ValidationException', () {
        final typeError = TypeError();
        final result = toAppException(typeError, null);
        expect(result, isA<ValidationException>());
      });

      test('converts unknown exceptions to UnexpectedException', () {
        final unknownError = Exception('Unknown');
        final result = toAppException(unknownError, null);
        expect(result, isA<UnexpectedException>());
      });

      test('preserves stack trace in conversion', () {
        final stackTrace = StackTrace.current;
        final unknownError = Exception('With stack');
        final result = toAppException(unknownError, stackTrace);
        expect(result.stackTrace, stackTrace);
      });
    });
  });
}
