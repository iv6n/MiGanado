import 'package:miganado/core/enums/tipo_mantenimiento.dart';
import 'package:miganado/core/enums/tipo_costo.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';
import 'package:miganado/features/costs/data/models/costo_registro.dart';
import 'package:uuid/uuid.dart';

/// Use Case: Crear mantenimiento y generar automáticamente CostoRegistro asociado
///
/// FLUJO:
/// 1. Recibe datos del mantenimiento (tipo, fecha, costo)
/// 2. Calcula próxima fecha recomendada según tipo
/// 3. Guarda el MantenimientoRegistro
/// 4. SI tiene costo > 0:
///    - Mapea TipoMantenimiento → TipoCosto
///    - Crea CostoRegistro
///    - Vincula con costoRegistroId
/// 5. Retorna tanto el mantenimiento como el costo
class CrearMantenimientoConAutoCosto {
  static const uuid = Uuid();

  /// Crea un mantenimiento y automáticamente genera CostoRegistro si aplica
  ///
  /// Parámetros:
  /// - [animalId]: ID del animal
  /// - [tipo]: Tipo de mantenimiento (vacunación, desparasitante, etc.)
  /// - [descripcion]: Descripción del mantenimiento
  /// - [fecha]: Fecha en que se realizó
  /// - [costo]: Costo del mantenimiento (opcional)
  /// - [notas]: Notas adicionales
  ///
  /// Retorna: Tupla con (MantenimientoRegistro, CostoRegistro?)
  ///
  /// Ejemplo:
  /// ```dart
  /// final useCase = CrearMantenimientoConAutoCosto();
  ///
  /// final result = useCase.call(
  ///   animalId: 'animal-123',
  ///   tipo: TipoMantenimiento.vacunacion,
  ///   descripcion: 'Rabia + Aftosa',
  ///   fecha: DateTime.now(),
  ///   costo: 150000,
  /// );
  ///
  /// print(result.mantenimiento.id);      // UUID del mantenimiento
  /// print(result.costoRegistro?.id);     // UUID del costo (auto-generado)
  /// ```
  ({MantenimientoRegistro mantenimiento, CostoRegistro? costoRegistro}) call({
    required String animalId,
    required TipoMantenimiento tipo,
    required String? descripcion,
    required DateTime fecha,
    double? costo,
    String? notas,
  }) {
    // 1. Calcular próxima fecha recomendada según ciclo del tipo
    final proximaFecha = _calcularProximaFecha(tipo, fecha);

    // 2. Crear MantenimientoRegistro
    final mantenimiento = MantenimientoRegistro(
      id: uuid.v4(),
      animalId: animalId,
      tipo: tipo,
      descripcion: descripcion,
      notas: notas,
      fecha: fecha,
      proximaFechaRecomendada: proximaFecha,
      costo: costo,
      costoRegistroId: null, // Se asignará después si hay costo
      datoEspecifico: null,
      fechaRegistro: DateTime.now(),
    );

    // 3. SI hay costo > 0, crear CostoRegistro y vincular
    CostoRegistro? costoRegistro;
    String? costoId;

    if ((costo ?? 0) > 0) {
      // Mapear TipoMantenimiento → TipoCosto
      final tipoCosto = _mapearTipoCosto(tipo);

      // Crear CostoRegistro
      costoRegistro = CostoRegistro(
        id: uuid.v4(),
        animalId: animalId,
        tipo: tipoCosto,
        descripcion: 'Costo: ${tipo.nombreEspanol}',
        monto: costo!,
        fecha: fecha,
        mantenimientoRelacionadoId: mantenimiento.id, // ⭐ LINK
        notas: notas,
        fechaRegistro: DateTime.now(),
      );

      costoId = costoRegistro.id;

      // Actualizar mantenimiento con costoRegistroId
      // En práctica, el repository se encargará de esto
    }

    return (
      mantenimiento: mantenimiento,
      costoRegistro: costoRegistro,
    );
  }

  /// Calcula la próxima fecha recomendada según el tipo de mantenimiento
  ///
  /// Usa los ciclos definidos en TipoMantenimiento enum
  DateTime _calcularProximaFecha(
    TipoMantenimiento tipo,
    DateTime fechaActual,
  ) {
    final cicloMeses = tipo.cicloMesesRecomendado;
    return fechaActual.add(Duration(days: cicloMeses * 30));
  }

  /// Mapea TipoMantenimiento a TipoCosto
  ///
  /// Reglas:
  /// - Vacunación, Revisión, Curación → Veterinario
  /// - Desparasitante, Vitaminas → Medicamento
  /// - Otros → Otro
  TipoCosto _mapearTipoCosto(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
      case TipoMantenimiento.revision_clinica:
      case TipoMantenimiento.curacion:
        return TipoCosto.veterinario;
      case TipoMantenimiento.desparasitante:
      case TipoMantenimiento.vitaminas:
        return TipoCosto.medicamento;
      case TipoMantenimiento.dentadura:
      case TipoMantenimiento.castracion:
        return TipoCosto.veterinario;
      case TipoMantenimiento.otro:
        return TipoCosto.otro;
    }
  }

  /// Crea mantenimiento SIN costo
  /// Útil para revisiones que no tienen costo directo
  MantenimientoRegistro crearSinCosto({
    required String animalId,
    required TipoMantenimiento tipo,
    required String? descripcion,
    required DateTime fecha,
  }) {
    final proximaFecha = _calcularProximaFecha(tipo, fecha);

    return MantenimientoRegistro(
      id: uuid.v4(),
      animalId: animalId,
      tipo: tipo,
      descripcion: descripcion,
      fecha: fecha,
      proximaFechaRecomendada: proximaFecha,
      costo: null,
      costoRegistroId: null,
      datoEspecifico: null,
      fechaRegistro: DateTime.now(),
    );
  }

  /// Valida que los datos sean válidos antes de crear
  ({bool valido, String mensaje}) validar({
    required String animalId,
    required TipoMantenimiento tipo,
    required DateTime fecha,
  }) {
    if (animalId.isEmpty) {
      return (valido: false, mensaje: 'Animal ID no puede estar vacío');
    }

    if (fecha.isAfter(DateTime.now().add(Duration(days: 1)))) {
      return (valido: false, mensaje: 'Fecha no puede estar en el futuro');
    }

    return (valido: true, mensaje: 'Válido');
  }

  /// Estima el costo típico según tipo de mantenimiento
  ///
  /// Retorna el costo promedio aproximado
  /// (En producción, estos valores vendrían de configuración)
  double estimarCostoTipico(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
        return 150000; // COP
      case TipoMantenimiento.desparasitante:
        return 80000;
      case TipoMantenimiento.vitaminas:
        return 120000;
      case TipoMantenimiento.revision_clinica:
        return 100000;
      case TipoMantenimiento.curacion:
        return 200000;
      case TipoMantenimiento.dentadura:
        return 250000;
      case TipoMantenimiento.castracion:
        return 500000;
      case TipoMantenimiento.otro:
        return 0;
    }
  }
}
