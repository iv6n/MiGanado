/// Tipos de eventos del calendario ganadero
/// Clasificación por categoría principal

// ============ EVENTOS SANITARIOS ============

/// Eventos relacionados con la salud y prevención
enum EventoSanitario {
  /// Aplicación de vacunas
  vacunacion,

  /// Desparasitación interna
  desparasitacion,

  /// Baños sanitarios o garrapaticidas
  banioSanitario,

  /// Aplicación de vitaminas/minerales
  vitaminizacion,

  /// Revisión veterinaria general
  revisionVeterinaria,

  /// Tratamiento de enfermedades
  tratamiento,

  /// Curación de heridas
  curacion,

  /// Inmunización específica
  inmunizacion,

  /// Examen diagnóstico (sangre, heces, etc)
  examenDiagnostico,

  /// Otro evento sanitario
  otro,
}

// ============ EVENTOS REPRODUCTIVOS ============

/// Eventos relacionados con reproducción
enum EventoReproductivo {
  /// Inseminación artificial
  inseminacionArtificial,

  /// Monta natural
  montaNatural,

  /// Detección de celo
  deteccionCelo,

  /// Ecografía reproductiva
  ecografia,

  /// Parto esperado
  partoEsperado,

  /// Parto realizado
  partoRealizado,

  /// Destete planificado
  destete,

  /// Revisión post-parto
  revisionPostParto,

  /// Control de preñez
  controlPrenez,

  /// Otro evento reproductivo
  otro,
}

// ============ EVENTOS PRODUCTIVOS ============

/// Eventos relacionados con producción
enum EventoProductivo {
  /// Pesaje programado
  pesaje,

  /// Ordeño
  ordeno,

  /// Cambio de alimentación
  cambioAlimentacion,

  /// Suplementación nutricional
  suplementacion,

  /// Corte de cascos
  cortesCascos,

  /// Esquila (para ovinos/caprinos)
  esquila,

  /// Control productivo
  controlProductivo,

  /// Registros de producción (leche, carne)
  registroProduccion,

  /// Cambio de lote/ubicación
  cambioLote,

  /// Otro evento productivo
  otro,
}

// ============ EVENTOS AMBIENTALES ============

/// Eventos relacionados con el ambiente y manejo
enum EventoAmbiental {
  /// Limpieza del corral/instalación
  limpiezaInstalacion,

  /// Desinfección del área
  desinfeccion,

  /// Mantenimiento de infraestructura
  mantenimientoInfraestructura,

  /// Control de plagas
  controlPlagas,

  /// Preparación de pastizales
  preparacionPastizales,

  /// Rotación de potreros
  rotacionPotreros,

  /// Reparación de cercas
  reparacionCercas,

  /// Abastecimiento de agua
  abastecimientoAgua,

  /// Control de contaminación
  controlContaminacion,

  /// Otro evento ambiental
  otro,
}

/// Categoría principal de evento
enum CategoriaEvento {
  sanitaria,
  reproductiva,
  productiva,
  ambiental,
}

/// Estado del evento
enum EstadoEvento {
  /// Evento programado pero no ejecutado
  pendiente,

  /// Evento completado
  realizado,

  /// Evento pasado la fecha sin ejecutarse
  vencido,

  /// Evento cancelado
  cancelado,

  /// Evento pospuesto
  pospuesto,
}

/// Nivel de prioridad del evento
enum PrioridadEvento {
  baja,
  media,
  alta,
  critica,
}

/// Extensión para obtener información legible de enums
extension EventoSanitarioDisplay on EventoSanitario {
  String get nombreLegible {
    switch (this) {
      case EventoSanitario.vacunacion:
        return 'Vacunación';
      case EventoSanitario.desparasitacion:
        return 'Desparasitación';
      case EventoSanitario.banioSanitario:
        return 'Baño Sanitario';
      case EventoSanitario.vitaminizacion:
        return 'Vitaminización';
      case EventoSanitario.revisionVeterinaria:
        return 'Revisión Veterinaria';
      case EventoSanitario.tratamiento:
        return 'Tratamiento';
      case EventoSanitario.curacion:
        return 'Curación';
      case EventoSanitario.inmunizacion:
        return 'Inmunización';
      case EventoSanitario.examenDiagnostico:
        return 'Examen Diagnóstico';
      case EventoSanitario.otro:
        return 'Otro Evento Sanitario';
    }
  }

