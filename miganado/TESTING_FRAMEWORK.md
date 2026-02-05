# Testing Framework Documentation

## Overview

MiGanado includes a comprehensive testing framework covering core utilities, error handling, and business logic validation.

## Test Structure

```
test/
├── core/
│   ├── validators/
│   │   └── form_validators_test.dart        # 21 tests
│   ├── exceptions/
│   │   └── app_exception_test.dart          # 25 tests
│   ├── models/
│   │   └── result_test.dart                 # 34 tests (58 passed in initial run)
│   ├── utils/
│   │   └── error_handler_test.dart          # Error handling tests
│   └── error_handling_integration_test.dart # 24 integration tests
├── features/
│   └── animals/
│       ├── animal_detail_screen_test.dart   # Widget tests (pre-existing)
│       └── animal_entity_test.dart          # Entity tests (pre-existing)
└── navigation_test.dart                     # Navigation tests
└── widget_test.dart                         # Basic widget tests
```

## Test Coverage

### Core Validators (21 tests)
- **validateNumeroArete**: Arete validation (4 tests)
- **validateName**: Animal name validation (5 tests)
- **validateEmail**: Email format validation (6 tests)
- **validatePhoneNumber**: Phone number validation (5 tests)
- **validateDate**: Date format and logic validation (5 tests)
- **validateWeight**: Weight number validation (6 tests)
- **validateNotNull**: Null/empty checking (3 tests)

### Exception Hierarchy (25 tests)
- **AppException**: Base exception class (4 tests)
- **ValidationException**: Validation errors (3 tests)
- **DatabaseException**: Database-related errors (2 tests)
- **NotFoundException**: Resource not found errors (2 tests)
- **AuthorizationException**: Permission/authorization errors (2 tests)
- **UnexpectedException**: Unexpected/uncategorized errors (3 tests)
- **Exception Conversion**: toAppException helper (5 tests)

### Result Pattern (34 tests)
- **Success<T>**: Successful operation results (6 tests)
- **Error<T>**: Error results (6 tests)
- **Loading<T>**: Loading state results (5 tests)
- **Pattern Matching**: when<R> expression (6 tests)
- **Transformations**: map<U> operation (4 tests)
- **Composition**: flatMap<U> operation (5 tests)
- **Type Safety**: Generic type handling (3 tests)

### Error Handler (10+ tests)
- **safeAsyncCall**: Async error wrapping (7 tests)
- **safeCall**: Sync error wrapping (5 tests)
- **Exception Conversion**: toAppException method (5 tests)
- **Widget Building**: buildErrorWidget method (4 tests)
- **Error Categorization**: Exception type identification (5 tests)

### Integration Tests (24 tests)
- **Exception Throwing**: Multiple exception types (4 tests)
- **Exception Preservation**: Context and information preservation (4 tests)
- **Result Pattern Errors**: Error handling in Result (4 tests)
- **Async Error Handling**: Async operation errors (3 tests)
- **Error Message Formatting**: Message construction (5 tests)
- **Error Context Preservation**: Context through chains (4 tests)

## Running Tests

### Run all tests
```bash
flutter test
```

### Run specific test file
```bash
flutter test test/core/validators/form_validators_test.dart
```

### Run with coverage
```bash
flutter test --coverage
```

### Run with output
```bash
flutter test test/core/ -v
```

## Test Examples

### Validator Tests
```dart
test('returns null for valid arete number', () {
  final result = FormValidators.validateNumeroArete('001234');
  expect(result, isNull);
});

test('returns error for empty arete', () {
  final result = FormValidators.validateNumeroArete('');
  expect(result, isNotNull);
  expect(result, contains('requerido'));
});
```

### Exception Tests
```dart
test('creates validation exception', () {
  final exception = ValidationException(
    message: 'Invalid email format',
  );
  expect(exception.message, contains('Validation Error'));
  expect(exception.title, 'Datos Inválidos');
});
```

### Result Pattern Tests
```dart
test('success case applies transformation', () {
  final result = Result.success(10);
  final mapped = result.map((value) => value * 2);
  
  expect(mapped.getOrNull(), 20);
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
```

### Error Handler Tests
```dart
test('returns success on successful operation', () async {
  final result = await handler.safeAsyncCall(
    () async => 'success',
    shouldRethrow: false,
  );

  expect(result, isA<Result<String>>());
  expect(result.getOrNull(), 'success');
});

test('returns error on exception', () async {
  final exception = Exception('test error');
  final result = await handler.safeAsyncCall(
    () async => throw exception,
    shouldRethrow: false,
  );

  expect(result.isError, true);
});
```

## Test Standards

### Naming Convention
- Test files: `*_test.dart`
- Test groups: `group('ClassName or Feature')`
- Individual tests: `test('describes what it tests')`

### Organization
- Tests grouped by functionality
- Related tests in same group
- Clear, descriptive names
- Arrange-Act-Assert pattern

### Best Practices
1. **Isolation**: Each test is independent
2. **Clarity**: Clear test names and assertions
3. **Coverage**: Test happy paths and error cases
4. **Mocking**: Mock external dependencies
5. **Assertions**: Use specific matchers

## Future Testing

### Planned Tests
- [ ] Provider integration tests
- [ ] Widget integration tests
- [ ] Database operation tests
- [ ] Navigation flow tests
- [ ] UI responsiveness tests
- [ ] Performance benchmarks

### Test Coverage Goals
- Core business logic: 100%
- Utilities and helpers: 100%
- Widgets: 80%+
- Features: 70%+
- Overall: 85%+

## Troubleshooting

### Test Failures
1. Check test isolation - use setUp/tearDown
2. Verify mock data - ensure valid test data
3. Check async operations - use async/await correctly
4. Verify imports - ensure all classes imported

### Running Tests Locally
```bash
# Flutter test with detailed output
flutter test -v

# Run single test file
flutter test test/core/validators/form_validators_test.dart -v

# Run tests matching pattern
flutter test --grep="validateEmail"
```

## Integration with CI/CD

Tests are automatically run on:
- Pre-commit hooks
- Pull request creation
- Main branch pushes

### GitHub Actions Example
```yaml
- name: Run tests
  run: flutter test

- name: Generate coverage
  run: flutter test --coverage
```

## Documentation

For more information on testing in Flutter:
- [Flutter Testing Documentation](https://flutter.dev/docs/testing)
- [Dart Testing Library](https://pub.dev/packages/test)
- [Flutter Test Utilities](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html)
