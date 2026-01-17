import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/usecases/register_animal_usecase.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ REGISTER ANIMAL STATE ============

/// Estado del formulario de registro de animal
class RegisterAnimalState {
  final String numeroArete;
  final String? nombrePersonalizado;
  final Especie? especie;
  final Categoria? categoria;
  final EtapaVida? etapa;
  final Sexo? sexo;
  final String raza;
  final DateTime? fechaNacimiento;
  final int edadMeses;
  final bool esCastrado;

  // Errores de validación
  final Map<String, String> errors;

  // Estados de la operación
  final bool isLoading;
  final String? successMessage;
  final String? errorMessage;

  RegisterAnimalState({
    this.numeroArete = '',
    this.nombrePersonalizado,
    this.especie,
    this.categoria,
    this.etapa,
    this.sexo,
    this.raza = '',
    this.fechaNacimiento,
    this.edadMeses = 0,
    this.esCastrado = false,
    this.errors = const {},
    this.isLoading = false,
    this.successMessage,
    this.errorMessage,
  });

  /// Copiar estado con cambios
  RegisterAnimalState copyWith({
    String? numeroArete,
    String? nombrePersonalizado,
    Especie? especie,
    Categoria? categoria,
    EtapaVida? etapa,
    Sexo? sexo,
    String? raza,
    DateTime? fechaNacimiento,
    int? edadMeses,
    bool? esCastrado,
    Map<String, String>? errors,
    bool? isLoading,
    String? successMessage,
    String? errorMessage,
  }) {
    return RegisterAnimalState(
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      especie: especie ?? this.especie,
      categoria: categoria ?? this.categoria,
      etapa: etapa ?? this.etapa,
      sexo: sexo ?? this.sexo,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      edadMeses: edadMeses ?? this.edadMeses,
      esCastrado: esCastrado ?? this.esCastrado,
      errors: errors ?? this.errors,
      isLoading: isLoading ?? this.isLoading,
      successMessage: successMessage ?? this.successMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  /// Verificar si el formulario es válido
  bool get isValid {
    return numeroArete.isNotEmpty &&
        especie != null &&
        categoria != null &&
        sexo != null &&
        raza.isNotEmpty &&
        fechaNacimiento != null &&
        edadMeses >= 0 &&
        errors.isEmpty;
  }
}

// ============ REGISTER ANIMAL NOTIFIER ============

/// Notifier para manejar el estado del formulario
class RegisterAnimalNotifier extends StateNotifier<RegisterAnimalState> {
  final RegisterAnimalUseCase registerUseCase;

  RegisterAnimalNotifier(this.registerUseCase) : super(RegisterAnimalState());

  /// Actualizar número de arete
  void updateArete(String value) {
    state = state.copyWith(numeroArete: value);
  }

  /// Actualizar nombre personalizado
  void updateNombrePersonalizado(String? value) {
    state = state.copyWith(nombrePersonalizado: value);
  }

  /// Actualizar especie
  void updateEspecie(Especie? value) {
    // Resetear categoría si cambia especie
    Categoria? categoria;
    if (value != null) {
      categoria = value.categoriasValidas.first;
    }
    state = state.copyWith(especie: value, categoria: categoria);
  }

  /// Actualizar categoría
  void updateCategoria(Categoria? value) {
    state = state.copyWith(categoria: value);
  }

  /// Actualizar sexo
  void updateSexo(Sexo? value) {
    state = state.copyWith(sexo: value);
  }

  /// Actualizar raza
  void updateRaza(String value) {
    state = state.copyWith(raza: value);
  }

  /// Actualizar fecha de nacimiento
  void updateFechaNacimiento(DateTime? value) {
    state = state.copyWith(fechaNacimiento: value);
  }

  /// Actualizar edad en meses
  void updateEdadMeses(int value) {
    state = state.copyWith(edadMeses: value);
  }

  /// Actualizar castración
  void updateEsCastrado(bool value) {
    state = state.copyWith(esCastrado: value);
  }

  /// Registrar el animal
  /// Retorna el Animal creado o null si hay error
  Future<Animal?> registrar() async {
    // Limpiar mensajes previos
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      successMessage: null,
    );

    try {
      // Ejecutar caso de uso
      final animal = await registerUseCase(
        numeroArete: state.numeroArete,
        especie: state.especie!,
        categoria: state.categoria!,
        sexo: state.sexo!,
        raza: state.raza,
        fechaNacimiento: state.fechaNacimiento!,
        edadMeses: state.edadMeses,
        esCastrado: state.esCastrado,
        nombrePersonalizado: state.nombrePersonalizado,
      );

      // Éxito
      state = state.copyWith(
        isLoading: false,
        successMessage:
            'Animal "${animal.numeroArete}" registrado correctamente',
      );

      return animal;
    } on RegisterAnimalException catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.message,
      );
      return null;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Error inesperado: $e',
      );
      return null;
    }
  }

  /// Resetear formulario
  void reset() {
    state = RegisterAnimalState();
  }

  /// Limpiar mensajes
  void clearMessages() {
    state = state.copyWith(
      successMessage: null,
      errorMessage: null,
    );
  }
}

// ============ RIVERPOD PROVIDERS ============

/// Provider del use case
final registerAnimalUseCaseProvider = Provider((ref) {
  final database = ref.watch(databaseProvider);
  return RegisterAnimalUseCase(database);
});

/// Provider del estado del formulario
final registerAnimalProvider =
    StateNotifierProvider<RegisterAnimalNotifier, RegisterAnimalState>((ref) {
  final useCase = ref.watch(registerAnimalUseCaseProvider);
  return RegisterAnimalNotifier(useCase);
});
