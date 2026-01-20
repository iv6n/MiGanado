import 'package:isar/isar.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// Servicio para limpiar y resetear la base de datos Isar
///
/// Úsalo cuando:
/// - Necesites recargar los datos de seed
/// - Algo está corrupto en la BD
/// - Quieras empezar de cero con datos de ejemplo
///
/// Ejemplo de uso:
/// ```dart
/// await ResetDatabase.deleteIsarDatabase();
/// await MiGanadoDatabase.init();  // Reinicia con seed nuevo
/// ```
class ResetDatabase {
  /// Elimina la base de datos Isar completamente
  ///
  /// ADVERTENCIA: Esto eliminará TODOS los datos de la app
  static Future<bool> deleteIsarDatabase() async {
    try {
      print('⚠️  ADVIERTE: Eliminando base de datos Isar...');

      // Cerrar Isar si está abierto
      if (Isar.getInstance() != null) {
        final isar = Isar.getInstance();
        await isar?.close(deleteFromDisk: true);
        print('✓ Isar cerrado y eliminado del disco');
      }

      // Obtener directorio de la app
      final dir = await getApplicationDocumentsDirectory();
      final isarDir = Directory('${dir.path}/isar');

      if (await isarDir.exists()) {
        await isarDir.delete(recursive: true);
        print('✓ Directorio de Isar eliminado: ${isarDir.path}');
      }

      print('✅ Base de datos eliminada exitosamente');
      return true;
    } catch (e) {
      print('❌ Error al eliminar la base de datos: $e');
      return false;
    }
  }

  /// Resetea la BD y recarga con nuevos datos de seed
  ///
  /// Debe llamarse desde main() o durante inicialización
  static Future<void> resetAndReseed(MiGanadoDatabase database) async {
    try {
      print('🔄 Reseteando base de datos...');

      // 1. Eliminar BD antigua
      final success = await deleteIsarDatabase();
      if (!success) {
        print('❌ No se pudo eliminar la BD antigua');
        return;
      }

      // 2. Reinicializar BD
      print('📊 Reinicializando base de datos...');
      await MiGanadoDatabase.init();

      print('✅ Base de datos reseteada y recargada exitosamente');
    } catch (e) {
      print('❌ Error durante reset: $e');
      rethrow;
    }
  }
}

/// Botón para UI - permite resetear desde la app
///
/// Úsalo en settings o admin panel:
/// ```dart
/// ElevatedButton(
///   onPressed: () async {
///     final confirmed = await showDialog(
///       context: context,
///       builder: (ctx) => AlertDialog(
///         title: const Text('Resetear Base de Datos'),
///         content: const Text(
///           '⚠️ Esto eliminará TODOS los datos y recargará ejemplos. ¿Estás seguro?'
///         ),
///         actions: [
///           TextButton(
///             onPressed: () => Navigator.pop(ctx, false),
///             child: const Text('Cancelar'),
///           ),
///           TextButton(
///             onPressed: () => Navigator.pop(ctx, true),
///             child: const Text('Sí, Resetear'),
///           ),
///         ],
///       ),
///     );
///
///     if (confirmed == true) {
///       await ResetDatabase.deleteIsarDatabase();
///       if (!mounted) return;
///       ScaffoldMessenger.of(context).showSnackBar(
///         const SnackBar(content: Text('Reinicia la app para recargar datos')),
///       );
///     }
///   },
///   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
///   child: const Text('Resetear Base de Datos'),
/// )
/// ```
