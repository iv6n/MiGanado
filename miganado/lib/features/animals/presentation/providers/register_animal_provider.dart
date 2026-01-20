import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/usecases/register_animal_usecase.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

// ============ REGISTER ANIMAL STATE ============

/// Estado del formulario de registro de animal
class RegisterAnimalState {
  // Datos básicos
  final String numeroArete;
  final String? nombrePersonalizado;
  final Especie? especie;
  final Categoria? categoria;
  final EtapaVida? etapa;
  final Sexo? sexo;
  final bool esCastrado;

  // Datos adicionales
  final String raza;
  final DateTime? fechaNacimiento;
  final int? edadAproximadaMeses;
  final bool usarEdadAproximada;
  final String? ubicacion;

  // Información adicional
  final bool vacunada;
  final String? tipoVacuna;
  final double? peso;
  final String? observaciones;

  // Errores de validación
  final Map<String, String> errors;
  final bool mostrarAlertaArete;

  // Estados de la operación
  final bool isLoading;
  final String? successMessage;
  final String? errorMessage;

  RegisterAnimalState({
    // Datos básicos
    this.numeroArete = '',
    this.nombrePersonalizado,
    this.especie,
    this.categoria,
    this.etapa,
    this.sexo,
    this.esCastrado = false,
    // Datos adicionales
    this.raza = '',
    this.fechaNacimiento,
    this.edadAproximadaMeses,
    this.usarEdadAproximada = false,
    this.ubicacion,
    // Información adicional
    this.vacunada = false,
    this.tipoVacuna,
    this.peso,
    this.observaciones,
    // Errores
    this.errors = const {},
    this.mostrarAlertaArete = false,
    // Estados
    this.isLoading = false,
    this.successMessage,
    this.errorMessage,
  });

  /// Obtener edad en meses para registro
  int get edadMesesFinal {
    if (usarEdadAproximada && edadAproximadaMeses != null) {
      return edadAproximadaMeses!;
    }
    if (fechaNacimiento != null) {
      final diferencia = DateTime.now().difference(fechaNacimiento!);
      return (diferencia.inDays / 30.44).round();
    }
    return 0;
  }

