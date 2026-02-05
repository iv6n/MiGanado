import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

/// Servicio para validar y crear eventos
class ValidadorEventoGanadero {
  /// Validar que los datos del evento sean válidos
  static List<String> validar(EventoGanaderoEntity evento) {
    final errores = <String>[];

    // Validar título
    if (evento.titulo.isEmpty) {
      errores.add('El título del evento no puede estar vacío');
    }

    if (evento.titulo.length > 255) {
      errores.add('El título no puede exceder 255 caracteres');
    }

    // Validar que esté asociado a algo
    if (evento.animalId == null &&
        evento.loteId == null &&
        evento.ubicacionId == null) {
      errores.add(
          'El evento debe estar asociado al menos a un animal, lote o ubicación');
    }

    // Validar fecha programada
    if (evento.fechaProgramada.isBefore(DateTime.now())) {
      errores.add('La fecha programada no puede ser en el pasado');
    }

    // Validar que el tipo de evento corresponda a la categoría
    final tipoValido = _validarTipoParaCategoria(evento.categoria, evento);
    if (tipoValido != null) {
      errores.add(tipoValido);
    }

    // Validar fechas
    if (evento.fechaVencimiento != null &&
        evento.fechaVencimiento!.isBefore(evento.fechaProgramada)) {
      errores.add(
          'La fecha de vencimiento debe ser posterior a la fecha programada');
    }

    // Validar duración
    if (evento.duracionEstimadoMinutos != null &&
        evento.duracionEstimadoMinutos! <= 0) {
      errores.add('La duración debe ser mayor a 0 minutos');
    }

    // Validar costo
    if (evento.costoAsociado != null && evento.costoAsociado! < 0) {
      errores.add('El costo no puede ser negativo');
    }

    return errores;
  }

  /// Validar que el tipo de evento corresponda a la categoría
  static String? _validarTipoParaCategoria(
      CategoriaEvento categoria, EventoGanaderoEntity evento) {
    // Los tipos ya no pueden ser null, no se requiere validación
    return null;
  }

  /// Validar que el evento pueda ser marcado como realizado
  static List<String> validarRealizacion(EventoGanaderoEntity evento) {
    final errores = <String>[];

    if (evento.estado == EstadoEvento.cancelado) {
      errores.add('No puede marcar como realizado un evento cancelado');
    }

    if (evento.estado == EstadoEvento.realizado) {
      errores.add('El evento ya está marcado como realizado');
    }

    return errores;
  }

  /// Validar que el evento pueda ser pospuesto
  static List<String> validarPostergacion(
      EventoGanaderoEntity evento, DateTime nuevaFecha) {
    final errores = <String>[];

    if (evento.estado == EstadoEvento.realizado) {
      errores.add('No puede posponer un evento ya realizado');
    }

    if (evento.estado == EstadoEvento.cancelado) {
      errores.add('No puede posponer un evento cancelado');
    }

    if (nuevaFecha.isBefore(DateTime.now())) {
      errores.add('La nueva fecha no puede ser en el pasado');
    }

    return errores;
  }
}

/// Servicio para generar eventos automáticos según patrones
class GeneradorEventosAutomaticos {
  /// Generar eventos automáticos según tipo de animal y frecuencia
  static List<EventoGanaderoEntity> generarEventosSanitariosBasicos({
    required String animalId,
    required DateTime fechaInicio,
  }) {
    final eventos = <EventoGanaderoEntity>[];

    // Vacunación anual
    eventos.add(
      EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        tipoSanitario: EventoSanitario.vacunacion,
        titulo: 'Vacunación Anual',
        descripcion: 'Refuerzo de vacunas según calendario sanitario',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.alta,
        esAutomatico: true,
        esRecurrente: true,
        patronRecurrencia: 'anual',
        fechaProgramada: fechaInicio,
        animalId: animalId,
      ),
    );

