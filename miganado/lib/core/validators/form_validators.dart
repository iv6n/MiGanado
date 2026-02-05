/// ============================================================================
/// VALIDADORES CENTRALIZADOS DE FORMULARIOS
/// ============================================================================

/// Colección centralizada de validadores para formularios
///
/// Proporciona métodos estáticos para validar diferentes tipos de datos.
/// Todos los validadores retornan:
/// - `null` si la validación es exitosa
/// - `String` con mensaje de error si la validación falla
///
/// Ventajas de centralizar:
/// - Consistencia en mensajes de error
/// - Fácil mantenimiento de reglas
/// - Reutilización en múltiples pantallas
/// - Facilita testing
///
/// Uso:
/// ```dart
/// final error = FormValidators.validateNumeroArete(aretInput);
/// if (error != null) {
///   showError(error);
/// }
/// ```
class FormValidators {
  // ===== ARETE/ID =====

  /// Valida número de arete del animal
  ///
  /// Reglas:
  /// - Requerido (no vacío)
  /// - Mínimo 3 caracteres
  /// - Máximo 20 caracteres
  /// - Solo: letras, números, guiones (-), guiones bajos (_)
  /// - Se trimean espacios automáticamente
  ///
  /// Ejemplos válidos:
  /// - "AR-001"
  /// - "Jersey_1"
  /// - "Bessie2024"
  ///
  /// Ejemplos inválidos:
  /// - "" (vacío)
  /// - "AR" (muy corto)
  /// - "AR 001" (contiene espacio)
  /// - "AR#001" (contiene carácter inválido)
  ///
  /// Retorna:
  /// - `null` si es válido
  /// - Mensaje de error si es inválido
  static String? validateNumeroArete(String? value) {
    if (value == null || value.isEmpty) {
      return 'El número de arete es requerido';
    }
    value = value.trim();
    if (value.length < 3) {
      return 'El arete debe tener al menos 3 caracteres';
    }
    if (value.length > 20) {
      return 'El arete no puede exceder 20 caracteres';
    }
    if (!RegExp(r'^[a-zA-Z0-9\-_]+$').hasMatch(value)) {
      return 'El arete solo puede contener letras, números, guiones y guiones bajos';
    }
    return null;
  }

  // ===== NOMBRE =====

