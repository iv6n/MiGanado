import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'lote_ganadero_entity.g.dart';

/// Especie del lote
enum EspecieLote {
  bovino,
  equino,
  ovino,
  caprino,
}

/// Tipo de producción del lote
enum TipoProduccion {
  carne,
  leche,
  doble,
  reproduccion,
  engorde,
  levante,
}

/// Entidad de Lote Ganadero para Isar
/// Agrupa múltiples animales de características similares
@collection
class LoteGanaderoEntity {
  /// Identificador único auto-incrementado
  Id id = Isar.autoIncrement;

  /// UUID único para sincronización
  @Index(unique: true)
  late String? uuid;

  /// Nombre del lote (ej: "Lote A - Lecherías", "Lote 5 - Terneros")
  @Index()
  late String nombre;

  /// Descripción detallada del lote
  String? descripcion;

  /// Especie principal del lote
  @enumerated
  late EspecieLote especie;

  /// Tipo de producción
  @enumerated
  late TipoProduccion tipoProduccion;

  /// Cantidad total de animales en el lote
  late int cantidadAnimales;

  /// Edad promedio en meses
  int? edadPromedioMeses;

  /// Raza predominante
  String? razaPredominante;

  /// IDs de animales que pertenecen al lote (relación)
  final List<String> animalIds = [];

  /// ID de la ubicación principal del lote (potrero, corral, etc)
  String? ubicacionId;

  /// Peso promedio en kg
  double? pesoPromedio;

  /// Peso mínimo de animales en el lote
  double? pesoMinimo;

  /// Peso máximo de animales en el lote
  double? pesoMaximo;

  /// Producción diaria promedio (leche en lt, carne en kg, etc)
  double? produccionDiaria;

  /// Unidad de producción (litros, kg, etc)
  String? unidadProduccion;

  /// Fecha de inicio del lote
  DateTime? fechaCreacion;

  /// Fecha de cierre del lote (null si sigue activo)
  DateTime? fechaCierre;

  /// ¿Está activo el lote?
  bool activo = true;

  /// Datos específicos del lote (JSON flexible)
  /// Ej: {"condicion_corporal": "3.5", "tasa_preñez": "85%"}
  /// NOTA: Isar no soporta Map dinámicos, usar String JSON serializado
  String? datosEspecificosJson;

  /// Etiquetas para categorización
  final List<String> etiquetas = [];

  /// Notas generales del lote
  String? notas;

  /// Responsable del lote
  String? responsable;

  /// Objetivo de producción/ganancia esperada
  String? objetivo;

  /// Historial de cambios en composición o características
  final List<IsarCambioLote> historicoCambios = [];

  /// Fecha de creación del registro
  DateTime? fechaRegistro;

  /// Fecha de última actualización
  DateTime? fechaActualizacion;

  /// Usuario que creó el lote
  String? usuarioCreacion;

  /// Usuario que última vez editó el lote
  String? usuarioActualizacion;

  /// Constructor
  LoteGanaderoEntity({
    String? uuid,
    required this.nombre,
    this.descripcion,
    required this.especie,
    required this.tipoProduccion,
    required this.cantidadAnimales,
    this.edadPromedioMeses,
    this.razaPredominante,
    this.ubicacionId,
    this.pesoPromedio,
    this.pesoMinimo,
    this.pesoMaximo,
    this.produccionDiaria,
    this.unidadProduccion,
    DateTime? fechaCreacion,
    this.fechaCierre,
    this.activo = true,
    this.datosEspecificosJson,
    this.notas,
    this.responsable,
    this.objetivo,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
    this.usuarioCreacion,
    this.usuarioActualizacion,
  }) {
    this.uuid = uuid ?? const Uuid().v4();
    this.fechaCreacion = fechaCreacion ?? DateTime.now();
    this.fechaRegistro = fechaRegistro ?? DateTime.now();
    this.fechaActualizacion = fechaActualizacion ?? DateTime.now();
  }

  /// Agregar animal al lote
  void agregarAnimal(String animalId) {
    if (!animalIds.contains(animalId)) {
      animalIds.add(animalId);
      cantidadAnimales++;
      registrarCambio(
        concepto: 'Adición de animal',
        descripcion: 'Animal $animalId agregado al lote',
      );
    }
  }

  /// Remover animal del lote
  void removerAnimal(String animalId) {
    if (animalIds.remove(animalId)) {
      cantidadAnimales--;
      registrarCambio(
        concepto: 'Remoción de animal',
        descripcion: 'Animal $animalId removido del lote',
      );
    }
  }

  /// Registrar cambio en el lote
  void registrarCambio({
    required String concepto,
    required String descripcion,
    String? motivo,
  }) {
    historicoCambios.add(
      IsarCambioLote(
        concepto: concepto,
        descripcion: descripcion,
        motivo: motivo,
        fecha: DateTime.now(),
      ),
    );
    fechaActualizacion = DateTime.now();
  }

  /// Cerrar el lote
  void cerrar({String? motivo}) {
    activo = false;
    fechaCierre = DateTime.now();
    registrarCambio(
      concepto: 'Cierre del lote',
      descripcion: 'Lote cerrado',
      motivo: motivo,
    );
  }

  /// Reabrir lote cerrado
  void reabrir() {
    activo = true;
    fechaCierre = null;
    registrarCambio(
      concepto: 'Reapertura del lote',
      descripcion: 'Lote reabierto',
    );
  }

  /// Obtener nombre de especie legible
  String get nombreEspecie {
    switch (especie) {
      case EspecieLote.bovino:
        return 'Bovino';
      case EspecieLote.equino:
        return 'Equino';
      case EspecieLote.ovino:
        return 'Ovino';
      case EspecieLote.caprino:
        return 'Caprino';
    }
  }

  /// Obtener nombre de tipo de producción
  String get nombreProduccion {
    switch (tipoProduccion) {
      case TipoProduccion.carne:
        return 'Carne';
      case TipoProduccion.leche:
        return 'Leche';
      case TipoProduccion.doble:
        return 'Doble Propósito';
      case TipoProduccion.reproduccion:
        return 'Reproducción';
      case TipoProduccion.engorde:
        return 'Engorde';
      case TipoProduccion.levante:
        return 'Levante';
    }
  }

  /// ¿Es lote activo?
  bool get estaActivo => activo && fechaCierre == null;

  @override
  String toString() =>
      'LoteGanadero($uuid | $nombre | $cantidadAnimales ${nombreEspecie}s)';
}

/// Embedded class para historial de cambios en lotes
@embedded
class IsarCambioLote {
  /// Concepto del cambio (Adición, remoción, actualización, etc)
  late String concepto;

  /// Descripción detallada del cambio
  late String descripcion;

  /// Motivo del cambio (opcional)
  String? motivo;

  /// Fecha del cambio
  DateTime? fecha;

  IsarCambioLote({
    this.concepto = '',
    this.descripcion = '',
    this.motivo,
    DateTime? fecha,
  }) {
    this.fecha = fecha ?? DateTime.now();
  }

  @override
  String toString() =>
      'CambioLote($concepto - $descripcion en ${fecha.toString()})';
}
