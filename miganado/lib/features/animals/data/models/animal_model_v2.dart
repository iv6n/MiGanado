import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/core/enums/index.dart';
import 'package:miganado/features/animals/data/models/peso_registro.dart';
import 'package:miganado/features/animals/data/models/mantenimiento_registro.dart';

part 'animal_model_v2.g.dart';

/// Modelo principal del Animal
/// Entidad central de la aplicación - representa un animal del rebaño
///
/// REGLAS DE NEGOCIO:
/// 1. No existe "becerrón/becerrona" - < 12 meses: Becerro(M) o Becerra(H)
/// 2. Fecha de nacimiento es OPCIONAL - si no hay fecha, animal VA INICIANDO esa etapa
/// 3. Si no hay fecha, se debe registrar metodoEdad = simulada_por_categoria
/// 4. Categoría se calcula automáticamente según sexo + edad
/// 5. Todos los costos se registran en historialCostos
@HiveType(typeId: 0)
class AnimalModel {
  // ============================================
  // IDENTIFICACIÓN
  // ============================================

  /// Identificador único (UUID)
  @HiveField(0)
  final String id;

  /// Identificador visible único
  /// Puede ser: número de arete, nombre, o código del ganadero
  /// Ej: "1543", "Blanquita", "GAD-001"
  @HiveField(1)
  final String identificadorVisible;

  /// Sexo del animal (Macho / Hembra)
  @HiveField(2)
  final Sexo sexo;

  /// Número de arete (para bovinos, obligatorio según regulaciones)
  /// NULL si el animal no requiere arete
  @HiveField(3)
  final String? numeroArete;

  /// Nombre personalizado del animal (opcional, ej: "Blanquita", "Lucero")
  @HiveField(4)
  final String? nombrePersonalizado;

  /// Raza del animal (ej: "Holstein", "Brahman", "Criolla")
  @HiveField(5)
  final String? raza;

  // ============================================
  // CATEGORIZACIÓN
  // ============================================

  /// Categoría automáticamente calculada
  /// Ej: "Vaca", "Becerra", "Novillo", "Toro"
  /// Se calcula según sexo + edadMesesCalculada
  /// Ver: calculateCategoriaAutomatica()
  @HiveField(6)
  final String categoriaAutomatica;

  /// Categoría inicialmente seleccionada por el ganadero
  /// Solo se usa cuando no hay fechaNacimiento (metodoEdad = simulada_por_categoria)
  /// Ej: "Novillo" - representa la etapa en la que "comienza" el animal
  @HiveField(7)
  final String? categoriaInicialSeleccionada;

  /// Estado reproductivo (para hembras)
  /// Ej: Prenada, Lactando, Seca, No definido
  @HiveField(8)
  final EstadoReproductivo estadoReproductivo;

  // ============================================
  // EDAD Y EVOLUCIÓN
  // ============================================

  /// Fecha de nacimiento del animal (OPCIONAL)
  /// NULL si no se conoce la fecha exacta
  /// En ese caso, el animal "comienza" en la etapa seleccionada
  @HiveField(9)
  final DateTime? fechaNacimiento;

  /// Método utilizado para determinar la edad
  /// - exacta_por_fecha_nacimiento: Tenemos fecha
  /// - simulada_por_categoria: No tenemos fecha, calculamos desde etapa
  /// - estimada_por_peso: Futuro - inferir por peso
  @HiveField(10)
  final MetodoEdad metodoEdad;

  /// Edad calculada en meses (DERIVADA, recalcular en get)
  /// Se calcula según metodoEdad
  @HiveField(11)
  final int? edadMesesCachedValue;

  /// Fecha en que el animal INICIÓ esta etapa actual
  /// Solo se usa si metodoEdad = simulada_por_categoria
  /// Para animales con fecha de nacimiento, calcular desde esa fecha
  @HiveField(12)
  final DateTime fechaInicioEtapa;

  /// Tipo de ganado (enum, para compatibilidad)
  /// NOTA: categoriaAutomatica es más precisa - este campo es para filtros rápidos
  @HiveField(13)
  final TipoGanado tipo;

  // ============================================
  // DATOS PRODUCTIVOS
  // ============================================

  /// Peso actual del animal en kg
  /// Último peso registrado
  /// NULL si no hay pesajes aún
  @HiveField(14)
  final double? pesoActual;

  /// Peso inicial del animal en kg
  /// Se registra en el primer pesaje o al crear el animal
  /// Usado para calcular: ganancia de peso, costo/kg ganado
  @HiveField(15)
  final double? pesoInicial;

  /// Historial completo de pesajes
  /// Todos los pesajes del animal en orden cronológico
  /// Lista que crece con cada nuevo pesaje
  @HiveField(16)
  final List<PesoRegistro> historialPesos;

  /// Observaciones generales del animal
  @HiveField(17)
  final String? observaciones;

