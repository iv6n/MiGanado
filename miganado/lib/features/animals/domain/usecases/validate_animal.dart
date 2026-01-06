import 'package:miganado/features/animals/data/models/animal_model.dart';

/// Resultado de validación
class ValidationResult {
  final bool isValid;
  final List<String> errors;

  ValidationResult({
    required this.isValid,
    this.errors = const [],
  });

  factory ValidationResult.valid() => ValidationResult(isValid: true);

  factory ValidationResult.invalid(List<String> errors) =>
      ValidationResult(isValid: false, errors: errors);
}

/// Use case para validar un animal
class ValidateAnimal {
  /// Valida un animal según reglas de negocio
  ValidationResult call(AnimalModel animal) {
    List<String> errors = [];

    // Validar número de arete
    if (animal.numeroArete.isEmpty) {
      errors.add('El número de arete es requerido');
    } else if (animal.numeroArete.length < 3) {
      errors.add('El número de arete debe tener al menos 3 caracteres');
    }

    // Validar raza
    if (animal.raza.isEmpty) {
      errors.add('La raza es requerida');
    }

    // Validar fecha de nacimiento
    if (animal.fechaNacimiento != null) {
      if (animal.fechaNacimiento!.isAfter(DateTime.now())) {
        errors.add('La fecha de nacimiento no puede ser futura');
      }
    }

    // Validar precios
    if (animal.precioCompra != null && animal.precioCompra! < 0) {
      errors.add('El precio de compra no puede ser negativo');
    }

    if (animal.precioVenta != null && animal.precioVenta! < 0) {
      errors.add('El precio de venta no puede ser negativo');
    }

    // Validar consistencia de costos
    if (animal.costosExtra.values.any((value) => value < 0)) {
      errors.add('Los costos no pueden ser negativos');
    }

    // Validar vacunación
    if (animal.vacunado && animal.fechaUltimaVacuna == null) {
      errors.add('Si está vacunado, debe indicar la fecha de vacunación');
    }

    // Validar desparasitación
    if (animal.desparasitado && animal.fechaUltimoDesparasitante == null) {
      errors.add(
          'Si está desparasitado, debe indicar la fecha de desparasitación');
    }

    // Validar vitaminas
    if (animal.tieneVitaminas && animal.fechaVitaminas == null) {
      errors.add('Si tiene vitaminas, debe indicar la fecha');
    }

    // Validar otros tratamientos
    if (animal.tieneOtrosTratamientos &&
        animal.fechaOtrosTratamientos == null) {
      errors.add('Si tiene otros tratamientos, debe indicar la fecha de estos');
    }

    return errors.isEmpty
        ? ValidationResult.valid()
        : ValidationResult.invalid(errors);
  }
}