  String get icono {
    switch (this) {
      case EventoSanitario.vacunacion:
      case EventoSanitario.inmunizacion:
        return '💉';
      case EventoSanitario.desparasitacion:
      case EventoSanitario.banioSanitario:
        return '🧼';
      case EventoSanitario.vitaminizacion:
        return '🥗';
      case EventoSanitario.revisionVeterinaria:
      case EventoSanitario.examenDiagnostico:
        return '👨‍⚕️';
      case EventoSanitario.tratamiento:
      case EventoSanitario.curacion:
        return '🩹';
      case EventoSanitario.otro:
        return '⚕️';
    }
  }
}

extension EventoReproductivDisplay on EventoReproductivo {
  String get nombreLegible {
    switch (this) {
      case EventoReproductivo.inseminacionArtificial:
        return 'Inseminación Artificial';
      case EventoReproductivo.montaNatural:
        return 'Monta Natural';
      case EventoReproductivo.deteccionCelo:
        return 'Detección de Celo';
      case EventoReproductivo.ecografia:
        return 'Ecografía';
      case EventoReproductivo.partoEsperado:
        return 'Parto Esperado';
      case EventoReproductivo.partoRealizado:
        return 'Parto Realizado';
      case EventoReproductivo.destete:
        return 'Destete';
      case EventoReproductivo.revisionPostParto:
        return 'Revisión Post-Parto';
      case EventoReproductivo.controlPrenez:
        return 'Control de Preñez';
      case EventoReproductivo.otro:
        return 'Otro Evento Reproductivo';
    }
  }

  String get icono {
    switch (this) {
      case EventoReproductivo.inseminacionArtificial:
      case EventoReproductivo.montaNatural:
        return '🐄';
      case EventoReproductivo.deteccionCelo:
        return '🔴';
      case EventoReproductivo.ecografia:
        return '🖼️';
      case EventoReproductivo.partoEsperado:
      case EventoReproductivo.partoRealizado:
        return '👶';
      case EventoReproductivo.destete:
        return '🍼';
      case EventoReproductivo.revisionPostParto:
      case EventoReproductivo.controlPrenez:
        return '🤰';
      case EventoReproductivo.otro:
        return '🧬';
    }
  }
}

extension EventoProductivoDisplay on EventoProductivo {
  String get nombreLegible {
    switch (this) {
      case EventoProductivo.pesaje:
        return 'Pesaje';
      case EventoProductivo.ordeno:
        return 'Ordeño';
      case EventoProductivo.cambioAlimentacion:
        return 'Cambio de Alimentación';
      case EventoProductivo.suplementacion:
        return 'Suplementación';
      case EventoProductivo.cortesCascos:
        return 'Corte de Cascos';
      case EventoProductivo.esquila:
        return 'Esquila';
      case EventoProductivo.controlProductivo:
        return 'Control Productivo';
      case EventoProductivo.registroProduccion:
        return 'Registro de Producción';
      case EventoProductivo.cambioLote:
        return 'Cambio de Lote';
      case EventoProductivo.otro:
        return 'Otro Evento Productivo';
    }
  }

  String get icono {
    switch (this) {
      case EventoProductivo.pesaje:
        return '⚖️';
      case EventoProductivo.ordeno:
        return '🥛';
      case EventoProductivo.cambioAlimentacion:
      case EventoProductivo.suplementacion:
        return '🌾';
      case EventoProductivo.cortesCascos:
        return '✂️';
      case EventoProductivo.esquila:
        return '🐑';
      case EventoProductivo.controlProductivo:
      case EventoProductivo.registroProduccion:
        return '📊';
      case EventoProductivo.cambioLote:
        return '🚚';
      case EventoProductivo.otro:
        return '📋';
    }
  }
}

