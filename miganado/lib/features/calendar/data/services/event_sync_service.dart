import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/data/models/alerta_entity.dart';
import 'package:miganado/features/calendar/data/models/registro_sincronizacion_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

/// Servicio centralizado de sincronización de eventos
/// Maneja la creación, actualización y sincronización de eventos con alertas
class EventSyncService {
  static final EventSyncService _instance = EventSyncService._internal();

  EventSyncService._internal();

  factory EventSyncService() {
    return _instance;
  }

  Isar get _isar => MiGanadoDatabase.isar;

  /// Crear evento con alertas automáticas
  Future<EventoGanaderoEntity?> crearEventoConAlertas(
    EventoGanaderoEntity evento,
  ) async {
    try {
      await _isar.writeTxn(() async {
        // Guardar evento
        await _isar.eventoGanaderoEntitys.put(evento);

        // Generar 4 alertas automáticas (30d, 15d, 7d, HOY)
        await _generarAlertasParaEvento(evento);

        // Registrar en auditoría
        await _registrarCambio(
          entidadTipo: 'EventoGanaderoEntity',
          entidadUuid: evento.uuid ?? '',
          accion: TipoAccion.creado,
          razon: 'Evento creado manualmente',
        );
      });

      return evento;
    } catch (e) {
      print('Error crearEventoConAlertas: $e');
      return null;
    }
  }

  /// Marcar evento como realizado
  Future<void> marcarEventoComoRealizado(
    EventoGanaderoEntity evento,
  ) async {
    try {
      await _isar.writeTxn(() async {
        evento.estado = EstadoEvento.realizado;
        evento.fechaEjecutada = DateTime.now();
        await _isar.eventoGanaderoEntitys.put(evento);

        // Marcar alertas como actuadas
        final alertas = await _isar.alertaEntitys.where().findAll();
        for (var alerta in alertas.where((a) => a.eventoUuid == evento.uuid)) {
          alerta.estado = EstadoAlerta.actuado;
          alerta.fechaActuada = DateTime.now();
          await _isar.alertaEntitys.put(alerta);
        }

        // Registrar cambio
        await _registrarCambio(
          entidadTipo: 'EventoGanaderoEntity',
          entidadUuid: evento.uuid ?? '',
          accion: TipoAccion.actualizado,
          campo: 'estado',
          valorAnterior: 'pendiente',
          valorNuevo: 'realizado',
          razon: 'Marcado como realizado',
        );
      });
    } catch (e) {
      print('Error marcarEventoComoRealizado: $e');
    }
  }

  /// Reprogramar evento a nueva fecha
  Future<void> reprogramarEvento(
    EventoGanaderoEntity evento,
    DateTime nuevaFecha,
  ) async {
    try {
      await _isar.writeTxn(() async {
        final fechaAnterior = evento.fechaProgramada;
        evento.fechaProgramada = nuevaFecha;
        await _isar.eventoGanaderoEntitys.put(evento);

        // Regenerar alertas
        final alertasAnteriores = await _isar.alertaEntitys.where().findAll();
        for (var alerta
            in alertasAnteriores.where((a) => a.eventoUuid == evento.uuid)) {
          await _isar.alertaEntitys.delete(alerta.id);
        }

        // Generar nuevas alertas
        await _generarAlertasParaEvento(evento);

        // Registrar
        await _registrarCambio(
          entidadTipo: 'EventoGanaderoEntity',
          entidadUuid: evento.uuid ?? '',
          accion: TipoAccion.actualizado,
          campo: 'fechaProgramada',
          valorAnterior: fechaAnterior.toString(),
          valorNuevo: nuevaFecha.toString(),
          razon: 'Reprogramado',
        );
      });
    } catch (e) {
      print('Error reprogramarEvento: $e');
    }
  }

  /// Cancelar evento
  Future<void> cancelarEvento(EventoGanaderoEntity evento) async {
    try {
      await _isar.writeTxn(() async {
        evento.estado = EstadoEvento.cancelado;
        await _isar.eventoGanaderoEntitys.put(evento);

        // Limpiar alertas
        final alertas = await _isar.alertaEntitys.where().findAll();
        for (var alerta in alertas.where((a) => a.eventoUuid == evento.uuid)) {
          await _isar.alertaEntitys.delete(alerta.id);
        }

        // Registrar
        await _registrarCambio(
          entidadTipo: 'EventoGanaderoEntity',
          entidadUuid: evento.uuid ?? '',
          accion: TipoAccion.actualizado,
          campo: 'estado',
          valorNuevo: 'cancelado',
          razon: 'Evento cancelado',
        );
      });
    } catch (e) {
      print('Error cancelarEvento: $e');
    }
  }

  /// Generar 4 alertas automáticas para un evento
  Future<void> _generarAlertasParaEvento(EventoGanaderoEntity evento) async {
    const diasAnticipacion = [30, 15, 7, 0];
    const tiposAlerta = [
      TipoAlerta.anticipada,
      TipoAlerta.anticipada,
      TipoAlerta.anticipada,
      TipoAlerta.critica,
    ];
    const colores = [
      '#2196F3', // Azul claro (30d)
      '#1976D2', // Azul (15d)
      '#FFC107', // Amarillo (7d)
      '#F44336', // Rojo (HOY)
    ];
    const emojis = [
      '📅',
      '📅',
      '⚠️',
      '🔴',
    ];

    for (int i = 0; i < diasAnticipacion.length; i++) {
      final fechaAlerta =
          evento.fechaProgramada.subtract(Duration(days: diasAnticipacion[i]));

      final alerta = AlertaEntity(
        uuid: const Uuid().v4(),
        eventoUuid: evento.uuid,
        animalUuid: evento.animalId,
        tipo: tiposAlerta[i],
        diasAnticipacion: diasAnticipacion[i],
        titulo: evento.titulo,
        descripcion: '${evento.descripcion} (${diasAnticipacion[i]}d antes)',
        fechaAlerta: fechaAlerta,
        fechaEventoOriginal: evento.fechaProgramada,
        estado: EstadoAlerta.no_visto,
        colorHex: colores[i],
        iconoEmoji: emojis[i],
        prioridad: 5 - i, // Mayor prioridad cuanto más cercano
        categoriaEvento: evento.categoria.toString(),
        fechaCreacion: DateTime.now(),
      );

      await _isar.alertaEntitys.put(alerta);
    }
  }

  /// Registrar cambio en auditoría
  Future<void> _registrarCambio({
    required String entidadTipo,
    required String entidadUuid,
    required TipoAccion accion,
    String? campo,
    String? valorAnterior,
    String? valorNuevo,
    String? razon,
  }) async {
    final registro = RegistroSincronizacionEntity(
      uuid: const Uuid().v4(),
      entidadTipo: entidadTipo,
      entidadUuid: entidadUuid,
      accion: accion,
      campo: campo,
      valorAnterior: valorAnterior,
      valorNuevo: valorNuevo,
      usuario: 'user@miganado',
      fechaRegistro: DateTime.now(),
      razon: razon,
    );

    await _isar.registroSincronizacionEntitys.put(registro);
  }
}
