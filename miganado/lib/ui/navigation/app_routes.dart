import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/ui/screens/home_screen_v2.dart';
import 'package:miganado/ui/screens/agregar_animal_screen_v2.dart';
import 'package:miganado/ui/screens/detalle_animal_screen_v2.dart';
import 'package:miganado/ui/screens/alertas_detail_screen_v2.dart';
import 'package:miganado/ui/screens/lista_animales_screen_v2.dart';

/// Definición de rutas de navegación para la aplicación
class AppRoutes {
  static const String home = '/';
  static const String listaAnimales = '/lista-animales';
  static const String agregarAnimal = '/agregar-animal';
  static const String detalleAnimal = '/detalle-animal/:animalId';
  static const String alertasDetail = '/alertas';
  static const String editarAnimal = '/editar-animal/:animalId';

  /// Extrae animalId de los parámetros de ruta
  static String detalleAnimalPath(String animalId) =>
      '/detalle-animal/$animalId';
  static String editarAnimalPath(String animalId) => '/editar-animal/$animalId';
}

/// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreenV2(),
      routes: [
        GoRoute(
          path: 'agregar-animal',
          builder: (context, state) => const AgregarAnimalScreenV2(),
        ),
        GoRoute(
          path: 'lista-animales',
          builder: (context, state) => const ListaAnimalesScreenV2(),
        ),
        GoRoute(
          path: 'detalle-animal/:animalId',
          builder: (context, state) {
            final animalId = state.pathParameters['animalId']!;
            return DetalleAnimalScreenV2(animalId: animalId);
          },
        ),
        GoRoute(
          path: 'editar-animal/:animalId',
          builder: (context, state) {
            final animalId = state.pathParameters['animalId']!;
            return AgregarAnimalScreenV2(
              esEdicion: true,
              // TODO: Obtener animal del provider si es necesario
            );
          },
        ),
        GoRoute(
          path: 'alertas',
          builder: (context, state) => const AlertasDetailScreenV2(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(title: const Text('Error')),
    body: Center(
      child: Text('Ruta no encontrada: ${state.error}'),
    ),
  ),
);
