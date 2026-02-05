import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ============================================================================
/// RESULT PATTERN - Type-Safe Async Result Handling
/// ============================================================================

/// Sealed Result type para operaciones asincrónicas
///
/// Representa el estado de una operación asincrónica de manera type-safe:
/// - [Success<T>]: Operación completada exitosamente con resultado de tipo T
/// - [Error<T>]: Operación falló con excepción
/// - [Loading<T>]: Operación en progreso
///
/// Ventajas del Result Pattern:
/// 1. **Type-Safe**: El resultado T es consistente en todos los estados
/// 2. **Exhaustivo**: El compilador verifica que se procesen todos los casos
/// 3. **Explícito**: El estado es claro en el código
/// 4. **Composable**: Fácil combinar múltiples resultados
///
/// Comparación con AsyncValue:
/// ```
/// Result<T>      | AsyncValue<T>
/// ============== | ==============
/// 3 estados      | 5 estados (más complejo)
/// Sealed class   | Genérico abierto
/// Simple API     | API más grande
/// Perfect para   | Cuando necesitas
/// la mayoría      | granularidad extra
/// ```
///
/// Ejemplo de uso:
/// ```dart
/// // Obtener resultado
/// final result = await loadAnimals();
///
/// // Procesar con pattern matching
/// return result.when(
///   success: (animals) => AnimalList(animals),
///   error: (error) => ErrorScreen(error.message),
///   loading: () => LoadingSpinner(),
/// );
///
/// // Acceder a datos de forma segura
/// final animals = result.getOrNull();
/// if (animals != null) {
///   print('Animales: ${animals.length}');
/// }
/// ```
sealed class Result<T> {
  const Result();

  /// Crear resultado exitoso
  factory Result.success(T data) = Success<T>;

  /// Crear resultado con error
  factory Result.error(Exception error) = Error<T>;

  /// Crear resultado en carga
  factory Result.loading() = Loading<T>;

  /// Pattern matching para procesar resultados
  ///
  /// Este es el método principal para trabajar con Results.
  /// El compilador asegura que se procesen todos los casos.
  ///
  /// Parámetros:
  /// - [success]: Llamado cuando la operación es exitosa, recibe datos de tipo T
  /// - [error]: Llamado cuando hay error, recibe la excepción
  /// - [loading]: Llamado cuando está en progreso
  ///
  /// Retorna: Valor de tipo R procesado según el estado
  ///
  /// Ejemplo:
  /// ```dart
  /// final view = result.when<Widget>(
  ///   success: (animals) => AnimalListView(animals),
  ///   error: (e) => ErrorView(e.message),
  ///   loading: () => SkeletonLoader(),
  /// );
  /// ```
  R when<R>({
    required R Function(T data) success,
    required R Function(Exception exception) error,
    required R Function() loading,
  }) {
    return switch (this) {
      Success(:final data) => success(data),
      Error(error: var exception) => error(exception),
      Loading() => loading(),
    };
  }

  /// Obtener datos o null si no es un Success
  ///
  /// Útil para lógica que no necesita pattern matching completo.
  /// Retorna null si el resultado es Error o Loading.
  ///
  /// Ejemplo:
  /// ```dart
  /// final animals = result.getOrNull();
  /// if (animals != null) {
  ///   updateUI(animals);
  /// }
  /// ```
  T? getOrNull() => this is Success<T> ? (this as Success<T>).data : null;

  /// Obtener error o null si no es un Error
  ///
  /// Útil para lógica que necesita acceder al error específico.
  /// Retorna null si el resultado es Success o Loading.
  ///
  /// Ejemplo:
  /// ```dart
  /// final error = result.getErrorOrNull();
  /// if (error != null) {
  ///   logError(error);
  /// }
  /// ```
  Exception? getErrorOrNull() =>
      this is Error<T> ? (this as Error<T>).error : null;

  /// Verificar si es exitoso
  bool get isSuccess => this is Success<T>;

  /// Verificar si es error
  bool get isError => this is Error<T>;

  /// Verificar si está cargando
  bool get isLoading => this is Loading<T>;

  /// Mapear el dato a otro tipo (transformación)
  ///
  /// Transforma los datos de tipo T a tipo U, manteniendo Error y Loading.
  /// Útil para convertir tipos o procesar datos después de Success.
  ///
  /// Ejemplo:
  /// ```dart
  /// // Convertir List<AnimalEntity> a List<AnimalViewModel>
  /// final viewModels = result.map((animals) =>
  ///   animals.map((a) => AnimalViewModel.from(a)).toList()
  /// );
  /// ```
  Result<U> map<U>(U Function(T) fn) {
    return when(
      success: (data) => Result.success(fn(data)),
      error: (error) => Result.error(error),
      loading: () => Result.loading(),
    );
  }

