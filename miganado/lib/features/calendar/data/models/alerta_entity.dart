import 'package:isar/isar.dart';

part 'alerta_entity.g.dart';

/// Tipos de alerta
enum TipoAlerta {
  /// Alerta anticipada (próximo evento)
  anticipada,

  /// Alerta crítica (debe ocurrir hoy o es urgente)
  critica,

  /// Alerta de evento vencido (debería haber ocurrido)
  vencida,
}

/// Estados de una alerta
enum EstadoAlerta {
  /// No visto por el usuario
  no_visto,

  /// Usuario vio la alerta
  visto,

  /// Usuario actuó en base a la alerta
  actuado,

  /// Usuario descartó la alerta
  descartada,
}

/// Entidad de Alerta para recordatorios y notificaciones
/// Almacena alertas generadas a partir de eventos programados
@collection
class AlertaEntity {
  /// Identificador único auto-incrementado
  Id id = Isar.autoIncrement;

  /// UUID para sincronización
  @Index(unique: true)
  late String uuid;

  /// Referencia al evento que genera la alerta (UUID)
  /// Puede ser null si es alerta independiente
  String? eventoUuid;

  /// Referencia al animal (UUID)
  /// Permite alertas sin evento asociado (ej: control de salud general)
  String? animalUuid;

  /// Tipo de alerta
  @enumerated
  late TipoAlerta tipo;

  /// Días de anticipación (7, 15, 30 para anticipadas)
  int diasAnticipacion = 0;

  /// Título de la alerta
  late String titulo;

  /// Descripción detallada
  String? descripcion;

  /// Fecha en que se debe mostrar la alerta
  @Index()
  late DateTime fechaAlerta;

  /// Fecha del evento original
  DateTime? fechaEventoOriginal;

  /// Estado actual de la alerta
  @enumerated
  late EstadoAlerta estado;

  /// Color para visualización (hex: #RRGGBB)
  late String colorHex;

  /// Ícono emoji para visualización rápida
  late String iconoEmoji;

  /// Prioridad numérica (1: baja, 5: crítica)
  @Index()
  late int prioridad;

  /// Acción sugerida (ej: "Ejecutar vacuna", "Reprogramar")
  String? accionSugerida;

  /// Categoría de evento (si aplica)
  String? categoriaEvento;

  /// Tipo específico de evento (si aplica)
  String? tipoEvento;

  /// Auditoría - Fecha de creación
  late DateTime fechaCreacion;

  /// Auditoría - Fecha en que fue visto
  DateTime? fechaVista;

  /// Auditoría - Fecha en que se actuó
  DateTime? fechaActuada;

  /// Auditoría - Fecha de descarte
  DateTime? fechaDescartada;

  /// Auditoría - Usuario que generó la alerta
  String? usuarioCreacion;

  /// Si la alerta fue sincronizada con servidor
  bool sincronizado = false;

  /// Constructor
  AlertaEntity({
    required this.uuid,
    this.eventoUuid,
    this.animalUuid,
    required this.tipo,
    this.diasAnticipacion = 0,
    required this.titulo,
    this.descripcion,
    required this.fechaAlerta,
    this.fechaEventoOriginal,
    required this.estado,
    required this.colorHex,
    required this.iconoEmoji,
    required this.prioridad,
    this.accionSugerida,
    this.categoriaEvento,
    this.tipoEvento,
    required this.fechaCreacion,
    this.usuarioCreacion,
  });

  /// Crear copia con cambios
  AlertaEntity copyWith({
    String? uuid,
    String? eventoUuid,
    String? animalUuid,
    TipoAlerta? tipo,
    int? diasAnticipacion,
    String? titulo,
    String? descripcion,
    DateTime? fechaAlerta,
    DateTime? fechaEventoOriginal,
    EstadoAlerta? estado,
    String? colorHex,
    String? iconoEmoji,
    int? prioridad,
    String? accionSugerida,
    String? categoriaEvento,
    String? tipoEvento,
    DateTime? fechaCreacion,
    DateTime? fechaVista,
    DateTime? fechaActuada,
    DateTime? fechaDescartada,
    String? usuarioCreacion,
    bool? sincronizado,
  }) {
    return AlertaEntity(
      uuid: uuid ?? this.uuid,
      eventoUuid: eventoUuid ?? this.eventoUuid,
      animalUuid: animalUuid ?? this.animalUuid,
      tipo: tipo ?? this.tipo,
      diasAnticipacion: diasAnticipacion ?? this.diasAnticipacion,
      titulo: titulo ?? this.titulo,
      descripcion: descripcion ?? this.descripcion,
      fechaAlerta: fechaAlerta ?? this.fechaAlerta,
      fechaEventoOriginal: fechaEventoOriginal ?? this.fechaEventoOriginal,
      estado: estado ?? this.estado,
      colorHex: colorHex ?? this.colorHex,
      iconoEmoji: iconoEmoji ?? this.iconoEmoji,
      prioridad: prioridad ?? this.prioridad,
      accionSugerida: accionSugerida ?? this.accionSugerida,
      categoriaEvento: categoriaEvento ?? this.categoriaEvento,
      tipoEvento: tipoEvento ?? this.tipoEvento,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
    )
      ..id = id
      ..fechaVista = fechaVista ?? this.fechaVista
      ..fechaActuada = fechaActuada ?? this.fechaActuada
      ..fechaDescartada = fechaDescartada ?? this.fechaDescartada
      ..usuarioCreacion = usuarioCreacion ?? this.usuarioCreacion
      ..sincronizado = sincronizado ?? this.sincronizado;
  }

  /// Marcar alerta como vista
  void marcarVista() {
    estado = EstadoAlerta.visto;
    fechaVista = DateTime.now();
  }

  /// Marcar alerta como actuada
  void marcarActuada() {
    estado = EstadoAlerta.actuado;
    fechaActuada = DateTime.now();
  }

  /// Marcar alerta como descartada
  void marcarDescartada() {
    estado = EstadoAlerta.descartada;
    fechaDescartada = DateTime.now();
  }

  /// Obtener información de visualización según tipo
  static Map<TipoAlerta, Map<String, dynamic>> obtenerConfiguracionVisual() {
    return {
      TipoAlerta.anticipada: {
        'colores': {
          30: '#2196F3', // Azul claro - 30 días
          15: '#1976D2', // Azul - 15 días
          7: '#FFC107', // Amarillo - 7 días
        },
        'iconos': {
          30: '📅',
          15: '📅',
          7: '⚠️',
        },
        'prioridades': {
          30: 1,
          15: 2,
          7: 3,
        }
      },
      TipoAlerta.critica: {
        'color': '#F44336', // Rojo
        'icono': '🔴',
        'prioridad': 4,
      },
      TipoAlerta.vencida: {
        'color': '#B71C1C', // Rojo oscuro
        'icono': '❌',
        'prioridad': 5,
      },
    };
  }
}
