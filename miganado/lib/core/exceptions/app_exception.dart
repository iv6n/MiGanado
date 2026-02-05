import 'package:miganado/core/services/logger_service.dart';

/// ============================================================================
/// EXCEPCIONES PERSONALIZADAS DE LA APP
/// ============================================================================

/// Clase base para todas las excepciones de la aplicación
///
/// Proporciona una interfaz común que todas las excepciones específicas heredan.
/// Incluye logging automático, conversión de mensajes y seguimiento de stack trace.
///
/// Propiedades:
/// - [message]: Descripción legible del error (mostrar al usuario)
/// - [originalError]: Excepción original que causó este error
/// - [stackTrace]: Traza de pila para debugging
///
/// Métodos:
/// - [log()]: Registra automáticamente el error en LoggerService
/// - [toString()]: Retorna el mensaje de error
///
/// Ejemplo:
/// ```dart
/// try {
///   await database.save(animal);
/// } catch (e, st) {
///   throw DatabaseException(
///     message: 'No se pudo guardar el animal',
///     originalError: e,
///     stackTrace: st,
///   );
/// }
/// ```
abstract class AppException implements Exception {
  /// Mensaje descriptivo del error (seguro para mostrar al usuario)
  final String message;

  /// Excepción original que causó este error (para debugging)
  final dynamic originalError;

  /// Traza de pila para debugging (puede ser null)
  final StackTrace? stackTrace;

  /// Detalles técnicos adicionales del error
  String? get details => null;

  /// Título del error para UI (ej: "Error de Base de Datos")
  String get title => 'Error';

  AppException({
    required this.message,
    this.originalError,
    this.stackTrace,
  });

  @override
  String toString() => message;

  /// Registra automáticamente el error en LoggerService
  ///
  /// Incluye el mensaje, error original y stack trace si está disponible.
  /// Útil para debugging y monitoreo de errores en producción.
  void log() {
    if (stackTrace != null) {
      LoggerService.error(message, originalError, stackTrace);
    } else {
      LoggerService.error(message);
    }
  }
}

/// ============================================================================
/// EXCEPCIONES ESPECÍFICAS
/// ============================================================================

/// Error de base de datos Isar
///
/// Se lanza cuando hay problemas al acceder, guardar, actualizar o eliminar datos
/// en la base de datos local (Isar).
///
/// Causas comunes:
/// - El animal/evento no existe
/// - Corrupción de datos
/// - Permiso insuficiente
/// - Espacio en disco insuficiente
///
/// Recuperación:
/// - Reintentar la operación
/// - Verificar integridad de base de datos
/// - Hacer reset de base de datos (últimorecurso)
///
/// Ejemplo:
/// ```dart
/// try {
///   await database.save(animal);
/// } catch (e, st) {
///   throw DatabaseException(
///     message: 'No se pudo guardar el animal: ${animal.uuid}',
///     originalError: e,
///     stackTrace: st,
///   );
/// }
/// ```
class DatabaseException extends AppException {
  @override
  String get title => 'Error de Base de Datos';