  // ============================================
  // DATOS REPRODUCTIVOS (para hembras)
  // ============================================

  /// Cantidad de partos que ha tenido
  @HiveField(18)
  final int partos;

  /// Fecha del último parto
  @HiveField(19)
  final DateTime? fechaUltimoParot;

  /// Cantidad de empadres que ha tenido
  @HiveField(20)
  final int empadres;

  /// Fecha del último empadre
  @HiveField(21)
  final DateTime? fechaUltimoEmpadre;

  // ============================================
  // DATOS SANITARIOS
  // ============================================

  /// Historial completo de mantenimientos
  /// Vacunaciones, desparasitaciones, revisiones, curaciones, etc.
  /// Cada evento tiene tipo, fecha, costo opcional, próxima fecha recomendada
  @HiveField(22)
  final List<MantenimientoRegistro> historialMantenimientos;

  /// Lista de alertas sanitarias activas
  /// "Vacuna vencida", "Desparasitación próxima", etc.
  /// Se calcula automáticamente
  @HiveField(23)
  final List<String> alertasSanitarias;

  // ============================================
  // DATOS FINANCIEROS (OBLIGATORIO)
  // ============================================

  /// Costo de compra inicial del animal
  /// Primer costo registrado
  /// NULL si el animal es criado en la finca
  @HiveField(24)
  final double? costoCompraInicial;

  /// Historial completo de costos
  /// Todos los gastos asociados: veterinario, alimento, medicamentos, equipo, etc.
  /// NOTA: No incluye costoCompraInicial - ese se suma por separado
  /// Ver: costoTotalAcumulado (getter que suma ambos)
  @HiveField(25)
  final List<String> historialCostosIds; // IDs de CostoRegistro en la BD

  /// Costo total acumulado (CALCULADO)
  /// = costoCompraInicial + sum(historialCostos)
  /// NO se almacena, se calcula en el getter
  // No se almacena en Hive, se calcula

  /// Costo promedio mensual (CALCULADO)
  /// = costoTotalAcumulado / mesesDesdeCreacion
  // No se almacena, se calcula

  // ============================================
  // AUDITORÍA
  // ============================================

  /// Fecha de registro en el sistema
  @HiveField(26)
  final DateTime fechaRegistro;

  /// Fecha de última actualización
  @HiveField(27)
  final DateTime ultimaActualizacion;

  /// ID de la ubicación donde está el animal (referencia)
  @HiveField(28)
  final String? ubicacionId;

  /// ID de la madre (para animales nacidos en la finca)
  @HiveField(29)
  final String? madreId;

  /// Ruta a la foto del animal (local o URL)
  @HiveField(30)
  final String? fotoPath;

  /// Notas adicionales del ganadero
  @HiveField(31)
  final String? notas;

  // ============================================
  // CONSTRUCTOR
  // ============================================

  AnimalModel({
    String? id,
    required this.identificadorVisible,
    required this.sexo,
    this.numeroArete,
    this.nombrePersonalizado,
    this.raza,
    required this.categoriaAutomatica,
    this.categoriaInicialSeleccionada,
    this.estadoReproductivo = EstadoReproductivo.no_definido,
    this.fechaNacimiento,
    required this.metodoEdad,
    int? edadMesesCachedValue,
    required this.fechaInicioEtapa,
    required this.tipo,
    this.pesoActual,
    this.pesoInicial,
    List<PesoRegistro>? historialPesos,
    this.observaciones,
    this.partos = 0,
    this.fechaUltimoParot,
    this.empadres = 0,
    this.fechaUltimoEmpadre,
    List<MantenimientoRegistro>? historialMantenimientos,
    List<String>? alertasSanitarias,
    this.costoCompraInicial,
    List<String>? historialCostosIds,
    DateTime? fechaRegistro,
    DateTime? ultimaActualizacion,
    this.ubicacionId,
    this.madreId,
    this.fotoPath,
    this.notas,
  })  : id = id ?? const Uuid().v4(),
        historialPesos = historialPesos ?? [],
        historialMantenimientos = historialMantenimientos ?? [],
        alertasSanitarias = alertasSanitarias ?? [],
        historialCostosIds = historialCostosIds ?? [],
        edadMesesCachedValue = edadMesesCachedValue,
        fechaRegistro = fechaRegistro ?? DateTime.now(),
        ultimaActualizacion = ultimaActualizacion ?? DateTime.now();

  // ============================================
  // GETTERS CALCULADOS (Lógica de Negocio)
  // ============================================

