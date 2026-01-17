import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/data/database/isar_database.dart';

/// Excepción personalizada para errores de registro
class RegisterAnimalException implements Exception {
  final String message;
  RegisterAnimalException(this.message);

  @override
  String toString() => 'RegisterAnimalException: $message';
}

/// Caso de uso: Registrar un nuevo animal
class RegisterAnimalUseCase {
  final MiGanadoDatabase database;

  RegisterAnimalUseCase(this.database);

  /// Registrar un nuevo animal
  /// Valida datos y persiste en Isar
  ///
  /// Throws [RegisterAnimalException] si hay error
  /// Returns el Animal creado
  Future<Animal> call({
    required String numeroArete,
    required Especie especie,
    required Categoria categoria,
    required Sexo sexo,
    required String raza,
    required DateTime fechaNacimiento,
    required int edadMeses,
    bool esCastrado = false,
    String? nombrePersonalizado,
  }) async {
    // 1. Validaciones
    _validate(
      numeroArete: numeroArete,
      especie: especie,
      sexo: sexo,
      raza: raza,
      fechaNacimiento: fechaNacimiento,
      edadMeses: edadMeses,
    );

    // 2. Verificar que arete no existe
    await _validateUniqueArete(numeroArete);

    // 3. Calcular la etapa automáticamente (se calcula en el constructor)
    final animalEntity = AnimalEntity(
      numeroArete: numeroArete.trim(),
      nombrePersonalizado: nombrePersonalizado?.trim(),
      especie: especie,
      categoria: categoria,
      sexo: sexo,
      raza: raza.trim(),
      fechaNacimiento: fechaNacimiento,
      edadMeses: edadMeses,
      esCastrado: esCastrado,
    );

    // 4. Guardar en base de datos
    try {
      await database.saveAnimal(animalEntity);
    } catch (e) {
      throw RegisterAnimalException(
        'Error al guardar el animal: $e',
      );
    }

    // 5. Retornar Animal de dominio
    return Animal.fromEntity(animalEntity);
  }

  /// Validaciones de datos
  void _validate({
    required String numeroArete,
    required Especie especie,
    required Sexo sexo,
    required String raza,
    required DateTime fechaNacimiento,
    required int edadMeses,
  }) {
    if (numeroArete.trim().isEmpty) {
      throw RegisterAnimalException('El número de arete es requerido');
    }

    if (numeroArete.length > 20) {
      throw RegisterAnimalException('El arete no puede exceder 20 caracteres');
    }

    if (raza.trim().isEmpty) {
      throw RegisterAnimalException('La raza es requerida');
    }

    if (raza.length > 50) {
      throw RegisterAnimalException('La raza no puede exceder 50 caracteres');
    }

    if (fechaNacimiento.isAfter(DateTime.now())) {
      throw RegisterAnimalException(
        'La fecha de nacimiento no puede ser futura',
      );
    }

    if (edadMeses < 0) {
      throw RegisterAnimalException('La edad en meses no puede ser negativa');
    }

    // Validar que tenga al menos algunos días de edad (evitar errores de fecha)
    final diferencia = DateTime.now().difference(fechaNacimiento);
    if (diferencia.inDays < -1) {
      throw RegisterAnimalException('Fecha de nacimiento inválida');
    }
  }

  /// Verificar que el arete sea único
  Future<void> _validateUniqueArete(String numeroArete) async {
    try {
      final existente = await database.getAnimalByArete(numeroArete);
      if (existente != null) {
        throw RegisterAnimalException(
          'Ya existe un animal con el arete "$numeroArete"',
        );
      }
    } catch (e) {
      if (e is RegisterAnimalException) {
        rethrow;
      }
      // Ignorar otros errores de la BD en esta validación
    }
  }
}
