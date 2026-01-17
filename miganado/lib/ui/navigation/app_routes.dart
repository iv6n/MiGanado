import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/ui/screens/home_screen.dart';
import 'package:miganado/ui/screens/register_animal_screen.dart';
import 'package:miganado/ui/screens/ganadero_info_screen.dart';

// TODO: [LEGACY] Las siguientes importaciones V2 han sido reemplazadas con screens existentes
// import 'package:miganado/ui/screens/home_screen_v2.dart';
// import 'package:miganado/ui/screens/agregar_animal_screen_v2.dart';
// import 'package:miganado/ui/screens/detalle_animal_screen_v2.dart';
// import 'package:miganado/ui/screens/alertas_detail_screen_v2.dart';
// import 'package:miganado/ui/screens/lista_animales_screen_v2.dart';

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
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'agregar-animal',
          builder: (context, state) => const RegisterAnimalScreen(),
        ),
        GoRoute(
          path: 'ganadero-info',
          builder: (context, state) => const GanaderoInfoScreen(),
        ),
        // TODO: Implementar rutas para detalle animal, lista animales y alertas
        // GoRoute(
        //   path: 'detalle-animal/:animalId',
        //   builder: (context, state) => DetalleAnimalScreen(...),
        // ),
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