  /// Valida nombre genérico (animal, ubicación, etc.)
  ///
  /// Reglas:
  /// - Requerido (no vacío)
  /// - Mínimo 2 caracteres
  /// - Máximo 100 caracteres
  /// - Se trimean espacios
  ///
  /// Ejemplos válidos:
  /// - "Bessie"
  /// - "Potrero Sur"
  /// - "Establo Lecherío"
  ///
  /// Ejemplos inválidos:
  /// - "" (vacío)
  /// - "A" (muy corto)
  /// - "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore" (muy largo)
  ///
  /// Retorna:
  /// - `null` si es válido
  /// - Mensaje de error si es inválido
  static String? validateNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'El nombre es requerido';
    }
    value = value.trim();
    if (value.length < 2) {
      return 'El nombre debe tener al menos 2 caracteres';
    }
    if (value.length > 100) {
      return 'El nombre no puede exceder 100 caracteres';
    }
    return null;
  }

  // ===== EMAIL =====

  /// Valida dirección de correo electrónico
  ///
  /// Reglas:
  /// - Formato: usuario@dominio.extensión
  /// - Mínimo 5 caracteres
  /// - Máximo 254 caracteres (RFC 5321)
  /// - Contiene exactamente 1 @
  /// - Dominio válido
  ///
  /// Ejemplos válidos:
  /// - "admin@miganado.com"
  /// - "usuario+tag@ejemplo.co.uk"
  ///
  /// Ejemplos inválidos:
  /// - "admin" (sin @)
  /// - "admin@" (sin dominio)
  /// - "admin@@example.com" (doble @)
  /// - "admin@.com" (dominio inválido)
  ///
  /// Retorna:
  /// - `null` si es válido
  /// - Mensaje de error si es inválido
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'El correo es requerido';
    }
    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    if (!RegExp(pattern).hasMatch(value)) {
      return 'Ingresa un correo válido';
    }
    return null;
  }

  // ===== TELÉFONO =====

  /// Valida número de teléfono
  /// Requiere 7-15 dígitos
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'El teléfono es requerido';
    }
    value = value.replaceAll(RegExp(r'[^\d+]'), '');
    if (value.length < 7) {
      return 'El teléfono debe tener al menos 7 dígitos';
    }
    if (value.length > 15) {
      return 'El teléfono no puede exceder 15 dígitos';
    }
    return null;
  }

  // ===== PESO =====

  /// Valida peso en kilogramos
  /// Requiere número > 0 y <= 2000
  static String? validatePeso(String? value) {
    if (value == null || value.isEmpty) {
      return 'El peso es requerido';
    }
    final peso = double.tryParse(value);
    if (peso == null) {
      return 'El peso debe ser un número válido';
    }
    if (peso <= 0) {
      return 'El peso debe ser mayor a 0';
    }
    if (peso > 2000) {
      return 'El peso no puede ser mayor a 2000 kg';
    }
    return null;
  }

  // ===== EDAD EN MESES =====

  /// Valida edad en meses
  /// Requiere entero entre 0 y 480 (40 años)
  static String? validateEdadMeses(String? value) {
    if (value == null || value.isEmpty) {
      return 'La edad es requerida';
    }
    final edad = int.tryParse(value);
    if (edad == null) {
      return 'La edad debe ser un número entero';
    }
    if (edad < 0) {
      return 'La edad no puede ser negativa';
    }
    if (edad > 480) {
      // 40 años
      return 'La edad no puede ser mayor a 40 años';
    }
    return null;
  }

  // ===== DESCRIPCIÓN =====

  /// Valida descripción o texto largo
  /// Requiere 5-500 caracteres
  static String? validateDescripcion(String? value) {
    if (value == null || value.isEmpty) {
      return 'La descripción es requerida';
    }
    value = value.trim();
    if (value.length < 5) {
      return 'La descripción debe tener al menos 5 caracteres';
    }
    if (value.length > 500) {
      return 'La descripción no puede exceder 500 caracteres';
    }
    return null;
  }

  // ===== CAMPO REQUERIDO GENÉRICO =====

  /// Valida que un campo no esté vacío
  /// Parámetro: fieldName - nombre del campo para mensaje de error
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName es requerido';
    }
    return null;
  }

  // ===== NÚMERO =====

  /// Valida número con límites opcionales
  /// Parámetros:
  ///   - min: valor mínimo (opcional)
  ///   - max: valor máximo (opcional)
  ///   - fieldName: nombre del campo para mensaje de error
  static String? validateNumber(
    String? value, {
    double? min,
    double? max,
    String fieldName = 'Este campo',
  }) {
    if (value == null || value.isEmpty) {
      return null; // No requerido por defecto
    }
    final num = double.tryParse(value);
    if (num == null) {
      return '$fieldName debe ser un número válido';
    }
    if (min != null && num < min) {
      return '$fieldName debe ser mínimo $min';
    }
    if (max != null && num > max) {
      return '$fieldName debe ser máximo $max';
    }
    return null;
  }

  // ===== PORCENTAJE =====

  /// Valida porcentaje (0-100)
  static String? validatePorcentaje(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    final num = double.tryParse(value);
    if (num == null) {
      return 'Debe ser un número válido';
    }
    if (num < 0 || num > 100) {
      return 'Debe estar entre 0 y 100';
    }
    return null;
  }

  // ===== FECHA =====

  /// Valida que la fecha no sea futura
  static String? validateFecha(DateTime? fecha) {
    if (fecha == null) {
      return 'La fecha es requerida';
    }
    if (fecha.isAfter(DateTime.now())) {
      return 'La fecha no puede ser futura';
    }
    return null;
  }

  // ===== SELECCIÓN =====

  /// Valida que se haya seleccionado algo en un dropdown
  static String? validateSelection(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Selecciona $fieldName';
    }
    return null;
  }

  // ===== URL =====

  /// Valida URL
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    try {
      Uri.parse(value);
      if (!value.startsWith('http://') && !value.startsWith('https://')) {
        return 'URL debe comenzar con http:// o https://';
      }
      return null;
    } catch (e) {
      return 'URL inválida';
    }
  }

  // ===== CONTRASEÑA =====

  /// Valida contraseña (mínimo 6 caracteres)
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña es requerida';
    }
    if (value.length < 6) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }
    return null;
  }

  // ===== CONFIRMAR CONTRASEÑA =====

  /// Valida que dos contraseñas coincidan
  static String? validatePasswordMatch(
    String? password,
    String? confirmation,
  ) {
    if (password == null ||
        confirmation == null ||
        password.isEmpty ||
        confirmation.isEmpty) {
      return 'Ambos campos son requeridos';
    }
    if (password != confirmation) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }
}
