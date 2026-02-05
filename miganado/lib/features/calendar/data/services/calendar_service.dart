import 'package:isar/isar.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';

/// Servicio para queries de calendario
class CalendarService {
  static final CalendarService _instance = CalendarService._internal();

  CalendarService._internal();

  factory CalendarService() {
    return _instance;
  }

  Isar get _isar => MiGanadoDatabase.isar;

  /// Obtener todos los eventos
  Future<List<EventoGanaderoEntity>> obtenerTodos() async {
    try {
      return await _isar.eventoGanaderoEntitys.where().findAll();
    } catch (e) {
      print('Error obtenerTodos: $e');
      return [];
    }
  }

  /// Obtener eventos pendientes (próximos)
  Future<List<EventoGanaderoEntity>> obtenerProximos({int dias = 7}) async {
    try {
      final hoy = DateTime.now();
      final futuro = hoy.add(Duration(days: dias));
      final todos = await _isar.eventoGanaderoEntitys.where().findAll();

      return todos
          .where((e) =>
              e.fechaProgramada.isAfter(hoy) &&
              e.fechaProgramada.isBefore(futuro))
          .toList()
        ..sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    } catch (e) {
      print('Error obtenerProximos: $e');
      return [];
    }
  }

  /// Obtener eventos vencidos
  Future<List<EventoGanaderoEntity>> obtenerVencidos() async {
    try {
      final hoy = DateTime.now();
      final todos = await _isar.eventoGanaderoEntitys.where().findAll();

      return todos.where((e) => e.fechaProgramada.isBefore(hoy)).toList()
        ..sort((a, b) => b.fechaProgramada.compareTo(a.fechaProgramada));
    } catch (e) {
      print('Error obtenerVencidos: $e');
      return [];
    }
  }

  /// Obtener eventos por mes
  Future<Map<DateTime, List<EventoGanaderoEntity>>> obtenerPorMes(
      {required int anio, required int mes}) async {
    try {
      final todos = await _isar.eventoGanaderoEntitys.where().findAll();
      final mapa = <DateTime, List<EventoGanaderoEntity>>{};

      for (var evento in todos) {
        if (evento.fechaProgramada.year == anio &&
            evento.fechaProgramada.month == mes) {
          final fecha = DateTime(evento.fechaProgramada.year,
              evento.fechaProgramada.month, evento.fechaProgramada.day);

          if (!mapa.containsKey(fecha)) {
            mapa[fecha] = [];
          }
          mapa[fecha]!.add(evento);
        }
      }

      return mapa;
    } catch (e) {
      print('Error obtenerPorMes: $e');
      return {};
    }
  }

  /// Buscar eventos por término
  Future<List<EventoGanaderoEntity>> buscar(String termino) async {
    try {
      final todos = await _isar.eventoGanaderoEntitys.where().findAll();
      final lower = termino.toLowerCase();

      return todos
          .where((e) =>
              e.titulo.toLowerCase().contains(lower) ||
              (e.descripcion?.toLowerCase().contains(lower) ?? false))
          .toList();
    } catch (e) {
      print('Error buscar: $e');
      return [];
    }
  }
}