  /// Edad en meses calculada según el método de edad
  int get edadMesesCalculada {
    switch (metodoEdad) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        if (fechaNacimiento == null) return 0;
        return DateTime.now().difference(fechaNacimiento!).inDays ~/ 30;

      case MetodoEdad.simulada_por_categoria:
        return DateTime.now().difference(fechaInicioEtapa).inDays ~/ 30;

      case MetodoEdad.estimada_por_peso:
        // Futuro: implementar lógica de peso
        return 0;
    }
  }

  /// Peso ganado desde el inicio
  double? get pesoGanado {
    if (pesoActual == null || pesoInicial == null) return null;
    return pesoActual! - pesoInicial!;
  }

  /// Indica si hay historial de pesajes
  bool get tienePesajes {
    return historialPesos.isNotEmpty;
  }

  /// Indica si hay historial de mantenimientos
  bool get tieneMantenimientos {
    return historialMantenimientos.isNotEmpty;
  }

  /// Próximo mantenimiento vencido o próximo
  MantenimientoRegistro? get proximoMantenimientoVencido {
    try {
      return historialMantenimientos.where((m) => m.estaVencido).first;
    } catch (e) {
      return null;
    }
  }

  /// Próximo mantenimiento a vencer (en 30 días)
  MantenimientoRegistro? get proximoMantenimientoProximo {
    try {
      return historialMantenimientos
          .where((m) => m.estaProximo && !m.estaVencido)
          .first;
    } catch (e) {
      return null;
    }
  }

  /// Meses desde que se registró el animal
  int get mesesDesdeRegistro {
    return DateTime.now().difference(fechaRegistro).inDays ~/ 30;
  }

  /// Descripción resumida del animal
  String get descripcionResumida {
    final identificador =
        nombrePersonalizado ?? numeroArete ?? identificadorVisible;
    return '$categoriaAutomatica - $identificador';
  }

  // ============================================
  // COPYWITH
  // ============================================

  /// Copia con campos opcionales actualizados
  AnimalModel copyWith({
    String? id,
    String? identificadorVisible,
    Sexo? sexo,
    String? numeroArete,
    String? nombrePersonalizado,
    String? raza,
    String? categoriaAutomatica,
    String? categoriaInicialSeleccionada,
    EstadoReproductivo? estadoReproductivo,
    DateTime? fechaNacimiento,
    MetodoEdad? metodoEdad,
    int? edadMesesCachedValue,
    DateTime? fechaInicioEtapa,
    TipoGanado? tipo,
    double? pesoActual,
    double? pesoInicial,
    List<PesoRegistro>? historialPesos,
    String? observaciones,
    int? partos,
    DateTime? fechaUltimoParot,
    int? empadres,
    DateTime? fechaUltimoEmpadre,
    List<MantenimientoRegistro>? historialMantenimientos,
    List<String>? alertasSanitarias,
    double? costoCompraInicial,
    List<String>? historialCostosIds,
    DateTime? ultimaActualizacion,
    String? ubicacionId,
    String? madreId,
    String? fotoPath,
    String? notas,
  }) {
    return AnimalModel(
      id: id ?? this.id,
      identificadorVisible: identificadorVisible ?? this.identificadorVisible,
      sexo: sexo ?? this.sexo,
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      raza: raza ?? this.raza,
      categoriaAutomatica: categoriaAutomatica ?? this.categoriaAutomatica,
      categoriaInicialSeleccionada:
          categoriaInicialSeleccionada ?? this.categoriaInicialSeleccionada,
      estadoReproductivo: estadoReproductivo ?? this.estadoReproductivo,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      metodoEdad: metodoEdad ?? this.metodoEdad,
      edadMesesCachedValue: edadMesesCachedValue ?? this.edadMesesCachedValue,
      fechaInicioEtapa: fechaInicioEtapa ?? this.fechaInicioEtapa,
      tipo: tipo ?? this.tipo,
      pesoActual: pesoActual ?? this.pesoActual,
      pesoInicial: pesoInicial ?? this.pesoInicial,
      historialPesos: historialPesos ?? this.historialPesos,
      observaciones: observaciones ?? this.observaciones,
      partos: partos ?? this.partos,
      fechaUltimoParot: fechaUltimoParot ?? this.fechaUltimoParot,
      empadres: empadres ?? this.empadres,
      fechaUltimoEmpadre: fechaUltimoEmpadre ?? this.fechaUltimoEmpadre,
      historialMantenimientos:
          historialMantenimientos ?? this.historialMantenimientos,
      alertasSanitarias: alertasSanitarias ?? this.alertasSanitarias,
      costoCompraInicial: costoCompraInicial ?? this.costoCompraInicial,
      historialCostosIds: historialCostosIds ?? this.historialCostosIds,
      fechaRegistro: this.fechaRegistro,
      ultimaActualizacion: ultimaActualizacion ?? DateTime.now(),
      ubicacionId: ubicacionId ?? this.ubicacionId,
      madreId: madreId ?? this.madreId,
      fotoPath: fotoPath ?? this.fotoPath,
      notas: notas ?? this.notas,
    );
  }

  @override
  String toString() =>
      'AnimalModel(id: $id, identificador: $identificadorVisible, categoria: $categoriaAutomatica)';
}
