import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart'
    as etapa_vida;

/// Entidad de Animal en la capa de dominio
/// Representa un animal en el contexto de negocio
/// Sin anotaciones de Isar - puramente de lógica de negocio
class Animal {
  final String uuid;
  final String numeroArete;
  final String? nombrePersonalizado;
  final etapa_vida.Species especie;
  final etapa_vida.Category categoria;
  final etapa_vida.LifeStage etapa;
  final etapa_vida.Sex sexo;
  final String raza;
  final DateTime fechaNacimiento;
  final int edadMeses;
  final bool esCastrado;
  final double? pesoActual; // Peso más reciente
  final DateTime? fechaUltimoPesaje; // Fecha del último pesaje
  final bool vaccinated; // Vacunado
  final bool dewormed; // Desparasitado

  /// Campos de auditoría
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;
  final bool sincronizado;
  final String? idRemoto;
  final etapa_vida.ReproductiveStatus? estadoReproductivo;

  Animal({
    required this.uuid,
    required this.numeroArete,
    this.nombrePersonalizado,
    required this.especie,
    required this.categoria,
    required this.etapa,
    required this.sexo,
    required this.raza,
    required this.fechaNacimiento,
    required this.edadMeses,
    required this.esCastrado,
    required this.fechaCreacion,
    required this.fechaActualizacion,
    required this.sincronizado,
    this.idRemoto,
    this.pesoActual,
    this.fechaUltimoPesaje,
    this.estadoReproductivo,
    this.vaccinated = false,
    this.dewormed = false,
  });

  /// Factory constructor para convertir AnimalEntity → Animal (domain)
  factory Animal.fromEntity(AnimalEntity entity) {
    // Mapear propiedades de AnimalEntity a Animal
    // AnimalEntity usa nombres en inglés, Animal usa nombres en español para el dominio
    return Animal(
      uuid: entity.uuid,
      numeroArete: entity.earTagNumber,
      nombrePersonalizado: entity.customName,
      especie: entity.species,
      categoria: entity.category,
      etapa: entity.lifeStage,
      sexo: entity.sex,
      raza: entity.breed,
      fechaNacimiento: entity.birthDate,
      edadMeses: entity.ageMonths,
      esCastrado: entity.isCastrated,
      fechaCreacion: entity.creationDate,
      fechaActualizacion: entity.lastUpdateDate,
      sincronizado: entity.synced,
      idRemoto: entity.remoteId,
      pesoActual: entity.currentWeight,
      fechaUltimoPesaje: entity.lastWeighingDate,
      estadoReproductivo: entity.reproductiveStatus,
      vaccinated: entity.vaccinated,
      dewormed: entity.dewormed,
    );
  }

  /// Convertir Animal (domain) → AnimalEntity (data)
  AnimalEntity toEntity() {
    final entity = AnimalEntity(
      earTagNumber: numeroArete,
      customName: nombrePersonalizado,
      species: especie,
      category: categoria,
      sex: sexo,
      breed: raza,
      birthDate: fechaNacimiento,
      ageMonths: edadMeses,
      isCastrated: esCastrado,
    );
    entity.uuid = uuid;
    entity.creationDate = fechaCreacion;
    entity.lastUpdateDate = fechaActualizacion;
    entity.synced = sincronizado;
    entity.remoteId = idRemoto;
    entity.currentWeight = pesoActual;
    entity.lastWeighingDate = fechaUltimoPesaje;
    entity.reproductiveStatus = estadoReproductivo ?? entity.reproductiveStatus;
    entity.vaccinated = vaccinated;
    entity.dewormed = dewormed;
    return entity;
  }

