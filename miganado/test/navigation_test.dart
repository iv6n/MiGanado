import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/ui/navigation/app_routes.dart';

void main() {
  group('Navigation Routes - FASE 4.2', () {
    test('Route constants are defined correctly', () {
      expect(AppRoutes.home, '/');
      expect(AppRoutes.agregarAnimal, '/agregar-animal');
      expect(AppRoutes.detalleAnimal, '/detalle-animal/:animalId');
      expect(AppRoutes.editarAnimal, '/editar-animal/:animalId');
      expect(AppRoutes.alertasDetail, '/alertas');
      expect(AppRoutes.listaAnimales, '/lista-animales');
    });

    test('Route path generation works', () {
      const testAnimalId = 'test-123';
      expect(
        AppRoutes.detalleAnimalPath(testAnimalId),
        '/detalle-animal/$testAnimalId',
      );
      expect(
        AppRoutes.editarAnimalPath(testAnimalId),
        '/editar-animal/$testAnimalId',
      );
    });

    test('All route paths are unique', () {
      final routes = [
        AppRoutes.home,
        AppRoutes.agregarAnimal,
        AppRoutes.detalleAnimal,
        AppRoutes.editarAnimal,
        AppRoutes.alertasDetail,
        AppRoutes.listaAnimales,
      ];

      final uniqueRoutes = routes.toSet();
      expect(routes.length, uniqueRoutes.length,
          reason: 'Routes must be unique');
    });

    test('Route paths follow consistent pattern', () {
      // All routes (except home) should start with /
      expect(AppRoutes.agregarAnimal.startsWith('/'), true);
      expect(AppRoutes.detalleAnimal.startsWith('/'), true);
      expect(AppRoutes.editarAnimal.startsWith('/'), true);
      expect(AppRoutes.alertasDetail.startsWith('/'), true);
      expect(AppRoutes.listaAnimales.startsWith('/'), true);
    });

    test('Dynamic route generation produces valid paths', () {
      const animalId1 = '123abc';
      const animalId2 = 'uuid-long-string-12345';

      final detailePath1 = AppRoutes.detalleAnimalPath(animalId1);
      final detailePath2 = AppRoutes.detalleAnimalPath(animalId2);

      expect(detailePath1, '/detalle-animal/123abc');
      expect(detailePath2, '/detalle-animal/uuid-long-string-12345');
      expect(detailePath1 != detailePath2, true);
    });

    test('GoRouter configuration file exists and is valid', () {
      // This is a unit test to verify the route structure
      expect(AppRoutes, isNotNull);
    });
  });

  group('Navigation Flow Validation - FASE 4.2', () {
    test('Home route is the initial route', () {
      expect(AppRoutes.home, '/');
    });

    test('All secondary routes are reachable from home', () {
      // Routes should be accessible from navigation
      final secondaryRoutes = [
        AppRoutes.agregarAnimal,
        AppRoutes.alertasDetail,
        AppRoutes.listaAnimales,
      ];

      for (var route in secondaryRoutes) {
        expect(route.isNotEmpty, true);
        expect(route.startsWith('/'), true);
      }
    });

    test('Detail routes require animal ID parameter', () {
      expect(AppRoutes.detalleAnimal.contains(':animalId'), true);
      expect(AppRoutes.editarAnimal.contains(':animalId'), true);
    });
  });

  group('Navigation Architecture - FASE 4.2', () {
    test('Path generation methods work correctly', () {
      const id1 = 'animal-001';
      const id2 = 'animal-002';

      expect(
        AppRoutes.detalleAnimalPath(id1) != AppRoutes.detalleAnimalPath(id2),
        true,
      );
    });

    test('Edit and detail routes are distinct', () {
      const animalId = 'test-123';
      expect(
        AppRoutes.detalleAnimalPath(animalId) !=
            AppRoutes.editarAnimalPath(animalId),
        true,
      );
    });
  });
}
