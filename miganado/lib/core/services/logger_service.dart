import 'package:logger/logger.dart';

/// ============================================================================
/// SERVICIO DE LOGGING CENTRALIZADO
/// ============================================================================

/// Servicio singleton para logs consistentes en toda la aplicación
class LoggerService {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  /// Log de información con módulo opcional
  static void info(String message, [String? module]) {
    final prefix = module != null ? '[$module] ' : '';
    _logger.i('$prefix$message');
  }

  /// Log de advertencia con módulo opcional
  static void warning(String message, [String? module]) {
    final prefix = module != null ? '[$module] ' : '';
    _logger.w('$prefix$message');
  }

  /// Log de error con contexto completo
  static void error(
    String message, [
    dynamic errorVal,
    StackTrace? stackTrace,
    String? module,
  ]) {
    final prefix = module != null ? '[$module] ' : '';
    if (stackTrace != null) {
      _logger.e('$prefix$message', error: errorVal, stackTrace: stackTrace);
    } else if (errorVal != null) {
      _logger.e('$prefix$message', error: errorVal);
    } else {
      _logger.e('$prefix$message');
    }
  }

  /// Log de debug
  static void debug(String message, [String? module]) {
    final prefix = module != null ? '[$module] ' : '';
    _logger.d('$prefix$message');
  }

  /// Log verbose
  static void verbose(String message, [String? module]) {
    final prefix = module != null ? '[$module] ' : '';
    _logger.v('$prefix$message');
  }

  /// Log de operación iniciada
  static void startOperation(String operationName, [String? module]) {
    info('▶️  Iniciando: $operationName', module);
  }

  /// Log de operación completada
  static void operationCompleted(String operationName, [String? module]) {
    info('✅ Completado: $operationName', module);
  }

  /// Log de operación fallida
  static void operationFailed(
    String operationName,
    dynamic errorVal, [
    String? module,
  ]) {
    error('❌ Error en $operationName: $errorVal', errorVal, null, module);
  }

  /// Log de validación exitosa
  static void validationSuccess(String fieldName, [String? module]) {
    info('✓ Validación correcta: $fieldName', module);
  }

  /// Log de validación fallida
  static void validationFailed(String fieldName, String reason,
      [String? module]) {
    warning('✗ Validación fallida en $fieldName: $reason', module);
  }
}