  /// Copiar con cambios parciales
  Animal copyWith({
    String? uuid,
    String? numeroArete,
    String? nombrePersonalizado,
    etapa_vida.Species? especie,
    etapa_vida.Category? categoria,
    etapa_vida.LifeStage? etapa,
    etapa_vida.Sex? sexo,
    String? raza,
    DateTime? fechaNacimiento,
    int? edadMeses,
    bool? esCastrado,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
    bool? sincronizado,
    String? idRemoto,
    double? pesoActual,
    DateTime? fechaUltimoPesaje,
    etapa_vida.ReproductiveStatus? estadoReproductivo,
    bool? vaccinated,
    bool? dewormed,
  }) {
    return Animal(
      uuid: uuid ?? this.uuid,
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      especie: especie ?? this.especie,
      categoria: categoria ?? this.categoria,
      etapa: etapa ?? this.etapa,
      sexo: sexo ?? this.sexo,
      raza: raza ?? this.raza,
      fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
      edadMeses: edadMeses ?? this.edadMeses,
      esCastrado: esCastrado ?? this.esCastrado,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
      sincronizado: sincronizado ?? this.sincronizado,
      idRemoto: idRemoto ?? this.idRemoto,
      pesoActual: pesoActual ?? this.pesoActual,
      fechaUltimoPesaje: fechaUltimoPesaje ?? this.fechaUltimoPesaje,
      estadoReproductivo: estadoReproductivo ?? this.estadoReproductivo,
      vaccinated: vaccinated ?? this.vaccinated,
      dewormed: dewormed ?? this.dewormed,
    );
  }

  @override
  String toString() =>
      'Animal($numeroArete: $nombrePersonalizado - ${categoria.descripcion} ${etapa.descripcion})';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Animal && runtimeType == other.runtimeType && uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;

  /// Descripción legible de la etapa
  String get etapaDescripcion => etapa.descripcion;

  /// Asset icon para la etapa de vida
  String get etapaIcon => etapa.assetIcon;

  /// Descripción legible de la categoría
  String get categoriaDescripcion => categoria.descripcion;

  /// Asset icon para la categoría
  String get categoriaIcon => categoria.assetIcon;

  /// ============ ENGLISH PROPERTY ALIASES FOR UI COMPATIBILITY ============

  /// Alias for English UI: earTagNumber
  String get earTagNumber => numeroArete;

  /// Alias for English UI: customName
  String? get customName => nombrePersonalizado;

  /// Alias for English UI: species
  etapa_vida.Species get species => especie;

  /// Alias for English UI: category
  etapa_vida.Category get category => categoria;

  /// Alias for English UI: lifeStage
  etapa_vida.LifeStage get lifeStage => etapa;

  /// Alias for English UI: sex
  etapa_vida.Sex get sex => sexo;

  /// Alias for English UI: breed
  String get breed => raza;

  /// Alias for English UI: birthDate
  DateTime get birthDate => fechaNacimiento;

  /// Alias for English UI: ageMonths
  int get ageMonths => edadMeses;

  /// Alias for English UI: isCastrated
  bool get isCastrated => esCastrado;

  /// Alias for English UI: creationDate
  DateTime get creationDate => fechaCreacion;

  /// Alias for English UI: lastUpdateDate
  DateTime get lastUpdateDate => fechaActualizacion;

  /// Alias for English UI: synced
  bool get synced => sincronizado;

  /// Alias for English UI: remoteId
  String? get remoteId => idRemoto;

  /// Alias for English UI: currentWeight
  double? get currentWeight => pesoActual;

  /// Alias for English UI: lastWeighingDate
  DateTime? get lastWeighingDate => fechaUltimoPesaje;

  /// Alias for English UI: reproductiveStatus
  etapa_vida.ReproductiveStatus? get reproductiveStatus => estadoReproductivo;

  /// Alias for English UI: notes
  String? get notes =>
      null; // Animal doesn't have notes field, but UI expects it

  // ============ SPANISH PROPERTY ALIASES FOR SPANISH UI ============

  /// Alias for Spanish UI: vacunado
  bool get vacunado => vaccinated;

  /// Alias for Spanish UI: desparasitado
  bool get desparasitado => dewormed;
}
