import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

part 'animal_entity.g.dart';

/// Especies disponibles
enum Especie {
  bovino,
  equino,
}

/// Categoría adulta (siempre representa el adulto - NO cambia con edad)
/// Representa QUÉ TIPO de animal es, no su fase de desarrollo
enum Categoria {
  vaca, // Bovino (cualquier edad/sexo)
  caballo, // Equino - Caballo
  burro, // Equino - Burro
  mula, // Equino - Mula
}

/// Etapa de vida (fase de desarrollo - SÍ cambia con edad)
enum EtapaVida {
  becerro, // Bovino macho < 12 meses
  becerra, // Bovino hembra < 12 meses
  vaquilla, // Bovino hembra 12-24 meses
  torete, // Bovino macho 12-24 meses (no castrado)
  novillo, // Bovino macho 12-24 meses (castrado)
  vaca, // Bovino hembra >= 24 meses
  toro, // Bovino macho >= 24 meses
  potro, // Equino < 36 meses
  adulto, // Equino >= 36 meses
}

/// Sexo del animal
enum Sexo {
  macho,
  hembra,
}

/// Estado reproductivo de la hembra
enum EstadoReproductivo {
  prenada,
  lactando,
  seca,
  no_definido,
}

/// Entidad de Animal para Isar
@collection
class AnimalEntity {
  /// Identificador único (UUID) - Clave primaria
  Id id = Isar.autoIncrement;

  /// UUID del animal para sincronización
  @Index(unique: true)
  late String uuid;

  /// Número de arete
  @Index()
  late String numeroArete;

  /// Nombre personalizado del animal
  String? nombrePersonalizado;

  /// Especie del animal
  @enumerated
  late Especie especie;

  /// Categoría adulta (no cambia por edad ni sexo)
  /// Representa QUÉ TIPO de animal es (vaca, caballo, burro, mula)
  @enumerated
  late Categoria categoria;

  /// Etapa de vida (se calcula automáticamente basada en edad, sexo y castración)
  /// Representa la FASE DE DESARROLLO del animal
  @enumerated
  late EtapaVida etapa;

  /// Sexo
  @enumerated
  late Sexo sexo;

  /// Edad en meses
  late int edadMeses;

  /// Es castrado (solo aplica a machos bovinos)
  bool esCastrado = false;

  /// Raza del animal
  late String raza;

  /// Fecha de nacimiento
  late DateTime fechaNacimiento;

  /// Notas generales del animal
  String? notas;

  /// Precio de compra
  double? precioCompra;

  /// Precio de venta
  double? precioVenta;

  /// Vacunado
  bool vacunado = false;

  /// Fecha de última vacunación
  DateTime? fechaUltimaVacuna;

  /// Tipo de vacuna
  String? tipoVacuna;

  /// Desparasitado
  bool desparasitado = false;

  /// Fecha del último desparasitante
  DateTime? fechaUltimoDesparasitante;

  /// Tipo de desparasitante
  String? tipoDesparasitante;

  /// Tiene vitaminas
  bool tieneVitaminas = false;

  /// Fecha de última aplicación de vitaminas
  DateTime? fechaVitaminas;

  /// Estado reproductivo
  @enumerated
  EstadoReproductivo estadoReproductivo = EstadoReproductivo.no_definido;

  /// Ubicación actual del animal
  String? ubicacion;

  /// Observaciones personalizadas del animal
  String? observaciones;

  /// Peso actual del animal (kg)
  double? pesoActual;

  /// Fecha del último pesaje
  DateTime? fechaUltimoPesaje;

  /// Fecha de creación
  late DateTime fechaCreacion;

  /// Fecha de última actualización
  late DateTime fechaActualizacion;

  /// Sincronizado con servidor
  bool sincronizado = false;

  /// ID remoto (para sincronización)
  String? idRemoto;

  /// Campos de auditoría para sincronización
  DateTime? fechaSincronizacion;
  String? hashContenido;

