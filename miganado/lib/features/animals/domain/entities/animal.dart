import 'package:miganado/features/animals/data/models/animal_entity.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

/// Entidad de Animal en la capa de dominio
/// Representa un animal en el contexto de negocio
/// Sin anotaciones de Isar - puramente de lógica de negocio
class Animal {
  final String uuid;
  final String numeroArete;
  final String? nombrePersonalizado;
  final Especie especie;
  final Categoria categoria;
  final EtapaVida etapa;
  final Sexo sexo;
  final String raza;
  final DateTime fechaNacimiento;
  final int edadMeses;
  final bool esCastrado;
  final double? pesoActual; // Peso más reciente
  final DateTime? fechaUltimoPesaje; // Fecha del último pesaje

  /// Campos de auditoría
  final DateTime fechaCreacion;
  final DateTime fechaActualizacion;
  final bool sincronizado;
  final String? idRemoto;
  final EstadoReproductivo? estadoReproductivo;

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
  });

  /// Factory constructor para convertir AnimalEntity → Animal (domain)
  factory Animal.fromEntity(AnimalEntity entity) {
    // Recalcular edadMeses basado en fecha de nacimiento para asegurar consistencia
    final edadMesesRecalculado =
        _calcularEdadMesesDesde(entity.fechaNacimiento);

    return Animal(
      uuid: entity.uuid,
      numeroArete: entity.numeroArete,
      nombrePersonalizado: entity.nombrePersonalizado,
      especie: entity.especie,
      categoria: entity.categoria,
      etapa: entity.etapa,
      sexo: entity.sexo,
      raza: entity.raza,
      fechaNacimiento: entity.fechaNacimiento,
      edadMeses: edadMesesRecalculado, // Usar edad recalculada
      esCastrado: entity.esCastrado,
      fechaCreacion: entity.fechaCreacion,
      fechaActualizacion: entity.fechaActualizacion,
      sincronizado: entity.sincronizado,
      idRemoto: entity.idRemoto,
      pesoActual: entity.pesoActual,
      fechaUltimoPesaje: entity.fechaUltimoPesaje,
      estadoReproductivo: entity.estadoReproductivo,
    );
  }

  /// Calcula la edad en meses desde una fecha de nacimiento
  static int _calcularEdadMesesDesde(DateTime fechaNacimiento) {
    final hoy = DateTime.now();
    var meses = (hoy.year - fechaNacimiento.year) * 12;
    meses += hoy.month - fechaNacimiento.month;

    // Ajustar si aún no ha pasado el aniversario este mes
    if (hoy.day < fechaNacimiento.day) {
      meses--;
    }

    return meses.clamp(0, 9999); // Mínimo 0, máximo razonable
  }

  /// Convertir Animal (domain) → AnimalEntity (data)
  AnimalEntity toEntity() {
    final entity = AnimalEntity(
      numeroArete: numeroArete,
      nombrePersonalizado: nombrePersonalizado,
      especie: especie,
      categoria: categoria,
      sexo: sexo,
      raza: raza,
      fechaNacimiento: fechaNacimiento,
      edadMeses: edadMeses,
      esCastrado: esCastrado,
      // etapa se calcula automáticamente en el constructor de AnimalEntity
    );
    entity.uuid = uuid;
    entity.fechaCreacion = fechaCreacion;
    entity.fechaActualizacion = fechaActualizacion;
    entity.sincronizado = sincronizado;
    entity.idRemoto = idRemoto;
    return entity;
  }

  /// Copiar con cambios parciales
  Animal copyWith({
    String? uuid,
    String? numeroArete,
    String? nombrePersonalizado,
    Especie? especie,
    Categoria? categoria,
    EtapaVida? etapa,
    Sexo? sexo,
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
    EstadoReproductivo? estadoReproductivo,
  }) {
    final newEtapa = etapa ?? this.etapa;
    return Animal(
      uuid: uuid ?? this.uuid,
      numeroArete: numeroArete ?? this.numeroArete,
      nombrePersonalizado: nombrePersonalizado ?? this.nombrePersonalizado,
      especie: especie ?? this.especie,
      categoria: categoria ?? this.categoria,
      etapa: newEtapa,
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
}
