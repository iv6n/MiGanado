import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

part 'evento_ganadero_entity.g.dart';

/// Entidad de Evento Ganadero para Isar
/// Modela todos los tipos de eventos que ocurren en la explotación ganadera
@collection
class EventoGanaderoEntity {
  /// Identificador único auto-incrementado (Clave primaria de Isar)
  Id id = Isar.autoIncrement;

  /// UUID único para sincronización con servidor/cloud
  @Index(unique: true)
  late String? uuid;

  /// ID del animal individual asociado (opcional)
  /// Si es un evento para un animal específico
  String? animalId;

  /// ID del lote asociado (opcional)
  /// Si es un evento para un grupo de animales
  String? loteId;

  /// ID de la ubicación (potrero, agua, corral, etc.)
  /// Donde ocurre o debe ocurrir el evento
  String? ubicacionId;

  /// Categoría principal del evento
  @enumerated
  late CategoriaEvento categoria;

  /// Tipo de evento sanitario (si aplica)
  @enumerated
  EventoSanitario tipoSanitario = EventoSanitario.vacunacion;

  /// Tipo de evento reproductivo (si aplica)
  @enumerated
  EventoReproductivo tipoReproductivo =
      EventoReproductivo.inseminacionArtificial;

  /// Tipo de evento productivo (si aplica)
  @enumerated
  EventoProductivo tipoProductivo = EventoProductivo.pesaje;

  /// Tipo de evento ambiental (si aplica)
  @enumerated
  EventoAmbiental tipoAmbiental = EventoAmbiental.limpiezaInstalacion;

  /// Título/Nombre del evento
  late String titulo;

  /// Descripción detallada del evento
  String? descripcion;

  /// Estado actual del evento
  @enumerated
  late EstadoEvento estado;

  /// Prioridad del evento
  @enumerated
  late PrioridadEvento prioridad;

  /// ¿Es evento automático (generado por el sistema)?
  /// O manual (creado por el usuario)
  bool esAutomatico = false;

  /// ¿Es evento recurrente?
  bool esRecurrente = false;

  /// Patrón de recurrencia (ej: "cada 30 días", "mensual", "trimestral")
  String? patronRecurrencia;

  /// Fecha programada para el evento
  late DateTime fechaProgramada;

  /// Fecha en que se realizó el evento (si fue completado)
  DateTime? fechaEjecutada;

  /// Fecha límite antes de que se marque como vencido
  DateTime? fechaVencimiento;

  /// Duración estimada en minutos
  int? duracionEstimadoMinutos;

  /// Responsable del evento (nombre del usuario/técnico)
  String? responsable;

  /// Observaciones antes del evento
  String? observacionesPrevia;

  /// Observaciones después del evento (resultados, hallazgos)
  String? observacionesPostEvent;

  /// Fotos o evidencias asociadas (rutas de archivos)
  final List<String> fotosEvidencia = [];

  /// Documentos adjuntos (recetas, informes, etc)
  final List<String> documentosAdjuntos = [];

  /// Datos específicos del evento (JSON flexible para extensibilidad)
  /// Ejemplo: {"dosis": "5ml", "lote_producto": "ABC123", "temperatura": 37.5}
  /// NOTA: Isar no soporta Map dinámicos, usar String JSON serializado
  String? datosEspecificosJson;

  /// Etiquetas para categorización adicional
  final List<String> etiquetas = [];

  /// Costo asociado al evento (veterinario, productos, etc)
  double? costoAsociado;

  /// Descripción del costo
  String? descripcionCosto;

  /// ¿Requiere seguimiento?
  bool requiereSeguimiento = false;

  /// Fecha de próximo seguimiento
  DateTime? fechaSeguimiento;

  /// Descripción de qué se debe hacer en el seguimiento
  String? descripcionSeguimiento;

  /// Historial de cambios - Almacena cambios importantes
  final List<IsarRegistroCambio> registrosCambios = [];

  /// Fecha de creación del registro
  DateTime? fechaCreacion;

  /// Fecha de última actualización
  DateTime? fechaActualizacion;

  /// Usuario que creó el evento
  String? usuarioCreacion;

  /// Usuario que última vez editó el evento
  String? usuarioActualizacion;

  /// ¿Es evento sincronizado con servidor?
  bool sincronizado = false;

  /// Timestamp de última sincronización
  DateTime? fechaSincronizacion;

  /// Constructor
  EventoGanaderoEntity({
    String? uuid,
    this.animalId,
    this.loteId,
    this.ubicacionId,
    required this.categoria,
    this.tipoSanitario = EventoSanitario.vacunacion,
    this.tipoReproductivo = EventoReproductivo.inseminacionArtificial,
    this.tipoProductivo = EventoProductivo.pesaje,
    this.tipoAmbiental = EventoAmbiental.limpiezaInstalacion,
    required this.titulo,
    this.descripcion,
    required this.estado,
    required this.prioridad,
    this.esAutomatico = false,
    this.esRecurrente = false,
    this.patronRecurrencia,
    required this.fechaProgramada,
    this.fechaEjecutada,
    this.fechaVencimiento,
    this.duracionEstimadoMinutos,
    this.responsable,
    this.observacionesPrevia,
    this.observacionesPostEvent,
    this.datosEspecificosJson,
    this.costoAsociado,
    this.descripcionCosto,
    this.requiereSeguimiento = false,
    this.fechaSeguimiento,
    this.descripcionSeguimiento,
    DateTime? fechaCreacion,
    DateTime? fechaActualizacion,
    this.usuarioCreacion,
    this.usuarioActualizacion,
    this.sincronizado = false,
    this.fechaSincronizacion,
  }) {
    this.uuid = uuid ?? const Uuid().v4();
    this.fechaCreacion = fechaCreacion ?? DateTime.now();
    this.fechaActualizacion = fechaActualizacion ?? DateTime.now();
  }

