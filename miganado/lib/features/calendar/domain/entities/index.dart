import 'package:miganado/features/calendar/domain/entities/event_types.dart';

export 'event_types.dart';

// Clase para mapeo de tipos entre enums y strings
class EventoTipoMapper {
  /// Obtener el nombre legible del tipo de evento
  static String getNombre(dynamic tipoEvento) {
    if (tipoEvento is EventoSanitario) {
      return tipoEvento.nombreLegible;
    } else if (tipoEvento is EventoReproductivo) {
      return tipoEvento.nombreLegible;
    } else if (tipoEvento is EventoProductivo) {
      return tipoEvento.nombreLegible;
    } else if (tipoEvento is EventoAmbiental) {
      return tipoEvento.nombreLegible;
    }
    return 'Evento Desconocido';
  }

  /// Obtener el icono del tipo de evento
  static String getIcono(dynamic tipoEvento) {
    if (tipoEvento is EventoSanitario) {
      return tipoEvento.icono;
    } else if (tipoEvento is EventoReproductivo) {
      return tipoEvento.icono;
    } else if (tipoEvento is EventoProductivo) {
      return tipoEvento.icono;
    } else if (tipoEvento is EventoAmbiental) {
      return tipoEvento.icono;
    }
    return '📅';
  }
}