  AnimalEntity({
    required this.numeroArete,
    this.nombrePersonalizado,
    required this.especie,
    required this.categoria,
    required this.sexo,
    required this.raza,
    required this.fechaNacimiento,
    required this.edadMeses,
    this.esCastrado = false,
    this.notas,
    this.precioCompra,
    this.precioVenta,
    this.vacunado = false,
    this.fechaUltimaVacuna,
    this.tipoVacuna,
    this.desparasitado = false,
    this.fechaUltimoDesparasitante,
    this.tipoDesparasitante,
    this.tieneVitaminas = false,
    this.fechaVitaminas,
    this.estadoReproductivo = EstadoReproductivo.no_definido,
    this.ubicacion,
  }) {
    uuid = const Uuid().v4();
    fechaCreacion = DateTime.now();
    fechaActualizacion = DateTime.now();

    // Validar compatibilidad especie-categoría
    _validarEspecieCategoria(especie, categoria);

    // SIEMPRE calcular etapa automáticamente basada en los parámetros
    etapa = calcularEtapa();
  }

  /// Validar que la categoría sea compatible con la especie
  void _validarEspecieCategoria(Especie especie, Categoria categoria) {
    if (especie == Especie.bovino && categoria != Categoria.vaca) {
      throw ArgumentError('Para especie Bovino, la categoría debe ser "vaca". '
          'Recibido: $categoria');
    }

    if (especie == Especie.equino && categoria == Categoria.vaca) {
      throw ArgumentError(
          'Para especie Equino, la categoría debe ser caballo, burro o mula. '
          'No puede ser "vaca"');
    }
  }

  /// Lógica automática para calcular etapa de vida
  ///
  /// REGLAS DE NEGOCIO:
  ///
  /// BOVINOS:
  /// - < 12 meses: Becerro (macho) / Becerra (hembra)
  /// - 12-24 meses:
  ///   * Hembra: Vaquilla
  ///   * Macho no castrado: Torete
  ///   * Macho castrado: Novillo
  /// - >= 24 meses: Vaca (hembra) / Toro (macho)
  ///
  /// EQUINOS:
  /// - < 36 meses: Potro
  /// - >= 36 meses: Adulto
  EtapaVida calcularEtapa() {
    if (especie == Especie.bovino) {
      // Bovinos: lógica por edad, sexo y castración
      if (edadMeses < 12) {
        return sexo == Sexo.macho ? EtapaVida.becerro : EtapaVida.becerra;
      } else if (edadMeses < 24) {
        if (sexo == Sexo.hembra) {
          return EtapaVida.vaquilla;
        }
        // Machos entre 12-24 meses
        if (esCastrado) {
          return EtapaVida.novillo;
        } else {
          return EtapaVida.torete;
        }
      } else {
        // >= 24 meses
        return sexo == Sexo.hembra ? EtapaVida.vaca : EtapaVida.toro;
      }
    } else if (especie == Especie.equino) {
      // Equinos: lógica simple por edad
      return edadMeses < 36 ? EtapaVida.potro : EtapaVida.adulto;
    }

    // Fallback: no debería llegar aquí si las validaciones funcionan
    throw StateError('Especie no reconocida: $especie');
  }

  /// Propiedades computadas para UI
  String get etapaDescripcion => etapa.descripcion;

  String get etapaIcon => etapa.assetIcon;

  String get categoriaDescripcion => categoria.descripcion;

  String get categoriaIcon => categoria.assetIcon;

  /// Validar que los datos del animal sean consistentes
  /// Útil antes de guardar o actualizar
  bool validarConsistencia() {
    // Validar especie-categoría
    if (especie == Especie.bovino && categoria != Categoria.vaca) {
      return false;
    }
    if (especie == Especie.equino && categoria == Categoria.vaca) {
      return false;
    }

    // Validar castración (solo machos bovinos)
    if (esCastrado && (sexo != Sexo.macho || especie != Especie.bovino)) {
      return false;
    }

    // Validar edad no negativa
    if (edadMeses < 0) {
      return false;
    }

    // Validar fecha de nacimiento no futura
    if (fechaNacimiento.isAfter(DateTime.now())) {
      return false;
    }

    return true;
  }

