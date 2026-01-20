/// Validadores centralizados para entrada de datos
class InputValidators {
  /// Valida que el campo no esté vacío
  static String? validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName es requerido';
    }
    return null;
  }

  /// Valida nombre de animal (no vacío, 2+ caracteres)
  static String? validateAnimalName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El nombre del animal es requerido';
    }
    if (value.trim().length < 2) {
      return 'El nombre debe tener al menos 2 caracteres';
    }
    if (value.trim().length > 50) {
      return 'El nombre no puede exceder 50 caracteres';
    }
    return null;
  }

  /// Valida número (peso, edad, precio)
  static String? validateNumber(String? value, String fieldName,
      {double? min, double? max}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName es requerido';
    }

    final number = double.tryParse(value);
    if (number == null) {
      return '$fieldName debe ser un número válido';
    }

    if (min != null && number < min) {
      return '$fieldName no puede ser menor a $min';
    }
    if (max != null && number > max) {
      return '$fieldName no puede ser mayor a $max';
    }

    return null;
  }

  /// Valida edad del animal
  static String? validateAge(String? value) {
    return validateNumber(value, 'Edad', min: 0, max: 50);
  }

  /// Valida peso del animal
  static String? validateWeight(String? value) {
    return validateNumber(value, 'Peso', min: 0.1, max: 1000);
  }

  /// Valida precio/costo
  static String? validatePrice(String? value) {
    return validateNumber(value, 'Precio', min: 0, max: 9999999);
  }

  /// Valida descripción (opcional pero con límite)
  static String? validateDescription(String? value) {
    if (value != null && value.length > 500) {
      return 'La descripción no puede exceder 500 caracteres';
    }
    return null;
  }

  /// Valida correo electrónico
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El correo es requerido';
    }
    final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    if (!emailRegex.hasMatch(value.trim())) {
      return 'Ingresa un correo válido';
    }
    return null;
  }

  /// Valida teléfono
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El teléfono es requerido';
    }
    final phoneRegex = RegExp(r'^[0-9]{7,15}$');
    if (!phoneRegex.hasMatch(value.replaceAll(RegExp(r'[^\d]'), ''))) {
      return 'Ingresa un teléfono válido (7-15 dígitos)';
    }
    return null;
  }

  /// Valida selección de dropdown
  static String? validateSelection(dynamic value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Selecciona $fieldName';
    }
    return null;
  }

  /// Valida código/ID
  static String? validateCode(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El código es requerido';
    }
    if (value.trim().length < 1) {
      return 'El código debe tener al menos 1 carácter';
    }
    if (value.trim().length > 20) {
      return 'El código no puede exceder 20 caracteres';
    }
    return null;
  }
}
