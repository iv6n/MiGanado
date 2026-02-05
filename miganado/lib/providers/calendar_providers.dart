import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/repositories/repositorio_calendario_ganadero.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

/// Provider para obtener eventos de un día específico y estado
final eventosPorDiaYEstadoProvider = FutureProvider.family<
    List<EventoGanaderoEntity>,
    EventosPorDiaYEstadoParams>((ref, params) async {
  try {
    LoggerService.startOperation('eventosPorDiaYEstado', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
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

    LoggerService.operationCompleted(
        'eventosPorDiaYEstado', 'calendar_providers');
    return eventosDelDia;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error('Error obteniendo eventos por día y estado', appEx, st,
        'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
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
  try {
    LoggerService.startOperation('eventosPendientes', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos =
        await repository.obtenerEventosPorEstado(EstadoEvento.pendiente);
    // Ordenar por fecha
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    LoggerService.operationCompleted('eventosPendientes', 'calendar_providers');
    return eventos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo eventos pendientes', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos pendientes: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== EVENTOS REALIZADOS ====================

/// Provider para obtener eventos realizados
final eventosRealizadosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  try {
    LoggerService.startOperation('eventosRealizados', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos =
        await repository.obtenerEventosPorEstado(EstadoEvento.realizado);
    eventos.sort((a, b) =>
        b.fechaEjecutada!.compareTo(a.fechaEjecutada ?? DateTime.now()));
    LoggerService.operationCompleted('eventosRealizados', 'calendar_providers');
    return eventos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo eventos realizados', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos realizados: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== EVENTOS PRÓXIMOS ====================

/// Provider para obtener eventos próximos (próximos 7 días)
final eventosProximosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  try {
    LoggerService.startOperation('eventosProximos', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos = await repository.obtenerEventosProximos(7);

    // Filtrar solo los pendientes
    final eventosPendientes =
        eventos.where((e) => e.estado == EstadoEvento.pendiente).toList();

    // Ordenar por fecha
    eventosPendientes
        .sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));

    LoggerService.operationCompleted('eventosProximos', 'calendar_providers');
    return eventosPendientes;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo eventos próximos', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos próximos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== EVENTOS URGENTES ====================

/// Provider para obtener eventos críticos pendientes
final eventosUrgentesProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  try {
    LoggerService.startOperation('eventosUrgentes', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final criticos = await repository.obtenerEventosCriticos();
    final pendientes =
        criticos.where((e) => e.estado == EstadoEvento.pendiente).toList();

    pendientes.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    LoggerService.operationCompleted('eventosUrgentes', 'calendar_providers');
    return pendientes;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo eventos urgentes', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos urgentes: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== EVENTOS POR CATEGORÍA ====================

/// Provider para obtener eventos por categoría
final eventosPorCategoriaProvider =
    FutureProvider.family<List<EventoGanaderoEntity>, CategoriaEvento>(
        (ref, categoria) async {
  try {
    LoggerService.startOperation('eventosPorCategoria', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos = await repository.obtenerEventosPorCategoria(categoria);
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    LoggerService.operationCompleted(
        'eventosPorCategoria', 'calendar_providers');
    return eventos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error('Error obteniendo eventos por categoría', appEx, st,
        'calendar_providers');
    throw NetworkException(
      message:
          'No se pudieron cargar los eventos de esa categoría: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== EVENTOS POR ESTADO ====================

/// Provider para obtener eventos por estado específico
final eventosPorEstadoProvider =
    FutureProvider.family<List<EventoGanaderoEntity>, EstadoEvento>(
        (ref, estado) async {
  try {
    LoggerService.startOperation('eventosPorEstado', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos = await repository.obtenerEventosPorEstado(estado);
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    LoggerService.operationCompleted('eventosPorEstado', 'calendar_providers');
    return eventos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo eventos por estado', appEx, st, 'calendar_providers');
    throw NetworkException(
      message:
          'No se pudieron cargar los eventos con ese estado: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== TODOS LOS EVENTOS ====================

/// Provider para obtener todos los eventos
final todosLosEventosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  try {
    LoggerService.startOperation('todosLosEventos', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final eventos = await repository.obtenerTodosLosEventos();
    eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
    LoggerService.operationCompleted('todosLosEventos', 'calendar_providers');
    return eventos;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo todos los eventos', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudieron cargar los eventos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== RESUMEN DE EVENTOS ====================

/// Provider para obtener resumen de eventos (conteos)
final resumenEventosProvider = FutureProvider<Map<String, int>>((ref) async {
  try {
    LoggerService.startOperation('resumenEventos', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    final pendientes =
        await repository.obtenerEventosPorEstado(EstadoEvento.pendiente);
    final realizados =
        await repository.obtenerEventosPorEstado(EstadoEvento.realizado);
    final vencidos =
        await repository.obtenerEventosPorEstado(EstadoEvento.vencido);

    final resumen = {
      'pendientes': pendientes.length,
      'realizados': realizados.length,
      'vencidos': vencidos.length,
      'total': pendientes.length + realizados.length + vencidos.length,
    };

    LoggerService.operationCompleted('resumenEventos', 'calendar_providers');
    return resumen;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error obteniendo resumen', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudo obtener el resumen de eventos: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== CREAR EVENTO ====================

/// Provider para crear eventos
final crearEventoProvider =
    FutureProvider.family<void, EventoGanaderoEntity>((ref, evento) async {
  try {
    LoggerService.startOperation('crearEvento', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    await repository.crearEvento(evento);

    // Invalidar providers para refrescar datos
    ref.invalidate(todosLosEventosProvider);
    ref.invalidate(eventosPendientesProvider);
    ref.invalidate(eventosRealizadosProvider);
    ref.invalidate(eventosProximosProvider);
    ref.invalidate(eventosUrgentesProvider);
    ref.invalidate(resumenEventosProvider);
    ref.invalidate(eventosPorCategoriaProvider);
    ref.invalidate(eventosPorEstadoProvider);

    LoggerService.operationCompleted('crearEvento', 'calendar_providers');
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error al crear evento', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudo crear el evento: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ==================== ACTUALIZAR EVENTO ====================

/// Provider para actualizar eventos
final actualizarEventoProvider =
    FutureProvider.family<void, EventoGanaderoEntity>((ref, evento) async {
  try {
    LoggerService.startOperation('actualizarEvento', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    await repository.actualizarEvento(evento);

    // Invalidar providers para refrescar datos
    ref.invalidate(todosLosEventosProvider);
    ref.invalidate(eventosPendientesProvider);
    ref.invalidate(eventosRealizadosProvider);
    ref.invalidate(eventosProximosProvider);
    ref.invalidate(eventosUrgentesProvider);
    ref.invalidate(resumenEventosProvider);
    ref.invalidate(eventosPorCategoriaProvider);
    ref.invalidate(eventosPorEstadoProvider);

    LoggerService.operationCompleted('actualizarEvento', 'calendar_providers');
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error al actualizar evento', appEx, st, 'calendar_providers');
    throw NetworkException(
      message: 'No se pudo actualizar el evento: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Provider para completar eventos
final completarEventoProvider =
    FutureProvider.family<void, int>((ref, eventoId) async {
  try {
    LoggerService.startOperation('completarEvento', 'calendar_providers');
    final repository = ref.watch(calendarRepositoryProvider);
    await repository.marcarComoRealizado(eventoId);

    // Invalidar providers
    ref.invalidate(todosLosEventosProvider);
    ref.invalidate(eventosPendientesProvider);
    ref.invalidate(eventosRealizadosProvider);
    ref.invalidate(eventosProximosProvider);
    ref.invalidate(eventosUrgentesProvider);
    ref.invalidate(resumenEventosProvider);

    LoggerService.operationCompleted('completarEvento', 'calendar_providers');
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error('Error al marcar evento como realizado', appEx, st,
        'calendar_providers');
    throw NetworkException(
      message: 'No se pudo completar el evento: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});
