import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/calendar/data/services/event_sync_service.dart';
import 'package:miganado/features/calendar/data/services/alert_service.dart';
import 'package:miganado/features/calendar/data/services/calendar_service.dart';
import 'package:miganado/features/calendar/data/models/alerta_entity.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';

/// Providers para sincronización de calendario

// Services
final eventSyncServiceProvider = Provider((ref) => EventSyncService());

final alertServiceProvider = Provider((ref) => AlertService());

final calendarServiceProvider = Provider((ref) => CalendarService());

// Alertas
final alertasActivasProvider = FutureProvider<List<AlertaEntity>>((ref) async {
  final service = ref.watch(alertServiceProvider);
  return service.obtenerActivas();
});

final todosLosEventosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final service = ref.watch(calendarServiceProvider);
  return service.obtenerTodos();
});

final eventosProximosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final service = ref.watch(calendarServiceProvider);
  return service.obtenerProximos();
});

final eventosVencidosProvider =
    FutureProvider<List<EventoGanaderoEntity>>((ref) async {
  final service = ref.watch(calendarServiceProvider);
  return service.obtenerVencidos();
});

/// Extension para invalidación de providers
extension RefProviderInvalidation on Ref {
  void invalidarEventosYAlertas() {
    invalidate(todosLosEventosProvider);
    invalidate(alertasActivasProvider);
    invalidate(eventosProximosProvider);
    invalidate(eventosVencidosProvider);
  }
}