extension EventoAmbientalDisplay on EventoAmbiental {
  String get nombreLegible {
    switch (this) {
      case EventoAmbiental.limpiezaInstalacion:
        return 'Limpieza de Instalación';
      case EventoAmbiental.desinfeccion:
        return 'Desinfección';
      case EventoAmbiental.mantenimientoInfraestructura:
        return 'Mantenimiento de Infraestructura';
      case EventoAmbiental.controlPlagas:
        return 'Control de Plagas';
      case EventoAmbiental.preparacionPastizales:
        return 'Preparación de Pastizales';
      case EventoAmbiental.rotacionPotreros:
        return 'Rotación de Potreros';
      case EventoAmbiental.reparacionCercas:
        return 'Reparación de Cercas';
      case EventoAmbiental.abastecimientoAgua:
        return 'Abastecimiento de Agua';
      case EventoAmbiental.controlContaminacion:
        return 'Control de Contaminación';
      case EventoAmbiental.otro:
        return 'Otro Evento Ambiental';
    }
  }

  String get icono {
    switch (this) {
      case EventoAmbiental.limpiezaInstalacion:
      case EventoAmbiental.desinfeccion:
        return '🧹';
      case EventoAmbiental.mantenimientoInfraestructura:
      case EventoAmbiental.reparacionCercas:
        return '🔧';
      case EventoAmbiental.controlPlagas:
        return '🦟';
      case EventoAmbiental.preparacionPastizales:
      case EventoAmbiental.rotacionPotreros:
        return '🌱';
      case EventoAmbiental.abastecimientoAgua:
        return '💧';
      case EventoAmbiental.controlContaminacion:
        return '♻️';
      case EventoAmbiental.otro:
        return '🏗️';
    }
  }
}

extension EstadoEventoDisplay on EstadoEvento {
  String get nombreLegible {
    switch (this) {
      case EstadoEvento.pendiente:
        return 'Pendiente';
      case EstadoEvento.realizado:
        return 'Realizado';
      case EstadoEvento.vencido:
        return 'Vencido';
      case EstadoEvento.cancelado:
        return 'Cancelado';
      case EstadoEvento.pospuesto:
        return 'Pospuesto';
    }
  }

  String get icono {
    switch (this) {
      case EstadoEvento.pendiente:
        return '⏳';
      case EstadoEvento.realizado:
        return '✅';
      case EstadoEvento.vencido:
        return '❌';
      case EstadoEvento.cancelado:
        return '🚫';
      case EstadoEvento.pospuesto:
        return '⏸️';
    }
  }

  String get color {
    switch (this) {
      case EstadoEvento.pendiente:
        return '#FFA500'; // Naranja
      case EstadoEvento.realizado:
        return '#4CAF50'; // Verde
      case EstadoEvento.vencido:
        return '#F44336'; // Rojo
      case EstadoEvento.cancelado:
        return '#9E9E9E'; // Gris
      case EstadoEvento.pospuesto:
        return '#2196F3'; // Azul
    }
  }
}

extension PrioridadEventoDisplay on PrioridadEvento {
  String get nombreLegible {
    switch (this) {
      case PrioridadEvento.baja:
        return 'Baja';
      case PrioridadEvento.media:
        return 'Media';
      case PrioridadEvento.alta:
        return 'Alta';
      case PrioridadEvento.critica:
        return 'Crítica';
    }
  }

  String get icono {
    switch (this) {
      case PrioridadEvento.baja:
        return '⬇️';
      case PrioridadEvento.media:
        return '➡️';
      case PrioridadEvento.alta:
        return '⬆️';
      case PrioridadEvento.critica:
        return '🔴';
    }
  }

  String get color {
    switch (this) {
      case PrioridadEvento.baja:
        return '#4CAF50'; // Verde
      case PrioridadEvento.media:
        return '#FFC107'; // Ámbar
      case PrioridadEvento.alta:
        return '#FF9800'; // Naranja
      case PrioridadEvento.critica:
        return '#F44336'; // Rojo
    }
  }

  int get valor {
    switch (this) {
      case PrioridadEvento.baja:
        return 1;
      case PrioridadEvento.media:
        return 2;
      case PrioridadEvento.alta:
        return 3;
      case PrioridadEvento.critica:
        return 4;
    }
  }
}

/// Extensión para CategoriaEvento
extension CategoriaEventoDisplay on CategoriaEvento {
  String get nombreLegible {
    switch (this) {
      case CategoriaEvento.sanitaria:
        return 'Sanitaria';
      case CategoriaEvento.reproductiva:
        return 'Reproductiva';
      case CategoriaEvento.productiva:
        return 'Productiva';
      case CategoriaEvento.ambiental:
        return 'Ambiental';
    }
  }
}
