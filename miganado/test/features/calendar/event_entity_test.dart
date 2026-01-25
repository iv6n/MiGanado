import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';

void main() {
  group('EventoGanaderoEntity', () {
    test('Crear evento sanitario correctamente', () {
      final evento = EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Vacunación de terneros',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime(2024, 12, 15),
      );

      expect(evento.titulo, equals('Vacunación de terneros'));
      expect(evento.categoria, equals(CategoriaEvento.sanitaria));
      expect(evento.estado, equals(EstadoEvento.pendiente));
      expect(evento.uuid, isNotEmpty);
      expect(evento.fechaCreacion, isNotNull);
    });

    test('UUID se genera automáticamente si no se proporciona', () {
      final evento1 = EventoGanaderoEntity(
        categoria: CategoriaEvento.productiva,
        titulo: 'Pesaje',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.baja,
        fechaProgramada: DateTime.now(),
      );

      final evento2 = EventoGanaderoEntity(
        categoria: CategoriaEvento.productiva,
        titulo: 'Pesaje',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.baja,
        fechaProgramada: DateTime.now(),
      );

      expect(evento1.uuid, isNotEmpty);
      expect(evento2.uuid, isNotEmpty);
      expect(evento1.uuid, isNot(equals(evento2.uuid)));
    });

    test('Evento reproductivo tiene valores por defecto correctos', () {
      final evento = EventoGanaderoEntity(
        categoria: CategoriaEvento.reproductiva,
        titulo: 'Inseminación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime.now(),
      );

      expect(evento.tipoReproductivo,
          equals(EventoReproductivo.inseminacionArtificial));
      expect(evento.esAutomatico, equals(false));
      expect(evento.esRecurrente, equals(false));
    });

    test('Obtener tipo de evento según categoría', () {
      final eventoSanitario = EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Vacunación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime.now(),
        tipoSanitario: EventoSanitario.vacunacion,
      );

      expect(eventoSanitario.tipoEvento, equals(EventoSanitario.vacunacion));
    });

    test('Prioridad crítica es la más alta', () {
      expect(PrioridadEvento.critica.index,
          greaterThan(PrioridadEvento.media.index));
    });
  });
}
