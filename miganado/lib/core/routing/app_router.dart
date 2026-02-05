import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/home/presentation/screens/home_page.dart';
import 'package:miganado/features/animals/presentation/screens/animal_detail_screen.dart';
import 'package:miganado/ui/screens/register_animal_screen.dart';
import 'package:miganado/features/calendar/ui/screens/crear_evento_screen.dart';
import 'package:miganado/features/search/presentation/screens/advanced_search_screen.dart';
import 'package:miganado/features/health/presentation/screens/health_dashboard_screen.dart';
import 'package:miganado/features/ganadero/presentation/screens/mi_ganado_screen.dart';

/// ============================================================================
/// APP ROUTER - Configuración centralizada de rutas con Go Router
/// ============================================================================
///
/// Esta clase gestiona toda la navegación de la aplicación usando go_router.
/// IMPORTANTE: Todas las navegaciones deben usar:
/// - context.go(AppRoutes.routeName) - Para navegación simple
/// - context.push(AppRoutes.routeName) - Para agregar a la pila
/// - context.replace(AppRoutes.routeName) - Para reemplazar
///
/// NO usar Navigator.push() en ningún lado de la aplicación.

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    debugLogDiagnostics: false,
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text(AppStrings.errorTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('${AppStrings.errorOccurred}: ${state.uri.path}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.home),
              child: const Text('Volver al Inicio'),
            ),
          ],
        ),
      ),
    ),
    routes: [
      // ========== HOME / MAIN NAVIGATION ==========
      GoRoute(
        path: AppRoutes.home,
        name: 'home',
        builder: (context, state) => const HomePage(),
        routes: [
          // ========== ANIMALS SECTION ==========
          GoRoute(
            path: 'animal/register',
            name: 'registerAnimal',
            builder: (context, state) => const RegisterAnimalScreen(),
          ),
          GoRoute(
            path: 'animal/:animalUuid',
            name: 'animalDetail',
            builder: (context, state) {
              final animalUuid = state.pathParameters['animalUuid']!;
              return AnimalDetailScreen(animalUuid: animalUuid);
            },
          ),

          // ========== GANADERO SECTION ==========
          GoRoute(
            path: 'mi-ganado',
            name: 'miGanado',
            builder: (context, state) => const MiGanadoScreen(),
          ),

          // ========== CALENDAR SECTION ==========
          GoRoute(
            path: 'calendar/event/create',
            name: 'createEvent',
            builder: (context, state) => const CrearEventoScreen(),
          ),

          // ========== SEARCH SECTION ==========
          GoRoute(
            path: 'search',
            name: 'advancedSearch',
            builder: (context, state) => const AdvancedSearchScreen(),
          ),

          // ========== HEALTH SECTION ==========
          GoRoute(
            path: 'health',
            name: 'healthDashboard',
            builder: (context, state) => const HealthDashboardScreen(),
          ),
        ],
      ),
    ],
  );
}

/// ============================================================================
/// APP ROUTES - Rutas nombradas para navegación tipada
/// ============================================================================
///
/// Uso:
/// ```dart
/// // En cualquier widget:
/// context.go(AppRoutes.home);
/// context.push(AppRoutes.animalDetail('uuid-aqui'));
/// context.replace(AppRoutes.miGanado);
/// ```
class AppRoutes {
  // ========== MAIN ==========
  static const String home = '/';

  // ========== ANIMALS ==========
  static const String registerAnimal = 'animal/register';
  static String animalDetail(String animalUuid) => 'animal/$animalUuid';

  // ========== GANADERO ==========
  static const String miGanado = 'mi-ganado';

  // ========== CALENDAR ==========
  static const String createEvent = 'calendar/event/create';

  // ========== SEARCH ==========
  static const String advancedSearch = 'search';

  // ========== HEALTH ==========
  static const String healthDashboard = 'health';
}
