import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/mantenimiento/data/models/evento_mantenimiento_model.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ EVENTOS MANTENIMIENTO PROVIDERS ============

/// Provider que obtiene eventos de mantenimiento de un animal
final eventosByAnimalProvider =
    FutureProvider.family<List<EventoMantenimientoModel>, String>(
        (ref, animalId) async {
  final database = ref.watch(databaseProvider);
  return await database.getEventosByAnimalId(animalId);
});

/// Provider que obtiene todos los eventos de mantenimiento
final allEventosProvider =
    FutureProvider<List<EventoMantenimientoModel>>((ref) async {
  final database = ref.watch(databaseProvider);
  return await database.getAllEventos();
});

// ============ CREATE/UPDATE EVENTOS ============

/// State notifier para crear/actualizar eventos de mantenimiento
class EventoMantenimientoNotifier extends StateNotifier<AsyncValue<void>> {
  final MiGanadoDatabaseTyped database;

  EventoMantenimientoNotifier(this.database)
      : super(const AsyncValue.data(null));

  Future<void> saveEvento(EventoMantenimientoModel evento) async {
    state = const AsyncValue.loading();
    try {
      await database.saveEvento(evento);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> deleteEvento(String id) async {
    state = const AsyncValue.loading();
    try {
      await database.deleteEvento(id);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

/// Provider para el notifier de eventos de mantenimiento
final eventoMantenimientoNotifierProvider =
    StateNotifierProvider<EventoMantenimientoNotifier, AsyncValue<void>>((ref) {
  final database = ref.watch(databaseProvider);
  return EventoMantenimientoNotifier(database);
});

// ============ TIMELINE PROVIDERS ============

/// Provider que obtiene una línea de tiempo de eventos para un animal
final timelineEventosProvider =
    FutureProvider.family<List<EventoMantenimientoModel>, String>(
        (ref, animalId) async {
  final eventos = await ref.watch(eventosByAnimalProvider(animalId).future);
  // Los eventos ya están ordenados más recientes primero
  return eventos;
});

// ============ STATISTICS ============

/// Provider que calcula estadísticas de mantenimiento
final maintenanceStatisticsProvider =
    FutureProvider<MaintenanceStatistics>((ref) async {
  final eventos = await ref.watch(allEventosProvider.future);
  final allAnimales = await ref.watch(allAnimalesProvider.future);

  if (eventos.isEmpty) {
    return MaintenanceStatistics.empty();
  }

  final tipoEventoCounts = <TipoMantenimiento, int>{};
  DateTime? ultimoEvento;
  DateTime? proximoEvento;

  for (var evento in eventos) {
    tipoEventoCounts[evento.tipo] = (tipoEventoCounts[evento.tipo] ?? 0) + 1;

    if (ultimoEvento == null || evento.fecha.isAfter(ultimoEvento)) {
      ultimoEvento = evento.fecha;
    }

    if (evento.proximaFecha != null) {
      if (proximoEvento == null ||
          evento.proximaFecha!.isBefore(proximoEvento)) {
        proximoEvento = evento.proximaFecha;
      }
    }
  }

  // Contar animales con alertas de mantenimiento
  int animalesConAlertas = 0;
  DateTime ahora = DateTime.now();

  for (var animal in allAnimales) {
    bool tieneAlerta = false;

    // Sin vacunar
    if (!animal.vacunado) {
      tieneAlerta = true;
    } else if (animal.fechaUltimaVacuna != null) {
      int dias = ahora.difference(animal.fechaUltimaVacuna!).inDays;
      if (dias > 365) tieneAlerta = true;
    }

    // Sin desparasitar
    if (!tieneAlerta && !animal.desparasitado) {
      tieneAlerta = true;
    } else if (!tieneAlerta && animal.fechaUltimoDesparasitante != null) {
      int dias = ahora.difference(animal.fechaUltimoDesparasitante!).inDays;
      if (dias > 180) tieneAlerta = true;
    }

    if (tieneAlerta) animalesConAlertas++;
  }

  return MaintenanceStatistics(
    totalEventos: eventos.length,
    ultimoEvento: ultimoEvento,
    proximoEvento: proximoEvento,
    desglosePorTipo: tipoEventoCounts,
    animalesConAlertas: animalesConAlertas,
    tasaMantenimiento:
        allAnimales.isNotEmpty ? eventos.length / allAnimales.length : 0,
  );
});

/// Estadísticas de mantenimiento
class MaintenanceStatistics {
  final int totalEventos;
  final DateTime? ultimoEvento;
  final DateTime? proximoEvento;
  final Map<TipoMantenimiento, int> desglosePorTipo;
  final int animalesConAlertas;
  final double tasaMantenimiento; // Eventos por animal

  MaintenanceStatistics({
    required this.totalEventos,
    this.ultimoEvento,
    this.proximoEvento,
    required this.desglosePorTipo,
    required this.animalesConAlertas,
    required this.tasaMantenimiento,
  });

  factory MaintenanceStatistics.empty() {
    return MaintenanceStatistics(
      totalEventos: 0,
      desglosePorTipo: {},
      animalesConAlertas: 0,
      tasaMantenimiento: 0,
    );
  }
}