  /// Encadenar resultados (composición monádica)
  ///
  /// Permite encadenar múltiples operaciones que retornan Result.
  /// Si alguna falla, el error se propaga.
  ///
  /// Ejemplo:
  /// ```dart
  /// final result = loadAnimal()
  ///   .flatMap((animal) => loadHistory(animal.uuid))
  ///   .flatMap((history) => filterRecent(history));
  /// ```
  Result<U> flatMap<U>(Result<U> Function(T) fn) {
    return when(
      success: (data) => fn(data),
      error: (error) => Result.error(error),
      loading: () => Result.loading(),
    );
  }
}

/// Resultado exitoso de una operación
///
/// Contiene los datos de tipo T que resultó de la operación exitosa.
///
/// Propiedades:
/// - [data]: Los datos resultantes (tipo T)
///
/// Ejemplo:
/// ```dart
/// final animals = [AnimalEntity(...), AnimalEntity(...)];
/// final result = Result.success(animals);
/// ```
final class Success<T> extends Result<T> {
  /// Datos resultantes de la operación exitosa
  final T data;

  const Success(this.data);

  @override
  String toString() => 'Success($data)';
}

/// Resultado con error de una operación
///
/// Contiene la excepción que ocurrió durante la operación.
///
/// Propiedades:
/// - [error]: La excepción que ocurrió (tipo Exception)
/// - [message]: Conversión del error a String para logging
///
/// Ejemplo:
/// ```dart
/// try {
///   await loadData();
/// } catch (e) {
///   return Result.error(Exception('Falló al cargar: $e'));
/// }
/// ```
final class Error<T> extends Result<T> {
  /// Excepción que ocurrió durante la operación
  final Exception error;

  const Error(this.error);

  /// Mensaje del error como String
  String get message => error.toString();

  @override
  String toString() => 'Error($error)';
}

/// Resultado en estado de carga
///
/// Indica que la operación está en progreso.
/// Se utiliza para mostrar spinners o loaders en la UI.
///
/// Ejemplo:
/// ```dart
/// final result = Result<List<Animal>>.loading();
/// // Mostrar loading spinner
/// await fetchAnimals(); // <-- Operación
/// // Actualizar con Success o Error
/// ```
final class Loading<T> extends Result<T> {
  const Loading();

  @override
  String toString() => 'Loading()';
}

/// ============================================================================
/// EXTENSIONES PARA RIVERPOD
/// ============================================================================

/// Extensión para convertir AsyncValue<T> a Result<T>
///
/// Facilita la conversión de AsyncValue de Riverpod a Result para
/// usar el Result Pattern en providers.
///
/// Ejemplo:
/// ```dart
/// ref.watch(myProvider).toResult().when(
///   success: (data) => Text(data.toString()),
///   error: (e) => Text('Error: $e'),
///   loading: () => CircularProgressIndicator(),
extension ResultHelper<T> on AsyncValue<T> {
  /// Convierte el AsyncValue actual a Result<T>
  ///
  /// Mapea los estados:
  /// - data → Success
  /// - error → Error
  /// - loading/idle → Loading
  ///
  /// Uso:
  /// ```dart
  /// final result = ref.watch(myProvider).toResult();
  /// return result.when(
  ///   success: (data) => showData(data),
  ///   error: (e) => showError(e),
  ///   loading: () => showLoader(),
  /// );
  /// ```
  /// )
  /// ```
  Result<T> toResult() => when(
        data: (data) => Result.success(data),
        error: (error, _) => Result.error(error as Exception),
        loading: () => Result.loading(),
      );
}

/// ============================================================================
/// HELPERS PARA CREAR PROVIDERS CON RESULT
/// ============================================================================

/// Provider que retorna Result<T> automáticamente
///
/// Uso:
/// ```dart
/// final myProvider = resultProvider((ref) async {
///   return await someAsyncOperation();
/// });
/// ```
FutureProvider<Result<T>> resultProvider<T>(
  Future<T> Function(Ref ref) create,
) {
  return FutureProvider<Result<T>>((ref) async {
    try {
      final data = await create(ref);
      return Result.success(data);
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  });
}
