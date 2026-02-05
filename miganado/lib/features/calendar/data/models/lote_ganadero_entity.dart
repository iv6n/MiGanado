import 'package:isar/isar.dart';

part 'lote_ganadero_entity.g.dart';

/// Species of the lot
enum LotSpecies {
  cattle,
  equine,
  ovine,
  caprine,
}

/// Production type of the lot
enum ProductionType {
  meat,
  milk,
  dual,
  breeding,
  fattening,
  raising,
}

/// Livestock Lot Entity for Isar
/// Groups multiple animals with similar characteristics
@collection
class LivestockLotEntity {
  /// Unique auto-incremented identifier
  Id id = Isar.autoIncrement;

  /// Unique UUID for sync
  @Index(unique: true)
  late String? uuid;

  /// Lot name (e.g., "Lot A - Dairy", "Lot 5 - Calves")
  @Index()
  late String name;

  /// Detailed description of the lot
  String? description;

  /// Main species of the lot
  @enumerated
  late LotSpecies species;

  /// Production type
  @enumerated
  late ProductionType productionType;

  /// Total number of animals in the lot
  late int animalCount;

  /// Average age in months
  int? averageAgeMonths;

  /// Predominant breed
  String? predominantBreed;

  /// IDs of animals belonging to the lot (relation)
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

  /// Agregar animal al lote
  void agregarAnimal(String animalId) {
    if (!animalIds.contains(animalId)) {
      animalIds.add(animalId);
      animalCount++;
      registrarCambio(
        concepto: 'Adición de animal',
        descripcion: 'Animal $animalId agregado al lote',
      );
    }
  }

  /// Remover animal del lote
  void removerAnimal(String animalId) {
    if (animalIds.remove(animalId)) {
      animalCount--;
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
    switch (species) {
      case LotSpecies.cattle:
        return 'Bovino';
      case LotSpecies.equine:
        return 'Equino';
      case LotSpecies.ovine:
        return 'Ovino';
      case LotSpecies.caprine:
        return 'Caprino';
    }
  }

  /// Obtener nombre de tipo de producción
  String get nombreProduccion {
    switch (productionType) {
      case ProductionType.meat:
        return 'Carne';
      case ProductionType.milk:
        return 'Leche';
      case ProductionType.dual:
        return 'Doble Propósito';
      case ProductionType.breeding:
        return 'Reproducción';
      case ProductionType.fattening:
        return 'Engorde';
      case ProductionType.raising:
        return 'Levante';
    }
  }

  /// ¿Es lote activo?
  bool get estaActivo => activo && fechaCierre == null;

  @override
  String toString() =>
      'LivestockLot($uuid | $name | $animalCount ${nombreEspecie}s)';
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
