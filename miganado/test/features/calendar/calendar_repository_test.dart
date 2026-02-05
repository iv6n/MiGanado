import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/data/models/lote_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

void main() {
  group('RepositorioCalendarioGanadero - Lógica de Negocio', () {
    // Tests sin dependencia de Isar - solo lógica de negocio
    late List<EventoGanaderoEntity> eventosMemoria;
    late List<LivestockLotEntity> lotesMemoria;

    setUp(() {
      eventosMemoria = [];
      lotesMemoria = [];
    });

    test('Crear múltiples eventos en sequence', () {
      // Crear 3 eventos diferentes
      final evento1 = EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Vacunación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime(2024, 12, 15),
      );

      final evento2 = EventoGanaderoEntity(
        categoria: CategoriaEvento.reproductiva,
        titulo: 'Inseminación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.alta,
        fechaProgramada: DateTime(2024, 12, 20),
      );

      final evento3 = EventoGanaderoEntity(
        categoria: CategoriaEvento.productiva,
        titulo: 'Pesaje',
        estado: EstadoEvento.realizado,
        prioridad: PrioridadEvento.baja,
        fechaProgramada: DateTime(2024, 12, 10),
      );

      eventosMemoria.addAll([evento1, evento2, evento3]);

      expect(eventosMemoria.length, equals(3));
      expect(eventosMemoria[0].categoria, equals(CategoriaEvento.sanitaria));
      expect(eventosMemoria[1].prioridad, equals(PrioridadEvento.alta));
      expect(eventosMemoria[2].estado, equals(EstadoEvento.realizado));
    });

    test('Filtrar eventos por estado', () {
      eventosMemoria.add(EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Vacunación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime.now(),
      ));

      eventosMemoria.add(EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Revisión',
        estado: EstadoEvento.realizado,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime.now(),
      ));

      final pendientes = eventosMemoria
          .where((e) => e.estado == EstadoEvento.pendiente)
          .toList();
      final realizados = eventosMemoria
          .where((e) => e.estado == EstadoEvento.realizado)
          .toList();

      expect(pendientes.length, equals(1));
      expect(realizados.length, equals(1));
    });

    test('Filtrar eventos por prioridad crítica', () {
      eventosMemoria.addAll([
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento 1',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.baja,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento 2',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.critica,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento 3',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: DateTime.now(),
        ),
      ]);

      final criticos = eventosMemoria
          .where((e) => e.prioridad == PrioridadEvento.critica)
          .toList();

      expect(criticos.length, equals(1));
      expect(criticos[0].titulo, equals('Evento 2'));
    });

    test('Actualizar estado de evento', () {
      final evento = EventoGanaderoEntity(
        categoria: CategoriaEvento.sanitaria,
        titulo: 'Vacunación',
        estado: EstadoEvento.pendiente,
        prioridad: PrioridadEvento.media,
        fechaProgramada: DateTime.now(),
      );

      eventosMemoria.add(evento);
      expect(eventosMemoria[0].estado, equals(EstadoEvento.pendiente));

      // Simular actualización
      final eventoActualizado = EventoGanaderoEntity(
        categoria: evento.categoria,
        titulo: evento.titulo,
        estado: EstadoEvento.realizado, // Cambiar estado
        prioridad: evento.prioridad,
        fechaProgramada: evento.fechaProgramada,
      );

      eventosMemoria[0] = eventoActualizado;
      expect(eventosMemoria[0].estado, equals(EstadoEvento.realizado));
    });

    test('Crear múltiples lotes con diferentes especies', () {
      lotesMemoria.addAll([
        LivestockLotEntity()
          ..name = 'Lote Bovino 1'
          ..species = LotSpecies.cattle
          ..productionType = ProductionType.milk
          ..animalCount = 50,
        LivestockLotEntity()
          ..name = 'Lote Equino 1'
          ..species = LotSpecies.equine
          ..productionType = ProductionType.breeding
          ..animalCount = 10,
        LivestockLotEntity()
          ..name = 'Lote Ovino 1'
          ..species = LotSpecies.ovine
          ..productionType = ProductionType.raising
          ..animalCount = 100,
      ]);

      expect(lotesMemoria.length, equals(3));
      expect(lotesMemoria[0].species, equals(LotSpecies.cattle));
      expect(lotesMemoria[1].species, equals(LotSpecies.equine));
      expect(lotesMemoria[2].species, equals(LotSpecies.ovine));
    });

    test('Agregar múltiples animales a un lote', () {
      final lote = LivestockLotEntity()
        ..name = 'Lote Test'
        ..species = LotSpecies.cattle
        ..productionType = ProductionType.milk
        ..animalCount = 3;

      lote.agregarAnimal('animal-001');
      lote.agregarAnimal('animal-002');
      lote.agregarAnimal('animal-003');

      expect(lote.animalIds.length, equals(3));
      expect(lote.animalIds, contains('animal-001'));
      expect(lote.animalIds, contains('animal-002'));
      expect(lote.animalIds, contains('animal-003'));
    });

    test('Buscar eventos por categoría', () {
      eventosMemoria.addAll([
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Vacunación',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Desparasitación',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.reproductiva,
          titulo: 'Inseminación',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.alta,
          fechaProgramada: DateTime.now(),
        ),
      ]);

      final sanitarios = eventosMemoria
          .where((e) => e.categoria == CategoriaEvento.sanitaria)
          .toList();

      expect(sanitarios.length, equals(2));
      expect(sanitarios[0].titulo, equals('Vacunación'));
      expect(sanitarios[1].titulo, equals('Desparasitación'));
    });

    test('Eventos próximos (ordenados por fecha)', () {
      final hoy = DateTime.now();

      eventosMemoria.addAll([
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento en 5 días',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: hoy.add(const Duration(days: 5)),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento en 2 días',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: hoy.add(const Duration(days: 2)),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento en 10 días',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.media,
          fechaProgramada: hoy.add(const Duration(days: 10)),
        ),
      ]);

      final ordenados = eventosMemoria
          .where((e) => e.fechaProgramada.isAfter(hoy))
          .toList()
        ..sort((a, b) => a.fechaProgramada.compareTo(b.fechaProgramada));

      expect(ordenados[0].titulo, equals('Evento en 2 días'));
      expect(ordenados[1].titulo, equals('Evento en 5 días'));
      expect(ordenados[2].titulo, equals('Evento en 10 días'));
    });

    test('Contar eventos urgentes por categoría', () {
      eventosMemoria.addAll([
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento 1',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.critica,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.sanitaria,
          titulo: 'Evento 2',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.alta,
          fechaProgramada: DateTime.now(),
        ),
        EventoGanaderoEntity(
          categoria: CategoriaEvento.reproductiva,
          titulo: 'Evento 3',
          estado: EstadoEvento.pendiente,
          prioridad: PrioridadEvento.critica,
          fechaProgramada: DateTime.now(),
        ),
      ]);

      final urgentes = eventosMemoria
          .where((e) =>
              (e.prioridad == PrioridadEvento.alta ||
                  e.prioridad == PrioridadEvento.critica) &&
              e.estado == EstadoEvento.pendiente)
          .toList();

      expect(urgentes.length, equals(3));

      final sanitariosUrgentes = urgentes
          .where((e) => e.categoria == CategoriaEvento.sanitaria)
          .length;

      expect(sanitariosUrgentes, equals(2));
    });
  });
}