  /// Obtener el tipo de evento específico según la categoría
  @ignore
  dynamic get tipoEvento {
    switch (categoria) {
      case CategoriaEvento.sanitaria:
        return tipoSanitario;
      case CategoriaEvento.reproductiva:
        return tipoReproductivo;
      case CategoriaEvento.productiva:
        return tipoProductivo;
      case CategoriaEvento.ambiental:
        return tipoAmbiental;
    }
  }

  /// Obtener nombre legible del tipo de evento
  String get nombreTipoEvento {
    switch (categoria) {
      case CategoriaEvento.sanitaria:
        return tipoSanitario.nombreLegible;
      case CategoriaEvento.reproductiva:
        return tipoReproductivo.nombreLegible;
      case CategoriaEvento.productiva:
        return tipoProductivo.nombreLegible;
      case CategoriaEvento.ambiental:
        return tipoAmbiental.nombreLegible;
    }
  }

  /// ¿Está atrasado? (pasó la fecha sin ejecutarse)
  bool get estaAtrasado =>
      estado == EstadoEvento.vencido ||
      (estado == EstadoEvento.pendiente &&
          fechaProgramada.isBefore(DateTime.now()));

  /// ¿Es urgente? (alta prioridad y próximo a vencer)
  bool get esUrgente =>
      (prioridad == PrioridadEvento.alta ||
          prioridad == PrioridadEvento.critica) &&
      estado == EstadoEvento.pendiente &&
      fechaProgramada.difference(DateTime.now()).inDays <= 3;

  /// Calcular días hasta el evento
  int get diasHastaEvento {
    final hoy = DateTime.now();
    final diferencia = fechaProgramada.difference(hoy);
    return diferencia.inDays;
  }

  /// ¿El evento fue completado a tiempo?
  bool? get completadoATiempo {
    if (fechaEjecutada == null) return null;
    if (estado != EstadoEvento.realizado) return null;

    if (fechaVencimiento != null) {
      return fechaEjecutada!.isBefore(fechaVencimiento!) ||
          fechaEjecutada!.isAtSameMomentAs(fechaVencimiento!);
    }

    return true;
  }

  /// Agregar un cambio al historial
  void agregarCambio({
    required String campo,
    required String valorAnterior,
    required String valorNuevo,
    String? descripcion,
  }) {
    registrosCambios.add(
      IsarRegistroCambio(
        campo: campo,
        valorAnterior: valorAnterior,
        valorNuevo: valorNuevo,
        descripcion: descripcion,
        fecha: DateTime.now(),
      ),
    );
    fechaActualizacion = DateTime.now();
  }

  /// Registrar ejecución del evento
  void marcarComoRealizado({
    String? observaciones,
    DateTime? fecha,
  }) {
    estado = EstadoEvento.realizado;
    fechaEjecutada = fecha ?? DateTime.now();
    if (observaciones != null) {
      observacionesPostEvent = observaciones;
    }
    fechaActualizacion = DateTime.now();
  }

  /// Posponer evento a nueva fecha
  void posponerA(DateTime nuevaFecha, {String? motivo}) {
    agregarCambio(
      campo: 'fechaProgramada',
      valorAnterior: fechaProgramada.toString(),
      valorNuevo: nuevaFecha.toString(),
      descripcion: motivo,
    );
    fechaProgramada = nuevaFecha;
    estado = EstadoEvento.pospuesto;
    fechaActualizacion = DateTime.now();
  }

  /// Cancelar evento
  void cancelar({String? motivo}) {
    estado = EstadoEvento.cancelado;
    agregarCambio(
      campo: 'estado',
      valorAnterior: 'pendiente',
      valorNuevo: 'cancelado',
      descripcion: motivo,
    );
    fechaActualizacion = DateTime.now();
  }

  @override
  String toString() =>
      'EventoGanadero($uuid | $titulo | ${estado.nombreLegible})';
}

/// Embedded class para registrar cambios en el historial
@embedded
class IsarRegistroCambio {
  /// Campo que fue modificado
  late String campo;

  /// Valor anterior
  late String valorAnterior;

  /// Valor nuevo
  late String valorNuevo;

  /// Descripción del cambio
  String? descripcion;

  /// Fecha del cambio
  DateTime? fecha;

  IsarRegistroCambio({
    this.campo = '',
    this.valorAnterior = '',
    this.valorNuevo = '',
    this.descripcion,
    DateTime? fecha,
  }) {
    this.fecha = fecha ?? DateTime.now();
  }

  @override
  String toString() =>
      'Cambio($campo: $valorAnterior → $valorNuevo en ${fecha.toString()})';
}
