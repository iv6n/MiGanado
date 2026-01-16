import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/usecases/calcular_categoria_automatica.dart';
import 'package:miganado/features/animals/domain/usecases/calcular_edad.dart';
import 'package:miganado/core/enums/sexo.dart';
import 'package:miganado/features/animals/presentation/providers/animal_providers.dart'
    show databaseProvider, animalRepositoryProvider;

/// Provider del use case para calcular categoría
final calcularCategoriaProvider = Provider<CalcularCategoriaAutomatica>((ref) {
  return CalcularCategoriaAutomatica();
});

/// Provider del use case para calcular edad
final calcularEdadProvider = Provider<CalcularEdad>((ref) {
  return CalcularEdad();
});

/// Provider de categoría por sexo y edad
final categoriaProvider =
    FutureProvider.family<String, (Sexo sexo, int edad)>((ref, params) async {
  final useCase = ref.watch(calcularCategoriaProvider);
  return useCase.call(params.$1, params.$2);
});

/// Provider de rango de edad por categoría
final rangoEdadProvider =
    FutureProvider.family<({int min, int max, int approx}), String>(
        (ref, categoria) async {
  final useCase = ref.watch(calcularCategoriaProvider);
  return useCase.getRangoEdadPorCategoria(categoria);
});