  /// Copiar estado con cambios
  RegisterAnimalState copyWith({
    String? numeroArete,
    String? nombrePersonalizado,
    Especie? especie,
    Categoria? categoria,
    EtapaVida? etapa,
    Sexo? sexo,
    bool? esCastrado,
    String? raza,
    DateTime? fechaNacimiento,
    int? edadAproximadaMeses,
    bool? usarEdadAproximada,
    String? ubicacion,
    bool? vacunada,
    String? tipoVacuna,
    double? peso,
    String? observaciones,
    Map<String, String>? errors,
    bool? mostrarAlertaArete,
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
      esCastrado: esCastrado ?? this.esCastrado,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      edadAproximadaMeses: edadAproximadaMeses ?? this.edadAproximadaMeses,
      usarEdadAproximada: usarEdadAproximada ?? this.usarEdadAproximada,
      ubicacion: ubicacion ?? this.ubicacion,
      vacunada: vacunada ?? this.vacunada,
      tipoVacuna: tipoVacuna ?? this.tipoVacuna,
      peso: peso ?? this.peso,
      observaciones: observaciones ?? this.observaciones,
      errors: errors ?? this.errors,
      mostrarAlertaArete: mostrarAlertaArete ?? this.mostrarAlertaArete,
      isLoading: isLoading ?? this.isLoading,
      successMessage: successMessage ?? this.successMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  /// Verificar si el formulario es válido (mínimo: categoría + sexo)
  bool get isValid {
    return especie != null &&
        categoria != null &&
        sexo != null &&
        (fechaNacimiento != null || usarEdadAproximada) &&
        errors.isEmpty;
  }
}

// ============ REGISTER ANIMAL NOTIFIER ============

/// Notifier para manejar el estado del formulario
class RegisterAnimalNotifier extends StateNotifier<RegisterAnimalState> {
  final RegisterAnimalUseCase registerUseCase;

  RegisterAnimalNotifier(this.registerUseCase) : super(RegisterAnimalState());

  /// Mapeo de categoría a sexo automático
  static const Map<EtapaVida, Sexo> _sexoPorEtapa = {
    EtapaVida.becerro: Sexo.macho,
    EtapaVida.becerra: Sexo.hembra,
    EtapaVida.vaquilla: Sexo.hembra,
    EtapaVida.torete: Sexo.macho,
    EtapaVida.novillo: Sexo.macho,
    EtapaVida.vaca: Sexo.hembra,
    EtapaVida.toro: Sexo.macho,
  };

  /// Obtener sexo automático según la etapa
  Sexo? _getSexoAutomatico(EtapaVida? etapa) {
    if (etapa == null) return null;
    return _sexoPorEtapa[etapa];
  }

  /// Actualizar número de arete
  void updateArete(String value) {
    state = state.copyWith(numeroArete: value, mostrarAlertaArete: false);
  }

  /// Actualizar nombre personalizado
  void updateNombrePersonalizado(String? value) {
    state = state.copyWith(nombrePersonalizado: value);
  }

  /// Actualizar especie
  void updateEspecie(Especie? value) {
    Categoria? categoria;
    if (value != null) {
      categoria = value.categoriasValidas.first;
    }
    state = state.copyWith(especie: value, categoria: categoria, sexo: null);
  }

  /// Actualizar categoría (con lógica de sexo automático)
  void updateCategoria(Categoria? value) {
    Sexo? sexoAutomatico;

    // Para bovinos, seleccionar etapa automáticamente
    if (value == Categoria.vaca) {
      // Los becerros no tienen sexo automático (permitir selección)
      if (state.etapa != EtapaVida.becerro &&
          state.etapa != EtapaVida.becerra) {
        sexoAutomatico = _getSexoAutomatico(state.etapa);
      }
    }

    state = state.copyWith(
      categoria: value,
      sexo: sexoAutomatico ?? state.sexo,
    );
  }

  /// Actualizar etapa (con cambio automático de nombre y sexo)
  void updateEtapa(EtapaVida? value) {
    // Si es becerro, permitir selección manual de sexo
    final sexoAutomatico =
        (value == EtapaVida.becerro || value == EtapaVida.becerra)
            ? null
            : _getSexoAutomatico(value);

    state = state.copyWith(
      etapa: value,
      sexo: sexoAutomatico ?? state.sexo,
    );
  }

  /// Actualizar sexo (manual)
  void updateSexo(Sexo? value) {
    state = state.copyWith(sexo: value);
  }

  /// Actualizar raza
  void updateRaza(String value) {
    state = state.copyWith(raza: value);
  }

  /// Actualizar fecha de nacimiento
  void updateFechaNacimiento(DateTime? value) {
    state = state.copyWith(
      fechaNacimiento: value,
      usarEdadAproximada: false,
    );
  }

  /// Actualizar edad aproximada en meses
  void updateEdadAproximada(int? value) {
    state = state.copyWith(
      edadAproximadaMeses: value,
      usarEdadAproximada: true,
      fechaNacimiento: null,
    );
  }

  /// Cambiar entre usar fecha exacta o edad aproximada
  void toggleUsarEdadAproximada(bool value) {
    state = state.copyWith(
      usarEdadAproximada: value,
      fechaNacimiento: value ? null : state.fechaNacimiento,
      edadAproximadaMeses: value ? state.edadAproximadaMeses : null,
    );
  }

  /// Actualizar castración
  void updateEsCastrado(bool value) {
    state = state.copyWith(esCastrado: value);
  }

  /// Actualizar ubicación
  void updateUbicacion(String? value) {
    state = state.copyWith(ubicacion: value);
  }

  /// Actualizar vacunación
  void updateVacunada(bool value) {
    state = state.copyWith(vacunada: value);
  }

  /// Actualizar tipo de vacuna
  void updateTipoVacuna(String? value) {
    state = state.copyWith(tipoVacuna: value);
  }

  /// Actualizar peso
  void updatePeso(double? value) {
    state = state.copyWith(peso: value);
  }

  /// Actualizar observaciones
  void updateObservaciones(String? value) {
    state = state.copyWith(observaciones: value);
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
    if (state.especie == null ||
        state.categoria == null ||
        state.sexo == null) {
      state = state.copyWith(
        errorMessage: 'Por favor completa categoría y sexo del animal',
      );
      return null;
    }

    // Advertencia si no hay arete
    if (state.numeroArete.isEmpty) {
      mostrarAlertaArete();
      // Continuar de todas formas
    }

    // Validar que tenga fecha de nacimiento o edad aproximada
    if (!state.usarEdadAproximada && state.fechaNacimiento == null) {
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
      final arete = state.numeroArete.isNotEmpty
          ? state.numeroArete
          : 'AR-${DateTime.now().millisecondsSinceEpoch}';

      // Usar fecha de nacimiento o calcular desde edad aproximada
      late DateTime fechaCalculada;
      if (state.usarEdadAproximada && state.edadAproximadaMeses != null) {
        final diasAtras = (state.edadAproximadaMeses! * 30.44).toInt();
        fechaCalculada = DateTime.now().subtract(Duration(days: diasAtras));
      } else {
        fechaCalculada = state.fechaNacimiento!;
      }

      // Ejecutar caso de uso
      final animal = await registerUseCase(
        numeroArete: arete,
        especie: state.especie!,
        categoria: state.categoria!,
        sexo: state.sexo!,
        raza: state.raza.isNotEmpty ? state.raza : 'Desconocida',
        fechaNacimiento: fechaCalculada,
        edadMeses: state.edadMesesFinal,
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