    // Desparasitación trimestral
    for (int i = 0; i < 4; i++) {
      eventos.add(
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          tipoSanitario: EventoSanitario.desparasitacion,
          titulo: 'Desparasitación - Trimestre ${i + 1}',
          descripcion: 'Aplicación de desparasitante interno y externo',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          esAutomatico: true,
          esRecurrente: true,
          patronRecurrencia: 'trimestral',
          fechaProgramada: fechaInicio.add(Duration(days: 90 * i)),
          animalId: animalId,
        ),
      );
    }

    // Revisión veterinaria semestral
    for (int i = 0; i < 2; i++) {
      eventos.add(
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          tipoSanitario: EventoSanitario.revisionVeterinaria,
          titulo: 'Revisión Veterinaria - Semestre ${i + 1}',
          descripcion: 'Control sanitario general del animal',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          esAutomatico: true,
          esRecurrente: true,
          patronRecurrencia: 'semestral',
          fechaProgramada: fechaInicio.add(Duration(days: 180 * i)),
          animalId: animalId,
        ),
      );
    }

    return eventos;
  }

  /// Generar eventos de pesaje
  static List<EventoGanaderoEntity> generarEventosPesaje({
    required String animalId,
    required DateTime fechaInicio,
    int frecuenciaDias = 30,
    int cantidadEventos = 12,
  }) {
    final eventos = <EventoGanaderoEntity>[];

    for (int i = 0; i < cantidadEventos; i++) {
      eventos.add(
        EventoGanaderoEntity(
          categoria: CategoriaEvento.productiva,
          tipoProductivo: EventoProductivo.pesaje,
          titulo: 'Pesaje - Evento ${i + 1}',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.baja,
          esAutomatico: true,
          esRecurrente: true,
          patronRecurrencia: 'cada $frecuenciaDias días',
          fechaProgramada: fechaInicio.add(Duration(days: frecuenciaDias * i)),
          animalId: animalId,
        ),
      );
    }

    return eventos;
  }
}

/// Servicio para calcular alertas y recomendaciones
class CalculadoraAlertasEventos {
  /// Calcular alerta del evento basada en fecha y estado
  static String? calcularAlerta(EventoGanaderoEntity evento) {
    if (evento.estado != EstadoEvento.pendiente) {
      return null;
    }

    final ahora = DateTime.now();
    final diasHasta = evento.fechaProgramada.difference(ahora).inDays;

    if (diasHasta < 0) {
      return '🔴 ATRASADO: ${diasHasta.abs()} días de atraso';
    }

    if (diasHasta == 0) {
      return '🟠 HOY: El evento se debe hacer hoy';
    }

    if (diasHasta <= 3) {
      return '🟡 PRÓXIMO: En $diasHasta días';
    }

    return null;
  }

  /// Obtener recomendación de acción para un evento
  static String obtenerRecomendacion(EventoGanaderoEntity evento) {
    if (evento.estado == EstadoEvento.realizado) {
      if (evento.requiereSeguimiento) {
        return '📋 Requerimiento seguimiento';
      }
      return '✅ Evento completado';
    }

    if (evento.estado == EstadoEvento.vencido) {
      return '⚠️ EVENTO VENCIDO - Contactar responsable';
    }

    if (evento.estado == EstadoEvento.cancelado) {
      return '✖️ Evento cancelado';
    }

    // Pendiente
    final diasHasta = evento.fechaProgramada.difference(DateTime.now()).inDays;

    if (evento.prioridad == PrioridadEvento.critica) {
      return '🚨 CRÍTICO - Ejecutar inmediatamente';
    }

    if (diasHasta < 0) {
      return '🔴 ATRASADO - Ejecutar lo antes posible';
    }

    if (diasHasta == 0) {
      return '⏰ Programado para hoy';
    }

    if (diasHasta <= 3) {
      return '📅 Próximo a vencer en $diasHasta días';
    }

    return '📅 Programado para ${evento.fechaProgramada.toString().substring(0, 10)}';
  }

  /// Calcular tasa de cumplimiento por categoría
  static Future<Map<CategoriaEvento, double>> calcularTasaPorCategoria(
      List<EventoGanaderoEntity> eventos) async {
    final tasas = <CategoriaEvento, double>{};

    for (final categoria in CategoriaEvento.values) {
      final eventosPorCategoria =
          eventos.where((e) => e.categoria == categoria).toList();

      if (eventosPorCategoria.isEmpty) {
        tasas[categoria] = 0.0;
        continue;
      }

      final realizados = eventosPorCategoria
          .where((e) => e.estado == EstadoEvento.realizado)
          .length;

      final tasa = (realizados / eventosPorCategoria.length) * 100;
      tasas[categoria] = double.parse(tasa.toStringAsFixed(2));
    }

    return tasas;
  }
}
