/// ============================================================================
/// MANEJO GLOBAL DE ERRORES
/// ============================================================================

import 'package:flutter/material.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Mixin para manejo seguro de operaciones asincrónicas
///
/// Proporciona métodos para ejecutar operaciones con manejo de errores automático,
/// logging integrado y conversión de excepciones a AppException.
///
/// Ejemplo:
/// ```dart
/// class MyProvider with ErrorHandlerMixin {
///   Future<List<Animal>> loadAnimals() async {
///     return safeAsyncCall(
///       operation: () => repository.getAllAnimales(),
///       operationName: 'loadAnimals',
///       module: 'MyProvider',
///     );
///   }
/// }
/// ```
mixin ErrorHandlerMixin {
  /// Ejecutar operación asincrónica con manejo de errores automático
  ///
  /// Parámetros:
  /// - [operation]: La operación asincrónica a ejecutar
  /// - [operationName]: Nombre legible de la operación (para logging)
  /// - [module]: Módulo/clase donde se ejecuta (para contexto en logs)
  /// - [onError]: Valor a retornar si hay error (si es null, se relanza la excepción)
  /// - [rethrow]: Si es true, siempre relanza la excepción después de loguear
  ///
  /// Retorna:
  /// - El resultado de [operation] si es exitosa
  /// - [onError] si hay error y está definido
  /// - Relanza la excepción si [shouldRethrow] es true o [onError] es null
  Future<T> safeAsyncCall<T>({
    required Future<T> Function() operation,
    required String operationName,
    required String module,
    T? onError,
    bool shouldRethrow = false,
  }) async {
    try {
      LoggerService.startOperation(operationName, module);
      final result = await operation();
      LoggerService.operationCompleted(operationName, module);
      return result;
    } catch (e, st) {
      final appEx = toAppException(e, st);
      LoggerService.error(
        'Error en $operationName',
        appEx,
        st,
        module,
      );

      if (shouldRethrow) {
        throw appEx;
      }

      if (onError != null) {
        return onError;
      }

      throw appEx;
    }
  }

  /// Ejecutar operación sincrónica con manejo de errores
  ///
  /// Similar a [safeAsyncCall] pero para operaciones sincrónicas
  T safeCall<T>({
    required T Function() operation,
    required String operationName,
    required String module,
    T? onError,
    bool shouldRethrow = false,
  }) {
    try {
      LoggerService.startOperation(operationName, module);
      final result = operation();
      LoggerService.operationCompleted(operationName, module);
      return result;
    } catch (e, st) {
      final appEx = toAppException(e, st);
      LoggerService.error(
        'Error en $operationName',
        appEx,
        st,
        module,
      );

      if (shouldRethrow) {
        throw appEx;
      }

      if (onError != null) {
        return onError;
      }

      throw appEx;
    }
  }

  /// Construir error widget para mostrar en UI
  ///
  /// Parámetros:
  /// - [error]: La excepción lanzada
  /// - [onRetry]: Callback cuando el usuario toca 'Reintentar'
  /// - [showDetails]: Si es true, muestra detalles técnicos del error
  ///
  /// Retorna: Un Widget listo para mostrar en lugar del contenido
  Widget buildErrorWidget({
    required Object error,
    VoidCallback? onRetry,
    bool showDetails = false,
  }) {
    final appEx = error is AppException ? error : toAppException(error, null);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red.shade400,
            size: 64,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              appEx.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              appEx.message,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (showDetails && appEx.details != null) ...[
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Detalles: ${appEx.details}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                  fontFamily: 'monospace',
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
          if (onRetry != null) ...[
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Reintentar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  /// Convertir cualquier excepción a AppException
  ///
  /// Mapea excepciones conocidas a tipos específicos de AppException
  /// Las excepciones desconocidas se convierten a UnexpectedException
  AppException toAppException(Object error, StackTrace? stackTrace) {
    if (error is AppException) {
      return error;
    }

    if (error is FormatException) {
      return ValidationException(
        message: error.message,
      );
    }

    if (error is RangeError || error is ArgumentError) {
      return ValidationException(
        message: error.toString(),
      );
    }

    return UnexpectedException(
      originalError: error,
      stackTrace: stackTrace,
    );
  }
}

/// Extension para builders de error comunes
extension ErrorWidgetExtension on Object {
  /// Construir widget de error simple
  ///
  /// Ejemplo:
  /// ```dart
  /// error.toErrorWidget(
  ///   onRetry: () => ref.refresh(provider),
  /// )
  /// ```
  Widget toErrorWidget({
    VoidCallback? onRetry,
    bool showDetails = false,
  }) =>
      _ErrorHandlerHelper().buildErrorWidget(
        error: this,
        onRetry: onRetry,
        showDetails: showDetails,
      );
}

/// Helper interno para extension
class _ErrorHandlerHelper with ErrorHandlerMixin {}
