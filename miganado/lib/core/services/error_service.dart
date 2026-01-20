import 'package:flutter/material.dart';

/// Servicio centralizado para mostrar errores, éxito y otros mensajes
class ErrorService {
  /// Muestra un error en un SnackBar con color rojo
  static void showError(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 4)}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade600,
        duration: duration,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Muestra un mensaje de éxito en SnackBar con color verde
  static void showSuccess(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green.shade600,
        duration: duration,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Muestra un mensaje informativo con color azul
  static void showInfo(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade600,
        duration: duration,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Muestra una advertencia en color naranja
  static void showWarning(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange.shade600,
        duration: duration,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Muestra un diálogo de error con título y descripción
  static void showErrorDialog(
    BuildContext context,
    String title,
    String message, {
    VoidCallback? onRetry,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          if (onRetry != null)
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                onRetry();
              },
              child: const Text('Reintentar'),
            ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }

  /// Muestra un diálogo de confirmación
  static Future<bool> showConfirmDialog(
    BuildContext context,
    String title,
    String message, {
    String? confirmText,
    String? cancelText,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(cancelText ?? 'Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(confirmText ?? 'Confirmar'),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  /// Mapea excepciones comunes a mensajes amigables
  static String getFriendlyErrorMessage(dynamic error) {
    if (error is Exception) {
      final message = error.toString();

      if (message.contains('No such file or directory')) {
        return 'No se encontró el archivo solicitado';
      }
      if (message.contains('Permission denied')) {
        return 'No tienes permisos para realizar esta acción';
      }
      if (message.contains('Network')) {
        return 'Error de conexión. Verifica tu conexión a Internet';
      }
      if (message.contains('Database')) {
        return 'Error en la base de datos. Intenta de nuevo';
      }
      if (message.contains('UnimplementedError')) {
        return 'Esta función aún no está implementada';
      }

      return message;
    }

    return 'Ocurrió un error inesperado: $error';
  }
}
