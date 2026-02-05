import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/usecases/register_animal_usecase.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ REGISTER ANIMAL STATE ============

/// Estado del formulario de registro de animal
class RegisterAnimalState {
  // Datos básicos
  final String earTagNumber;
  final String? customName;
  final Species? species;
  final Category? category;
  final LifeStage? lifeStage;
  final Sex? sex;
  final bool isCastrated;

  // Datos adicionales
  final String breed;
  final DateTime? birthDate;
  final int? approximateAgeMonths;
  final bool usarEdadAproximada;
  final String? location;

  // Información adicional
  final bool isVaccinated;
  final String? vaccineType;
  final double? weight;
  final String? notes;

  // Errores de validación
  final Map<String, String> errors;
  final bool mostrarAlertaArete;

  // Estados de la operación
  final bool isLoading;
  final String? successMessage;
  final String? errorMessage;

  RegisterAnimalState({
    // Datos básicos
    this.earTagNumber = '',
    this.customName,
    this.species,
    this.category,
    this.lifeStage,
    this.sex,
    this.isCastrated = false,
    // Datos adicionales
    this.breed = '',
    this.birthDate,
    this.approximateAgeMonths,
    this.usarEdadAproximada = false,
    this.location,
    // Información adicional
    this.isVaccinated = false,
    this.vaccineType,
    this.weight,
    this.notes,
    // Errores
    this.errors = const {},
    this.mostrarAlertaArete = false,
    // Estados
    this.isLoading = false,
    this.successMessage,
    this.errorMessage,
  });

  /// Obtener edad en meses para registro
  int get ageMonths {
    if (usarEdadAproximada && approximateAgeMonths != null) {
      return approximateAgeMonths!;
    }
    if (birthDate != null) {
      final diferencia = DateTime.now().difference(birthDate!);
      return (diferencia.inDays / 30.44).round();
    }
    return 0;
  }

