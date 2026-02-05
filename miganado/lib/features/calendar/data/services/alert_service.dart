import 'package:isar/isar.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/models/alerta_entity.dart';

/// Servicio centralizado para gestionar alertas
/// Proporciona queries optimizadas y operaciones de estado
class AlertService {
  static final AlertService _instance = AlertService._internal();

  AlertService._internal();

  factory AlertService() {
    return _instance;
  }

  Isar get _isar => MiGanadoDatabase.isar;

  /// Obtener todas las alertas
  Future<List<AlertaEntity>> obtenerTodas() async {
    try {
      return await _isar.alertaEntitys.where().findAll();
    } catch (e) {
      print('Error obtenerTodas: $e');
      return [];
    }
  }

  /// Obtener alertas no descartadas
  Future<List<AlertaEntity>> obtenerActivas() async {
    try {
      final todas = await _isar.alertaEntitys.where().findAll();
      return todas.where((a) => a.estado != EstadoAlerta.descartada).toList();
    } catch (e) {
      print('Error obtenerActivas: $e');
      return [];
    }
  }

  /// Marcar alerta como vista
  Future<void> marcarAlertaVista(AlertaEntity alerta) async {
    try {
      alerta.estado = EstadoAlerta.visto;
      alerta.fechaVista = DateTime.now();
      await _isar.writeTxn(() => _isar.alertaEntitys.put(alerta));
    } catch (e) {
      print('Error marcarAlertaVista: $e');
    }
  }

  /// Marcar alerta como actuada
  Future<void> marcarAlertaActuada(AlertaEntity alerta) async {
    try {
      alerta.estado = EstadoAlerta.actuado;
      alerta.fechaActuada = DateTime.now();
      await _isar.writeTxn(() => _isar.alertaEntitys.put(alerta));
    } catch (e) {
      print('Error marcarAlertaActuada: $e');
    }
  }

  /// Descartar alerta
  Future<void> descartarAlerta(AlertaEntity alerta) async {
    try {
      alerta.estado = EstadoAlerta.descartada;
      alerta.fechaDescartada = DateTime.now();
      await _isar.writeTxn(() => _isar.alertaEntitys.put(alerta));
    } catch (e) {
      print('Error descartarAlerta: $e');
    }
  }

  /// Limpiar alertas antiguas (más de 90 días atrás)
  Future<int> limpiarAlertasAntiguas({int diasRetension = 90}) async {
    try {
      final fechaLimite =
          DateTime.now().subtract(Duration(days: diasRetension));
      final todas = await _isar.alertaEntitys.where().findAll();
      final alertasAntiguas =
          todas.where((a) => a.fechaAlerta.isBefore(fechaLimite)).toList();

      if (alertasAntiguas.isNotEmpty) {
        await _isar.writeTxn(() => _isar.alertaEntitys
            .deleteAll(alertasAntiguas.map((a) => a.id).toList()));
      }
      return alertasAntiguas.length;
    } catch (e) {
      print('Error limpiarAlertasAntiguas: $e');
      return 0;
    }
  }
}
