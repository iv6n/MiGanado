import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/core/models/result.dart';

void main() {
  group('Result Pattern', () {
    // =========================================================================
    // Success Tests
    // =========================================================================
    group('Success<T>', () {
      test('creates success result with data', () {
        final result = Result.success('test data');
        expect(result, isA<Success<String>>());
        expect((result as Success<String>).data, 'test data');
      });

      test('isSuccess returns true', () {
        final result = Result.success(42);
        expect(result.isSuccess, true);
        expect(result.isError, false);
        expect(result.isLoading, false);
      });

      test('getOrNull returns the data', () {
        final result = Result.success([1, 2, 3]);
        expect(result.getOrNull(), [1, 2, 3]);
      });

      test('getErrorOrNull returns null', () {
        final result = Result.success('data');
        expect(result.getErrorOrNull(), isNull);
      });

      test('toString shows Success with data', () {
        final result = Result.success('test');
        expect(result.toString(), contains('Success'));
      });
    });

    // =========================================================================
    // Error Tests
    // =========================================================================
    group('Error<T>', () {
      test('creates error result with exception', () {
        final exception = Exception('Test error');
        final result = Result.error(exception);
        expect(result, isA<Error>());
        expect((result as Error).error, exception);
      });

      test('isError returns true', () {
        final result = Result.error(Exception('error'));
        expect(result.isError, true);
        expect(result.isSuccess, false);
        expect(result.isLoading, false);
      });

      test('getOrNull returns null', () {
        final result = Result.error(Exception('failed'));
        expect(result.getOrNull(), isNull);
      });

      test('getErrorOrNull returns the exception', () {
        final exception = Exception('my error');
        final result = Result.error(exception);
        expect(result.getErrorOrNull(), exception);
      });

      test('message property converts exception to string', () {
        final result = Result.error(Exception('Test message'));
        expect((result as Error).message, isNotEmpty);
      });

      test('toString shows Error with exception', () {
        final result = Result.error(Exception('test'));
        expect(result.toString(), contains('Error'));
      });
    });

    // =========================================================================
    // Loading Tests
    // =========================================================================
    group('Loading<T>', () {
      test('creates loading result', () {
        final result = Result.loading();
        expect(result, isA<Loading>());
      });

      test('isLoading returns true', () {
        final result = Result.loading();
        expect(result.isLoading, true);
        expect(result.isSuccess, false);
        expect(result.isError, false);
      });

      test('getOrNull returns null', () {
        final result = Result.loading();
        expect(result.getOrNull(), isNull);
      });

      test('getErrorOrNull returns null', () {
        final result = Result.loading();
        expect(result.getErrorOrNull(), isNull);
      });

      test('toString shows Loading', () {
        final result = Result.loading();
        expect(result.toString(), contains('Loading'));
      });
    });

    // =========================================================================
    // Pattern Matching (when) Tests
    // =========================================================================
    group('when<R> pattern matching', () {
      test('success case calls success handler', () {
        final result = Result.success('data');
        var called = false;

        result.when(
          success: (data) {
            called = true;
            expect(data, 'data');
          },
          error: (e) => fail('Should not call error handler'),
          loading: () => fail('Should not call loading handler'),
        );

        expect(called, true);
      });

      test('error case calls error handler', () {
        final exception = Exception('error');
        final result = Result.error(exception);
        var called = false;

        result.when(
          success: (data) => fail('Should not call success handler'),
          error: (e) {
            called = true;
            expect(e, exception);
          },
          loading: () => fail('Should not call loading handler'),
        );

        expect(called, true);
      });

      test('loading case calls loading handler', () {
        final result = Result.loading();
        var called = false;

        result.when(
          success: (data) => fail('Should not call success handler'),
          error: (e) => fail('Should not call error handler'),
          loading: () {
            called = true;
          },
        );

        expect(called, true);
      });

      test('returns correct value from success case', () {
        final result = Result.success(42);
        final value = result.when(
          success: (data) => data * 2,
          error: (e) => -1,
          loading: () => 0,
        );
        expect(value, 84);
      });

      test('returns correct value from error case', () {
        final result = Result.error(Exception('error'));
        final value = result.when(
          success: (data) => 'success',
          error: (e) => 'error occurred',
          loading: () => 'loading',
        );
        expect(value, 'error occurred');
      });

      test('returns correct value from loading case', () {
        final result = Result.loading();
        final value = result.when(
          success: (data) => 'success',
          error: (e) => 'error',
          loading: () => 'in progress',
        );
        expect(value, 'in progress');
      });
    });

    // =========================================================================
    // Transformation Tests (map)
    // =========================================================================
    group('map<U> transformation', () {
      test('success case applies transformation', () {
        final result = Result.success(10);
        final mapped = result.map((value) => value * 2);

        expect(mapped.getOrNull(), 20);
      });

      test('error case preserves error', () {
        final exception = Exception('error');
        final result = Result.error(exception);
        final mapped = result.map((value) => value * 2);

        expect(mapped.getErrorOrNull(), exception);
      });

      test('loading case remains loading', () {
        final result = Result.loading();
        final mapped = result.map((value) => value * 2);

        expect(mapped.isLoading, true);
      });

      test('chains multiple transformations', () {
        final result = Result.success(5);
        final value = result.map((x) => x * 2).map((x) => x + 3).getOrNull();

        expect(value, 13);
      });
    });

    // =========================================================================
    // Composition Tests (flatMap)
    // =========================================================================
    group('flatMap<U> composition', () {
      test('success case chains results', () {
        final result = Result.success(10);
        final chained = result.flatMap((value) => Result.success(value * 2));

        expect(chained.getOrNull(), 20);
      });

      test('success case can return error', () {
        final result = Result.success(10);
        final error = Exception('failed');
        final chained = result.flatMap((value) => Result.error(error));

        expect(chained.getErrorOrNull(), error);
      });

      test('error case propagates error', () {
        final exception = Exception('initial error');
        final result = Result.error(exception);
        final chained = result.flatMap((value) => Result.success(value * 2));

        expect(chained.getErrorOrNull(), exception);
      });

      test('loading case remains loading', () {
        final result = Result.loading();
        final chained = result.flatMap((value) => Result.success(value * 2));

        expect(chained.isLoading, true);
      });

      test('chains multiple operations', () {
        final result = Result.success(5)
            .flatMap((x) => Result.success(x * 2))
            .flatMap((x) => Result.success(x + 3));

        expect(result.getOrNull(), 13);
      });
    });

    // =========================================================================
    // Type Safety Tests
    // =========================================================================
    group('Type Safety', () {
      test('maintains type consistency in success', () {
        final result = Result.success([1, 2, 3]);
        final mapped = result.map((list) => list.length);

        expect(mapped.getOrNull(), 3);
      });

      test('generic type parameter works correctly', () {
        final intResult = Result.success(42);
        final stringResult = Result.success('hello');

        expect(intResult.getOrNull(), isA<int>());
        expect(stringResult.getOrNull(), isA<String>());
      });

      test('error handling is type-independent', () {
        final error = Exception('error');
        final result1 = Result.error(error);
        final result2 = Result.error(error);

        expect(result1.getErrorOrNull(), error);
        expect(result2.getErrorOrNull(), error);
      });
    });
  });
}