  /// Copiar estado con cambios
  RegisterAnimalState copyWith({
    String? earTagNumber,
    String? customName,
    Species? species,
    Category? category,
    LifeStage? lifeStage,
    Sex? sex,
    bool? isCastrated,
    String? breed,
    DateTime? birthDate,
    int? approximateAgeMonths,
    bool? usarEdadAproximada,
    String? location,
    bool? isVaccinated,
    String? vaccineType,
    double? weight,
    String? notes,
    Map<String, String>? errors,
    bool? mostrarAlertaArete,
    bool? isLoading,
    String? successMessage,
    String? errorMessage,
  }) {
    return RegisterAnimalState(
      earTagNumber: earTagNumber ?? this.earTagNumber,
      customName: customName ?? this.customName,
      species: species ?? this.species,
      category: category ?? this.category,
      lifeStage: lifeStage ?? this.lifeStage,
      sex: sex ?? this.sex,
      isCastrated: isCastrated ?? this.isCastrated,
      breed: breed ?? this.breed,
      birthDate: birthDate ?? this.birthDate,
      approximateAgeMonths: approximateAgeMonths ?? this.approximateAgeMonths,
      usarEdadAproximada: usarEdadAproximada ?? this.usarEdadAproximada,
      location: location ?? this.location,
      isVaccinated: isVaccinated ?? this.isVaccinated,
      vaccineType: vaccineType ?? this.vaccineType,
      weight: weight ?? this.weight,
      notes: notes ?? this.notes,
      errors: errors ?? this.errors,
      mostrarAlertaArete: mostrarAlertaArete ?? this.mostrarAlertaArete,
      isLoading: isLoading ?? this.isLoading,
      successMessage: successMessage ?? this.successMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  /// Verificar si el formulario es válido (mínimo: categoría + sexo)
  bool get isValid {
    return species != null &&
        category != null &&
        sex != null &&
        (birthDate != null || usarEdadAproximada) &&
        errors.isEmpty;
  }
}

// ============ REGISTER ANIMAL NOTIFIER ============

/// Notifier para manejar el estado del formulario
class RegisterAnimalNotifier extends StateNotifier<RegisterAnimalState> {
  final RegisterAnimalUseCase registerUseCase;

  RegisterAnimalNotifier(this.registerUseCase) : super(RegisterAnimalState());

  /// Mapeo de categoría a sexo automático
  static const Map<LifeStage, Sex> _sexoPorEtapa = {
    LifeStage.calfMale: Sex.male,
    LifeStage.calfFemale: Sex.female,
    LifeStage.heifer: Sex.female,
    LifeStage.youngBull: Sex.male,
    LifeStage.steer: Sex.male,
    LifeStage.cow: Sex.female,
    LifeStage.bull: Sex.male,
  };

  /// Obtener sexo automático según la etapa
  Sex? _getSexoAutomatico(LifeStage? etapa) {
    if (etapa == null) return null;
    return _sexoPorEtapa[etapa];
  }

  /// Actualizar número de arete
  void updateArete(String value) {
    state = state.copyWith(earTagNumber: value, mostrarAlertaArete: false);
  }

  /// Actualizar nombre personalizado
  void updateNombrePersonalizado(String? value) {
    state = state.copyWith(customName: value);
  }

  /// Actualizar especie
  void updateEspecie(Species? value) {
    Category? categoria;
    if (value != null) {
      categoria = value.categoriasValidas.first;
    }
    state = state.copyWith(species: value, category: categoria, sex: null);
  }

  /// Actualizar categoría (con lógica de sexo automático)
  void updateCategoria(Category? value) {
    Sex? sexoAutomatico;

    // Para bovinos, seleccionar etapa automáticamente
    if (value == Category.cow) {
      // Los becerros no tienen sexo automático (permitir selección)
      if (state.lifeStage != LifeStage.calfMale &&
          state.lifeStage != LifeStage.calfFemale) {
        sexoAutomatico = _getSexoAutomatico(state.lifeStage);
      }
    }

    state = state.copyWith(
      category: value,
      sex: sexoAutomatico ?? state.sex,
    );
  }

  /// Actualizar etapa (con cambio automático de nombre y sexo)
  void updateEtapa(LifeStage? value) {
    // Si es becerro, permitir selección manual de sexo
    final sexoAutomatico =
        (value == LifeStage.calfMale || value == LifeStage.calfFemale)
            ? null
            : _getSexoAutomatico(value);

    state = state.copyWith(
      lifeStage: value,
      sex: sexoAutomatico ?? state.sex,
    );
  }

  /// Actualizar sexo (manual)
  void updateSexo(Sex? value) {
    state = state.copyWith(sex: value);
  }

  /// Actualizar raza
  void updateRaza(String value) {
    state = state.copyWith(breed: value);
  }

  /// Actualizar fecha de nacimiento
  void updateFechaNacimiento(DateTime? value) {
    state = state.copyWith(
      birthDate: value,
      usarEdadAproximada: false,
    );
  }

  /// Actualizar edad aproximada en meses
  void updateEdadAproximada(int? value) {
    state = state.copyWith(
      approximateAgeMonths: value,
      usarEdadAproximada: true,
      birthDate: null,
    );
  }

  /// Cambiar entre usar fecha exacta o edad aproximada
  void toggleUsarEdadAproximada(bool value) {
    state = state.copyWith(
      usarEdadAproximada: value,
      birthDate: value ? null : state.birthDate,
      approximateAgeMonths: value ? state.approximateAgeMonths : null,
    );
  }

  /// Actualizar castración
  void updateEsCastrado(bool value) {
    state = state.copyWith(isCastrated: value);
  }

  /// Actualizar ubicación
  void updateUbicacion(String? value) {
    state = state.copyWith(location: value);
  }

  /// Actualizar vacunación
  void updateVacunada(bool value) {
    state = state.copyWith(isVaccinated: value);
  }

  /// Actualizar tipo de vacuna
  void updateTipoVacuna(String? value) {
    state = state.copyWith(vaccineType: value);
  }

  /// Actualizar peso
  void updatePeso(double? value) {
    state = state.copyWith(weight: value);
  }

  /// Actualizar observaciones
  void updateObservaciones(String? value) {
    state = state.copyWith(notes: value);
  }

  /// Mostrar alerta de arete faltante
  void mostrarAlertaArete() {
    state = state.copyWith(mostrarAlertaArete: true);
  }

  /// Cerrar alerta de arete
  void cerrarAlertaArete() {
    state = state.copyWith(mostrarAlertaArete: false);
  }

  /// Registrar el animal
  /// Retorna el Animal creado o null si hay error
  Future<Animal?> registrar() async {
    // Validar datos mínimos requeridos
    if (state.species == null || state.category == null || state.sex == null) {
      state = state.copyWith(
        errorMessage: 'Por favor completa categoría y sexo del animal',
      );
      return null;
    }

    // Advertencia si no hay arete
    if (state.earTagNumber.isEmpty) {
      mostrarAlertaArete();
      // Continuar de todas formas
    }

    // Validar que tenga fecha de nacimiento o edad aproximada
    if (!state.usarEdadAproximada && state.birthDate == null) {
      state = state.copyWith(
        errorMessage: 'Por favor ingresa fecha de nacimiento o edad aproximada',
      );
      return null;
    }

    // Limpiar mensajes previos
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      successMessage: null,
      mostrarAlertaArete: false,
    );

    try {
      // Generar arete por defecto si no existe
      final arete = state.earTagNumber.isNotEmpty
          ? state.earTagNumber
          : 'AR-${DateTime.now().millisecondsSinceEpoch}';

      // Usar fecha de nacimiento o calcular desde edad aproximada
      late DateTime fechaCalculada;
      if (state.usarEdadAproximada && state.approximateAgeMonths != null) {
        final diasAtras = (state.approximateAgeMonths! * 30.44).toInt();
        fechaCalculada = DateTime.now().subtract(Duration(days: diasAtras));
      } else {
        fechaCalculada = state.birthDate!;
      }

      // Ejecutar caso de uso
      final animal = await registerUseCase(
        numeroArete: arete,
        especie: state.species!,
        categoria: state.category!,
        sexo: state.sex!,
        raza: state.breed.isNotEmpty ? state.breed : 'Desconocida',
        fechaNacimiento: fechaCalculada,
        edadMeses: state.ageMonths,
        esCastrado: state.isCastrated,
        nombrePersonalizado: state.customName,
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
