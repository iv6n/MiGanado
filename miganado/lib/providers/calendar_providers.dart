import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/repositories/repositorio_calendario_ganadero.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

/// Provider para obtener eventos de un día específico y estado
final eventosPorDiaYEstadoProvider = FutureProvider.family<
    List<EventoGanaderoEntity>,
    EventosPorDiaYEstadoParams>((ref, params) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos = await repository.obtenerTodosLosEventos();
    // Filtrar por fecha (solo día, ignorando hora)
    final eventosDelDia = eventos.where((e) {
      final fecha = e.fechaProgramada;
      return fecha.year == params.dia.year &&
          fecha.month == params.dia.month &&
          fecha.day == params.dia.day &&
          e.estado == params.estado;
    }).toList();
    eventosDelDia
        .sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return eventosDelDia;
  } catch (e) {
    print('Error obteniendo eventos por día y estado: $e');
    return [];
  }
});

/// Parámetros para el provider de eventos por día y estado
class EventosPorDiaYEstadoParams {
  final DateTime dia;
  final EstadoEvento estado;
  EventosPorDiaYEstadoParams({required this.dia, required this.estado});
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventosPorDiaYEstadoParams &&
          runtimeType == other.runtimeType &&
          dia.year == other.dia.year &&
          dia.month == other.dia.month &&
          dia.day == other.dia.day &&
          estado == other.estado;
  @override
  int get hashCode =>
      dia.year.hashCode ^
      dia.month.hashCode ^
      dia.day.hashCode ^
      estado.hashCode;
}

// ==================== DATABASE PROVIDER ====================

/// Provider para acceder a la instancia de la base de datos
final databaseProvider = Provider<MiGanadoDatabase>((ref) {
  return MiGanadoDatabase();
});

// ==================== REPOSITORY PROVIDER ====================

/// Provider para el repositorio del calendario
final calendarRepositoryProvider =
    Provider<RepositorioCalendarioGanadero>((ref) {
  return RepositorioCalendarioGanadero();
});

// ==================== EVENTOS PENDIENTES ====================

/// Provider para obtener todos los eventos pendientes
final eventosPendientesProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos =
        await repository.obtenerEventosPorEstado(EstadoEvento.pendiente);
    // Ordenar por fecha
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return eventos;
  } catch (e) {
    print('Error obteniendo eventos pendientes: $e');
    return [];
  }
});

// ==================== EVENTOS REALIZADOS ====================

/// Provider para obtener eventos realizados
final eventosRealizadosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos =
        await repository.obtenerEventosPorEstado(EstadoEvento.realizado);
    eventos.sort((a, b) =>
        b.fechaEjecutada!.compareTo(a.fechaEjecutada ?? DateTime.now()));
    return eventos;
  } catch (e) {
    print('Error obteniendo eventos realizados: $e');
    return [];
  }
});

// ==================== EVENTOS PRÓXIMOS ====================

/// Provider para obtener eventos próximos (próximos 7 días)
final eventosProximosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos = await repository.obtenerEventosProximos(7);

    // Filtrar solo los pendientes
    final eventosPendientes =
        eventos.where((e) => e.estado == EstadoEvento.pendiente).toList();

    // Ordenar por fecha
    eventosPendientes
        .sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));

    return eventosPendientes;
  } catch (e) {
    print('Error obteniendo eventos próximos: $e');
    return [];
  }
});

// ==================== EVENTOS URGENTES ====================

/// Provider para obtener eventos críticos pendientes
final eventosUrgentesProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final criticos = await repository.obtenerEventosCriticos();
    final pendientes =
        criticos.where((e) => e.estado == EstadoEvento.pendiente).toList();

    pendientes.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return pendientes;
  } catch (e) {
    print('Error obteniendo eventos urgentes: $e');
    return [];
  }
});

// ==================== EVENTOS POR CATEGORÍA ====================

/// Provider para obtener eventos por categoría
final eventosPorCategoriaProvider =
    FutureProvider.family<List<EventoGanaderoEntity>, CategoriaEvento>(
        (ref, categoria) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos = await repository.obtenerEventosPorCategoria(categoria);
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return eventos;
  } catch (e) {
    print('Error obteniendo eventos por categoría: $e');
    return [];
  }
});

// ==================== EVENTOS POR ESTADO ====================

/// Provider para obtener eventos por estado específico
final eventosPorEstadoProvider =
    FutureProvider.family<List<EventoGanaderoEntity>, EstadoEvento>(
        (ref, estado) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos = await repository.obtenerEventosPorEstado(estado);
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return eventos;
  } catch (e) {
    print('Error obteniendo eventos por estado: $e');
    return [];
  }
});

// ==================== TODOS LOS EVENTOS ====================

/// Provider para obtener todos los eventos
final todosLosEventosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final eventos = await repository.obtenerTodosLosEventos();
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    return eventos;
  } catch (e) {
    print('Error obteniendo todos los eventos: $e');
    return [];
  }
});

// ==================== RESUMEN DE EVENTOS ====================

/// Provider para obtener resumen de eventos (conteos)
final resumenEventosProvider = FutureProvider<Map<String, int>>((ref) async {
  final repository = ref.watch(calendarRepositoryProvider);
  try {
    final pendientes =
        await repository.obtenerEventosPorEstado(EstadoEvento.pendiente);
    final realizados =
        await repository.obtenerEventosPorEstado(EstadoEvento.realizado);
    final vencidos =
        await repository.obtenerEventosPorEstado(EstadoEvento.vencido);

    return {
      'pendientes': pendientes.length,
      'realizados': realizados.length,
      'vencidos': vencidos.length,
      'total': pendientes.length + realizados.length + vencidos.length,
    };
  } catch (e) {
    print('Error obteniendo resumen: $e');
    return {
      'pendientes': 0,
      'realizados': 0,
      'vencidos': 0,
      'total': 0,
    };
  }
});