  DatabaseException({
    required String message,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Database Error: $message',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Error de validación de datos
///
/// Se lanza cuando los datos no cumplen con las reglas de validación definidas.
/// Por ejemplo: email inválido, número de arete vacío, fecha futura inválida, etc.
///
/// Causas comunes:
/// - Campo vacío cuando es requerido
/// - Formato de datos inválido (email, teléfono, etc.)
/// - Rango de valores fuera de límites
/// - Datos inconsistentes o conflictivos
///
/// Recuperación:
/// - Mostrar al usuario qué campo está inválido
/// - Sugerir formato correcto
/// - Permitir al usuario corregir y reintentar
///
/// Ejemplo:
/// ```dart
/// final error = FormValidators.validateNumeroArete(value);
/// if (error != null) {
///   throw ValidationException(message: error);
/// }
/// ```
class ValidationException extends AppException {
  @override
  String get title => 'Datos Inválidos';

  ValidationException({
    required String message,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Validation Error: $message',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Error de conectividad o comunicación de red
///
/// Se lanza cuando hay problemas con la conexión a internet o comunicación
/// con servidor remoto.
///
/// Causas comunes:
/// - Sin conexión a internet
/// - Servidor remoto no disponible
/// - Timeout de conexión
/// - DNS no resuelto
///
/// Recuperación:
/// - Verificar conexión a internet
/// - Reintentar en algunos segundos
/// - Usar modo offline si está disponible
///
/// Ejemplo:
/// ```dart
/// try {
///   final datos = await api.fetchData();
/// } catch (e, st) {
///   throw NetworkException(
///     message: 'No se pudo conectar al servidor',
///     originalError: e,
///     stackTrace: st,
///   );
/// }
/// ```
class NetworkException extends AppException {
  @override
  String get title => 'Error de Conexión';

  NetworkException({
    required String message,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Network Error: $message',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Error cuando no se encuentra un recurso
///
/// Se lanza cuando se intenta acceder a un recurso (animal, evento, ubicación)
/// que no existe en la base de datos.
///
/// Causas comunes:
/// - El recurso fue eliminado
/// - UUID inválido o typo
/// - Sincronización incompleta entre dispositivos
///
/// Recuperación:
/// - Mostrar lista de recursos disponibles
/// - Permitir al usuario crear el recurso faltante
/// - Volver a la pantalla anterior
///
/// Ejemplo:
/// ```dart
/// final animal = database.getAnimal(uuid);
/// if (animal == null) {
///   throw NotFoundException(message: 'Animal no encontrado: $uuid');
/// }
/// ```
class NotFoundException extends AppException {
  @override
  String get title => 'No Encontrado';

  NotFoundException({
    required String message,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Not Found: $message',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Error de autorización o permisos
///
/// Se lanza cuando el usuario intenta realizar una acción sin permisos suficientes.
/// En versión actual no hay sistema de permisos, pero se mantiene para futura
/// expansión a múltiples usuarios.
///
/// Uso futuro:
/// - Rol de usuario insuficiente
/// - Recurso privado de otro usuario
/// - Operación administrativo solo
///
/// Ejemplo:
/// ```dart
/// if (!user.hasPermission('edit_animals')) {
///   throw AuthorizationException(
///     message: 'No tienes permiso para editar animales'
///   );
/// }
/// ```
class AuthorizationException extends AppException {
  @override
  String get title => 'Permiso Denegado';

  AuthorizationException({
    required String message,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Authorization Error: $message',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Error no categorizado o inesperado
///
/// Se lanza cuando ocurre un error que no encaja en otras categorías específicas.
/// Esto indica un bug o condición inesperada que necesita debugging.
///
/// Causas comunes:
/// - Bug en el código
/// - Estado de aplicación corrupto
/// - Comportamiento indefinido
///
/// Recuperación:
/// - Reportar a desarrolladores (incluir detalles técnicos)
/// - Permitir usuario reintentar o volver a inicio
/// - Considerar hacer reset de app data
///
/// Ejemplo:
/// ```dart
/// try {
///   await complexOperation();
/// } catch (e, st) {
///   throw UnexpectedException(
///     originalError: e,
///     stackTrace: st,
///   );
/// }
/// ```
class UnexpectedException extends AppException {
  @override
  String get title => 'Error Inesperado';

  @override
  String get details => '$originalError';

  UnexpectedException({
    required dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: 'Unexpected Error: $originalError',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// ============================================================================
/// HELPERS PARA MANEJO DE ERRORES
/// ============================================================================

/// Convertir cualquier excepción a AppException
/// Proporciona normalización de excepciones para manejo consistente
AppException toAppException(dynamic error, StackTrace? stackTrace) {
  if (error is AppException) return error;

  if (error is FormatException) {
    return ValidationException(message: error.message);
  }

  if (error is TypeError) {
    return ValidationException(message: 'Type error: ${error.toString()}');
  }

  return UnexpectedException(
    originalError: error,
    stackTrace: stackTrace,
  );
}
