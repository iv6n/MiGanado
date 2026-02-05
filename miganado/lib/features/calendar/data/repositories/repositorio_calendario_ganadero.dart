import 'package:isar/isar.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/data/models/lote_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

/// Repositorio para gestionar eventos del calendario ganadero
class RepositorioCalendarioGanadero {
  RepositorioCalendarioGanadero();

  // ============ EVENTOS - CRUD ============

  /// Crear un nuevo evento
  Future<EventoGanaderoEntity> crearEvento(EventoGanaderoEntity evento) async {
    try {
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.eventoGanaderoEntitys.put(evento);
      });
      print('✓ Evento creado: ${evento.titulo}');
      return evento;
    } catch (e) {
      print('✗ Error al crear evento: $e');
      rethrow;
    }
  }

  /// Obtener evento por ID de Isar
  Future<EventoGanaderoEntity?> obtenerEventoPorId(int id) async {
    try {
      return await MiGanadoDatabase.isar.eventoGanaderoEntitys.get(id);
    } catch (e) {
      print('✗ Error al obtener evento: $e');
      return null;
    }
  }

  /// Obtener todos los eventos
  Future<List<EventoGanaderoEntity>> obtenerTodosLosEventos() async {
    try {
      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();
      // Ordenar por fecha
      eventos.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return eventos;
    } catch (e) {
      print('✗ Error al obtener eventos: $e');
      return [];
    }
  }

  /// Obtener eventos por estado
  Future<List<EventoGanaderoEntity>> obtenerEventosPorEstado(
      EstadoEvento estado) async {
    try {
      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();
      // Filtrar por estado en memoria
      final filtrados = eventos.where((e) => e.estado == estado).toList();
      filtrados.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return filtrados;
    } catch (e) {
      print('✗ Error al obtener eventos por estado: $e');
      return [];
    }
  }

  /// Obtener eventos pendientes
  Future<List<EventoGanaderoEntity>> obtenerEventosPendientes() async {
    return obtenerEventosPorEstado(EstadoEvento.pendiente);
  }

  /// Obtener eventos realizados
  Future<List<EventoGanaderoEntity>> obtenerEventosRealizados() async {
    return obtenerEventosPorEstado(EstadoEvento.realizado);
  }

  /// Obtener eventos vencidos
  Future<List<EventoGanaderoEntity>> obtenerEventosVencidos() async {
    return obtenerEventosPorEstado(EstadoEvento.vencido);
  }

  /// Obtener eventos por categoría
  Future<List<EventoGanaderoEntity>> obtenerEventosPorCategoria(
      CategoriaEvento categoria) async {
    try {
      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();
      final filtrados = eventos.where((e) => e.categoria == categoria).toList();
      filtrados.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return filtrados;
    } catch (e) {
      print('✗ Error al obtener eventos por categoría: $e');
      return [];
    }
  }

  /// Obtener eventos sanitarios
  Future<List<EventoGanaderoEntity>> obtenerEventosSanitarios() async {
    return obtenerEventosPorCategoria(CategoriaEvento.sanitaria);
  }

  /// Obtener eventos reproductivos
  Future<List<EventoGanaderoEntity>> obtenerEventosReproductivos() async {
    return obtenerEventosPorCategoria(CategoriaEvento.reproductiva);
  }

  /// Obtener eventos productivos
  Future<List<EventoGanaderoEntity>> obtenerEventosProductivos() async {
    return obtenerEventosPorCategoria(CategoriaEvento.productiva);
  }

  /// Obtener eventos ambientales
  Future<List<EventoGanaderoEntity>> obtenerEventosAmbientales() async {
    return obtenerEventosPorCategoria(CategoriaEvento.ambiental);
  }

  /// Obtener eventos por prioridad
  Future<List<EventoGanaderoEntity>> obtenerEventosPorPrioridad(
      PrioridadEvento prioridad) async {
    try {
      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();
      final filtrados = eventos.where((e) => e.prioridad == prioridad).toList();
      filtrados.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return filtrados;
    } catch (e) {
      print('✗ Error al obtener eventos por prioridad: $e');
      return [];
    }
  }

  /// Obtener eventos críticos
  Future<List<EventoGanaderoEntity>> obtenerEventosCriticos() async {
    return obtenerEventosPorPrioridad(PrioridadEvento.critica);
  }

  /// Obtener eventos próximos (próximos N días)
  Future<List<EventoGanaderoEntity>> obtenerEventosProximos(int dias) async {
    try {
      final hoy = DateTime.now();
      final limiteDate = hoy.add(Duration(days: dias));

      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();

      final filtrados = eventos
          .where((e) =>
              e.estado == EstadoEvento.pendiente &&
              e.fechaProgramada.isAfter(hoy) &&
              e.fechaProgramada.isBefore(limiteDate))
          .toList();

      filtrados.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return filtrados;
    } catch (e) {
      print('✗ Error al obtener eventos próximos: $e');
      return [];
    }
  }

  /// Actualizar evento existente
  Future<void> actualizarEvento(EventoGanaderoEntity evento) async {
    try {
      evento.fechaActualizacion = DateTime.now();
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.eventoGanaderoEntitys.put(evento);
      });
      print('✓ Evento actualizado: ${evento.titulo}');
    } catch (e) {
      print('✗ Error al actualizar evento: $e');
      rethrow;
    }
  }

  /// Eliminar evento
  Future<bool> eliminarEvento(int id) async {
    try {
      final resultado = await MiGanadoDatabase.isar.writeTxn(() async {
        return await MiGanadoDatabase.isar.eventoGanaderoEntitys.delete(id);
      });
      if (resultado) {
        print('✓ Evento eliminado');
      }
      return resultado;
    } catch (e) {
      print('✗ Error al eliminar evento: $e');
      rethrow;
    }
  }

  /// Marcar evento como realizado
  Future<void> marcarComoRealizado(
    int id, {
    String? observaciones,
    DateTime? fecha,
  }) async {
    try {
      final evento = await obtenerEventoPorId(id);
      if (evento != null) {
        evento.marcarComoRealizado(
          observaciones: observaciones,
          fecha: fecha,
        );
        await actualizarEvento(evento);
      }
    } catch (e) {
      print('✗ Error al marcar evento como realizado: $e');
      rethrow;
    }
  }

  /// Posponer evento
  Future<void> posponerEvento(int id, DateTime nuevaFecha,
      {String? motivo}) async {
    try {
      final evento = await obtenerEventoPorId(id);
      if (evento != null) {
        evento.posponerA(nuevaFecha, motivo: motivo);
        await actualizarEvento(evento);
      }
    } catch (e) {
      print('✗ Error al posponer evento: $e');
      rethrow;
    }
  }

  /// Cancelar evento
  Future<void> cancelarEvento(int id, {String? motivo}) async {
    try {
      final evento = await obtenerEventoPorId(id);
      if (evento != null) {
        evento.cancelar(motivo: motivo);
        await actualizarEvento(evento);
      }
    } catch (e) {
      print('✗ Error al cancelar evento: $e');
      rethrow;
    }
  }

  // ============ LOTES - CRUD ============

  /// Crear un nuevo lote
  Future<LivestockLotEntity> crearLote(LivestockLotEntity lote) async {
    try {
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.livestockLotEntitys.put(lote);
      });
      print('✓ Lote creado: ${lote.name}');
      return lote;
    } catch (e) {
      print('✗ Error al crear lote: $e');
      rethrow;
    }
  }

  /// Obtener lote por ID
  Future<LivestockLotEntity?> obtenerLotePorId(int id) async {
    try {
      return await MiGanadoDatabase.isar.livestockLotEntitys.get(id);
    } catch (e) {
      print('✗ Error al obtener lote: $e');
      return null;
    }
  }

  /// Obtener todos los lotes
  Future<List<LivestockLotEntity>> obtenerTodosLosLotes() async {
    try {
      final lotes =
          await MiGanadoDatabase.isar.livestockLotEntitys.where().findAll();
      lotes.sort((a, b) => a.name.compareTo(b.name));
      return lotes;
    } catch (e) {
      print('✗ Error al obtener lotes: $e');
      return [];
    }
  }

  /// Actualizar lote existente
  Future<void> actualizarLote(LivestockLotEntity lote) async {
    try {
      lote.fechaActualizacion = DateTime.now();
      await MiGanadoDatabase.isar.writeTxn(() async {
        await MiGanadoDatabase.isar.livestockLotEntitys.put(lote);
      });
      print('✓ Lote actualizado: ${lote.name}');
    } catch (e) {
      print('✗ Error al actualizar lote: $e');
      rethrow;
    }
  }

  /// Eliminar lote
  Future<bool> eliminarLote(int id) async {
    try {
      final resultado = await MiGanadoDatabase.isar.writeTxn(() async {
        return await MiGanadoDatabase.isar.livestockLotEntitys.delete(id);
      });
      if (resultado) {
        print('✓ Lote eliminado');
      }
      return resultado;
    } catch (e) {
      print('✗ Error al eliminar lote: $e');
      rethrow;
    }
  }

  // ============ CONSULTAS AVANZADAS ============

  /// Obtener resumen del calendario
  Future<Map<String, dynamic>> obtenerResumenCalendario() async {
    try {
      final todoEventos = await obtenerTodosLosEventos();
      final pendientes =
          todoEventos.where((e) => e.estado == EstadoEvento.pendiente).toList();
      final realizados =
          todoEventos.where((e) => e.estado == EstadoEvento.realizado).toList();
      final vencidos =
          todoEventos.where((e) => e.estado == EstadoEvento.vencido).toList();
      final criticos = todoEventos
          .where((e) => e.prioridad == PrioridadEvento.critica)
          .toList();

      return {
        'totalEventos': todoEventos.length,
        'pendientes': pendientes.length,
        'realizados': realizados.length,
        'vencidos': vencidos.length,
        'criticos': criticos.length,
        'porCategoria': {
          'sanitaria': todoEventos
              .where((e) => e.categoria == CategoriaEvento.sanitaria)
              .length,
          'reproductiva': todoEventos
              .where((e) => e.categoria == CategoriaEvento.reproductiva)
              .length,
          'productiva': todoEventos
              .where((e) => e.categoria == CategoriaEvento.productiva)
              .length,
          'ambiental': todoEventos
              .where((e) => e.categoria == CategoriaEvento.ambiental)
              .length,
        },
      };
    } catch (e) {
      print('✗ Error al obtener resumen: $e');
      return {};
    }
  }

  /// Obtener eventos urgentes (críticos y próximos a vencer)
  Future<List<EventoGanaderoEntity>> obtenerEventosUrgentes() async {
    try {
      final hoy = DateTime.now();
      final en3Dias = hoy.add(const Duration(days: 3));

      final eventos =
          await MiGanadoDatabase.isar.eventoGanaderoEntitys.where().findAll();

      final urgentes = eventos
          .where((e) =>
              (e.prioridad == PrioridadEvento.critica ||
                  e.prioridad == PrioridadEvento.alta) &&
              e.estado == EstadoEvento.pendiente &&
              e.fechaProgramada.isBefore(en3Dias))
          .toList();

      urgentes.sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));
      return urgentes;
    } catch (e) {
      print('✗ Error al obtener eventos urgentes: $e');
      return [];
    }
  }

  /// Buscar eventos por título o descripción
  Future<List<EventoGanaderoEntity>> buscarEventos(String termino) async {
    try {
      final todoEventos = await obtenerTodosLosEventos();
      final termLower = termino.toLowerCase();

      final resultados = todoEventos
          .where((e) =>
              e.titulo.toLowerCase().contains(termLower) ||
              (e.descripcion?.toLowerCase().contains(termLower) ?? false))
          .toList();

      return resultados;
    } catch (e) {
      print('✗ Error al buscar eventos: $e');
      return [];
    }
  }

  /// Obtener estadísticas de cumplimiento
  Future<Map<String, dynamic>> obtenerEstadisticasCumplimiento() async {
    try {
      final realizados = await obtenerEventosRealizados();
      final completadosATiempo =
          realizados.where((e) => e.completadoATiempo == true).toList();

      final totalRealizados = realizados.length;
      final porcentajeCumplimiento = totalRealizados > 0
          ? (completadosATiempo.length / totalRealizados * 100)
              .toStringAsFixed(2)
          : '0.00';

      return {
        'totalRealizados': totalRealizados,
        'completadosATiempo': completadosATiempo.length,
        'completadosFueraDeTime': totalRealizados - completadosATiempo.length,
        'porcentajeCumplimiento': porcentajeCumplimiento,
      };
    } catch (e) {
      print('✗ Error al obtener estadísticas: $e');
      return {};
    }
  }
}