  /// Recalcular edad en meses basada en fecha de nacimiento
  /// Útil para actualizaciones periódicas
  int recalcularEdadMeses() {
    final ahora = DateTime.now();
    int meses = (ahora.year - fechaNacimiento.year) * 12;
    meses += ahora.month - fechaNacimiento.month;

    // Ajustar si el día aún no ha llegado
    if (ahora.day < fechaNacimiento.day) {
      meses--;
    }

    return meses.clamp(0, 9999);
  }

  /// Actualizar edad y recalcular etapa
  /// Retorna true si la etapa cambió
  bool actualizarEdadYEtapa() {
    final edadAnterior = edadMeses;
    final etapaAnterior = etapa;

    edadMeses = recalcularEdadMeses();
    etapa = calcularEtapa();
    fechaActualizacion = DateTime.now();

    return etapaAnterior != etapa || edadAnterior != edadMeses;
  }

  /// Crear una copia del animal
  AnimalEntity copyWith({
    String? uuid,
    String? numeroArete,
    Especie? especie,
    Categoria? categoria,
    Sexo? sexo,
    String? raza,
    DateTime? fechaNacimiento,
    int? edadMeses,
    bool? esCastrado,
    String? nombrePersonalizado,
    String? notas,
    double? precioCompra,
    double? precioVenta,
    bool? vacunado,
    DateTime? fechaUltimaVacuna,
    String? tipoVacuna,
    bool? desparasitado,
    DateTime? fechaUltimoDesparasitante,
    String? tipoDesparasitante,
    bool? tieneVitaminas,
    DateTime? fechaVitaminas,
    EstadoReproductivo? estadoReproductivo,
    String? ubicacion,
    bool? sincronizado,
    String? idRemoto,
  }) {
    final nuevaEspecie = especie ?? this.especie;
    final nuevaCategoria = categoria ?? this.categoria;
    final nuevoSexo = sexo ?? this.sexo;
    final nuevaEdadMeses = edadMeses ?? this.edadMeses;
    final nuevoCastrado = esCastrado ?? this.esCastrado;

    // Crear nueva entidad con parámetros actualizados
    // La etapa se recalcula automáticamente en el constructor
    return AnimalEntity(
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      especie: nuevaEspecie,
      categoria: nuevaCategoria,
      sexo: nuevoSexo,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      edadMeses: nuevaEdadMeses,
      esCastrado: nuevoCastrado,
      notas: notas ?? this.notas,
      precioCompra: precioCompra ?? this.precioCompra,
      precioVenta: precioVenta ?? this.precioVenta,
      vacunado: vacunado ?? this.vacunado,
      fechaUltimaVacuna: fechaUltimaVacuna ?? this.fechaUltimaVacuna,
      tipoVacuna: tipoVacuna ?? this.tipoVacuna,
      desparasitado: desparasitado ?? this.desparasitado,
      fechaUltimoDesparasitante:
          fechaUltimoDesparasitante ?? this.fechaUltimoDesparasitante,
      tipoDesparasitante: tipoDesparasitante ?? this.tipoDesparasitante,
      tieneVitaminas: tieneVitaminas ?? this.tieneVitaminas,
      fechaVitaminas: fechaVitaminas ?? this.fechaVitaminas,
      estadoReproductivo: estadoReproductivo ?? this.estadoReproductivo,
      ubicacion: ubicacion ?? this.ubicacion,
    )
      ..id = this.id
      ..uuid = uuid ?? this.uuid
      ..fechaCreacion = this.fechaCreacion
      ..fechaActualizacion = DateTime.now()
      ..sincronizado = sincronizado ?? this.sincronizado
      ..idRemoto = idRemoto ?? this.idRemoto
      ..fechaSincronizacion = this.fechaSincronizacion
      ..hashContenido = this.hashContenido
      ..observaciones = this.observaciones;
  }
}
