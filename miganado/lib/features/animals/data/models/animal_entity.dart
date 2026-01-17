import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

part 'animal_entity.g.dart';

/// Especies disponibles
enum Especie {
  bovino,
  equino,
}

/// Categoría adulta (siempre representa el adulto)
enum Categoria {
  vaca, // Bovino
  caballo,
  burro,
  mula,
}

/// Etapa de vida
enum EtapaVida {
  becerro,
  becerra,
  vaquilla,
  torete,
  novillo,
  vaca,
  toro,
  potro,
  adulto,
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
  @enumerated
  late Categoria categoria;

  /// Etapa de vida (se calcula automáticamente)
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
    // Nota: etapa se calcula automáticamente basada en especie, sexo, edad y castración
    EtapaVida? etapaManual,
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
    // SIEMPRE calcular etapa automáticamente basada en los parámetros
    // El parámetro etapaManual se ignora - la etapa siempre se deduce
    etapa = calcularEtapa();
  }

  /// Lógica automática para calcular etapa
  EtapaVida calcularEtapa() {
    if (especie == Especie.bovino) {
      if (edadMeses < 12) {
        return sexo == Sexo.macho ? EtapaVida.becerro : EtapaVida.becerra;
      } else if (edadMeses < 24) {
        if (sexo == Sexo.hembra) return EtapaVida.vaquilla;
        if (sexo == Sexo.macho && !esCastrado) return EtapaVida.torete;
        if (sexo == Sexo.macho && esCastrado) return EtapaVida.novillo;
      } else {
        if (sexo == Sexo.hembra) return EtapaVida.vaca;
        if (sexo == Sexo.macho) return EtapaVida.toro;
      }
    } else if (especie == Especie.equino) {
      if (edadMeses < 36) {
        return EtapaVida.potro;
      } else {
        return EtapaVida.adulto;
      }
    }
    return etapa; // fallback
  }

  /// Propiedades computadas para UI
  String get etapaDescripcion => etapa.descripcion;

  String get etapaIcon => etapa.assetIcon;

  String get categoriaDescripcion => categoria.descripcion;

  String get categoriaIcon => categoria.assetIcon;

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
    final newSexo = sexo ?? this.sexo;
    final newEdadMeses = edadMeses ?? this.edadMeses;
    final newEsCastrado = esCastrado ?? this.esCastrado;
    // Nota: etapa se calcula automáticamente basada en los nuevos parámetros
    return AnimalEntity(
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      especie: especie ?? this.especie,
      categoria: categoria ?? this.categoria,
      sexo: newSexo,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      edadMeses: newEdadMeses,
      esCastrado: newEsCastrado,
      // etapa NO se pasa - se calcula automáticamente en el constructor
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
      ..hashContenido = this.hashContenido;
  }
}
