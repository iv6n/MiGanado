/// ============================================================================
/// STRINGS CENTRALIZADOS DE LA APLICACIÓN
/// ============================================================================

/// Almacena todos los strings de la aplicación en un único lugar
///
/// Ventajas:
/// - Facilita internacionalización (i18n)
/// - Evita strings mágicos dispersos
/// - Facilita auditoría de textos
/// - Mejora consistencia visual
///
/// Nota: Para producción, migrar a un sistema de localizaciones completo
/// usando ARB files y flutter_gen_l10n
class AppStrings {
  // =========================================================================
  // TÍTULOS GENERALES
  // =========================================================================

  static const String appName = 'MiGanado';
  static const String appTitle = 'Sistema de Gestión Ganadera';

  // =========================================================================
  // NAVEGACIÓN - Bottom Navigation Bar
  // =========================================================================

  static const String navAnimals = 'Animales';
  static const String navCalendar = 'Calendario';
  static const String navAdd = 'Agregar';
  static const String navLocations = 'Ubicaciones';
  static const String navProfile = 'Perfil';

  // =========================================================================
  // PANTALLAS - ANIMALES
  // =========================================================================

  static const String animalsTitle = 'Mis Animales';
  static const String animalDetailsTitle = 'Detalles del Animal';
  static const String addAnimalTitle = 'Registrar Animal';
  static const String editAnimalTitle = 'Editar Animal';
  static const String deleteAnimalTitle = 'Eliminar Animal';
  static const String profileTitle = 'Información Personal del Ganadero';

  static const String aretLabel = 'Arete:';
  static const String numberAretLabel = 'Número de Arete';
  static const String nameLabel = 'Nombre Personalizado';
  static const String raceLabel = 'Raza';
  static const String categoryLabel = 'Categoría';
  static const String stageLabel = 'Etapa de Vida';
  static const String sexLabel = 'Sexo';
  static const String birthDateLabel = 'Fecha de Nacimiento';
  static const String locationLabel = 'Ubicación';
  static const String weightLabel = 'Peso Actual';
  static const String healthStatusLabel = 'Estado de Salud';

  static const String totalAnimals = 'Total: ';
  static const String femaleLabel = 'Hembras';
  static const String maleLabel = 'Machos';
  static const String statusActive = 'Activo';
  static const String statusInactive = 'Inactivo';
  static const String statusSold = 'Vendido';

  // =========================================================================
  // PANTALLAS - CALENDARIO
  // =========================================================================

  static const String calendarTitle = 'Calendario';
  static const String pendingTab = 'Pendientes';
  static const String completedTab = 'Realizados';
  static const String upcomingTab = 'Próximos';
  static const String eventCreatedTitle = 'Evento Creado';
  static const String eventDeletedTitle = 'Evento Eliminado';
  static const String createEventTitle = 'Crear Evento';
  static const String editEventTitle = 'Editar Evento';

  static const String eventTypeLabel = 'Tipo de Evento';
  static const String eventDateLabel = 'Fecha';
  static const String eventTimeLabel = 'Hora';
  static const String eventDescriptionLabel = 'Descripción';
  static const String eventPriorityLabel = 'Prioridad';
  static const String eventStatusLabel = 'Estado';

  static const String priorityLow = 'Baja';
  static const String priorityMedium = 'Media';
  static const String priorityHigh = 'Alta';
  static const String priorityCritical = 'Crítica';

  static const String statusPending = 'Pendiente';
  static const String statusCompleted = 'Realizado';
  static const String statusOverdue = 'Vencido';
  static const String statusCancelled = 'Cancelado';
  static const String statusPostponed = 'Pospuesto';

  // =========================================================================
  // PANTALLAS - MANTENIMIENTO
  // =========================================================================

  static const String maintenanceTitle = 'Mantenimiento';
  static const String vaccinesTitle = 'Vacunas';
  static const String dewormerTitle = 'Desparasitaciones';
  static const String treatmentTitle = 'Tratamientos';
  static const String nutritionTitle = 'Nutrición';
  static const String maintenanceHistoryTitle = 'Historial de Mantenimiento';

  static const String vaccineTypeLabel = 'Tipo de Vacuna';
  static const String diseaseLabel = 'Enfermedad';
  static const String productLabel = 'Producto';
  static const String dosisLabel = 'Dosis';
  static const String costLabel = 'Costo';
  static const String registeredByLabel = 'Registrado por';

  static const String nextRevaccine = 'Próxima revacunación:';
  static const String lastVaccine = 'Última vacuna:';

  // =========================================================================
  // PANTALLAS - UBICACIONES
  // =========================================================================

  static const String locationsTitle = 'Ubicaciones';
  static const String addLocationTitle = 'Agregar Ubicación';
  static const String editLocationTitle = 'Editar Ubicación';

  static const String locationNameLabel = 'Nombre de Ubicación';
  static const String capacityLabel = 'Capacidad';
  static const String descriptionLabel = 'Descripción';

  // =========================================================================
  // PANTALLAS - FOTOS
  // =========================================================================

  static const String photosTitle = 'Fotos';
  static const String takePhotoTitle = 'Capturar Foto';
  static const String uploadPhotoTitle = 'Subir Foto';
  static const String deletePhotoTitle = 'Eliminar Foto';
  static const String photoTitle = 'Título de Foto';

  // =========================================================================
  // PANTALLAS - REPORTES
  // =========================================================================

  static const String reportsTitle = 'Reportes';
  static const String generateReportTitle = 'Generar Reporte';
  static const String reportTypeLabel = 'Tipo de Reporte';
  static const String reportDateRangeLabel = 'Rango de Fechas';

  // =========================================================================
  // BOTONES Y ACCIONES
  // =========================================================================

  static const String buttonSave = 'Guardar';
  static const String buttonCancel = 'Cancelar';
  static const String buttonDelete = 'Eliminar';
  static const String buttonEdit = 'Editar';
  static const String buttonAdd = 'Agregar';
  static const String buttonSubmit = 'Enviar';
  static const String buttonRetry = 'Reintentar';
  static const String buttonOk = 'Aceptar';
  static const String buttonYes = 'Sí';
  static const String buttonNo = 'No';
  static const String buttonClose = 'Cerrar';
  static const String buttonContinue = 'Continuar';
  static const String buttonBack = 'Anterior';
  static const String buttonNext = 'Siguiente';
  static const String buttonRegister = 'Registrar';

  // =========================================================================
  // MENSAJES DE ÉXITO
  // =========================================================================

  static const String successTitle = '¡Éxito!';
  static const String animalAdded = 'Animal registrado exitosamente';
  static const String animalUpdated = 'Animal actualizado exitosamente';
  static const String animalDeleted = 'Animal eliminado exitosamente';
  static const String eventCreated = 'Evento creado exitosamente';
  static const String eventUpdated = 'Evento actualizado exitosamente';
  static const String eventDeleted = 'Evento eliminado exitosamente';
  static const String photoAdded = 'Foto capturada exitosamente';
  static const String photoDeleted = 'Foto eliminada exitosamente';
  static const String photoUpdated = 'Foto actualizada exitosamente';
  static const String vaccineRegistered = 'Vacuna registrada exitosamente';
  static const String dewormerRegistered = 'Desparasitación registrada';
  static const String treatmentRegistered =
      'Tratamiento registrado exitosamente';
  static const String nutritionRegistered = 'Nutrición registrada exitosamente';
  static const String maintenanceRegistered = 'Mantenimiento registrado';
  static const String locationAdded = 'Ubicación agregada exitosamente';
  static const String locationUpdated = 'Ubicación actualizada exitosamente';
  static const String locationDeleted = 'Ubicación eliminada exitosamente';

  // =========================================================================
  // MENSAJES DE ERROR
  // =========================================================================

  static const String errorTitle = 'Error';
  static const String errorOccurred = 'Ocurrió un error';
  static const String errorLoading = 'Error al cargar datos';
  static const String errorSaving = 'Error al guardar datos';
  static const String errorDeleting = 'Error al eliminar';
  static const String errorUpdating = 'Error al actualizar';
  static const String errorNetwork = 'Error de conexión';
  static const String errorServer = 'Error del servidor';
  static const String errorUnknown = 'Error desconocido';
  static const String errorValidation = 'Error de validación';
  static const String errorDatabase = 'Error de base de datos';

  static const String animalNotFound = 'Animal no encontrado';
  static const String animalAlreadyExists = 'El animal ya existe';
  static const String eventNotFound = 'Evento no encontrado';
  static const String locationNotFound = 'Ubicación no encontrada';
  static const String photoNotFound = 'Foto no encontrada';

  // =========================================================================
  // MENSAJES DE VALIDACIÓN
  // =========================================================================

  static const String validationTitle = 'Validación';
  static const String fieldRequired = 'Este campo es requerido';
  static const String invalidEmail = 'Email inválido';
  static const String invalidPhone = 'Teléfono inválido';
  static const String invalidNumber = 'Número inválido';
  static const String invalidDate = 'Fecha inválida';
  static const String invalidURL = 'URL inválida';
  static const String passwordTooShort = 'La contraseña es muy corta';
  static const String passwordMismatch = 'Las contraseñas no coinciden';
  static const String minLengthError = 'Mínimo ';
  static const String characters = ' caracteres';
  static const String maxLengthError = 'Máximo ';

  // =========================================================================
  // DIÁLOGOS DE CONFIRMACIÓN
  // =========================================================================

  static const String confirmDelete = '¿Estás seguro que deseas eliminar?';
  static const String confirmDeleteAnimal =
      '¿Eliminar este animal del sistema?';
  static const String confirmDeleteEvent = '¿Eliminar este evento?';
  static const String confirmDeletePhoto = '¿Eliminar esta foto?';
  static const String confirmDeleteLocation = '¿Eliminar esta ubicación?';
  static const String confirmAction = '¿Confirmar esta acción?';

  // =========================================================================
  // INFORMACIÓN Y AYUDA
  // =========================================================================

  static const String noData = 'Sin datos disponibles';
  static const String noAnimals = 'No hay animales registrados';
  static const String noEvents = 'No hay eventos próximos';
  static const String noPhotos = 'No hay fotos disponibles';
  static const String empty = 'Vacío';
  static const String loading = 'Cargando...';
  static const String saving = 'Guardando...';
  static const String deleting = 'Eliminando...';

  static const String help = 'Ayuda';
  static const String about = 'Acerca de';
  static const String settings = 'Configuración';
  static const String version = 'Versión';

  // =========================================================================
  // PANTALLAS ADICIONALES
  // =========================================================================

  static const String screenCosts = 'Costos';
  static const String screenWeights = 'Pesos';
  static const String navRegister = 'Registro';
  static const String navHome = 'Inicio';

  // =========================================================================
  // BOTONES ADICIONALES
  // =========================================================================

  static const String buttonSavePhoto = 'Guardar Foto';
  static const String buttonComplete = 'Completar';
  static const String buttonMarkComplete = '✓ Marcar como realizado';
  static const String buttonGallery = 'Galería';
  static const String buttonCamera = 'Cámara';

  // =========================================================================
  // MENSAJES DE INFORMACIÓN
  // =========================================================================

  static const String firstAnimalMessage = 'Registrar Primer Animal';
  static const String photoSavedSuccess = 'Foto guardada exitosamente';
  static const String photoGeneratedSuccess =
      'Reporte preparado para compartir';
  static const String eventCompletedSuccess = 'Evento completado exitosamente';
  static const String vaccineSavedSuccess = 'Vacuna registrada exitosamente';
  static const String treatmentSavedSuccess =
      'Tratamiento registrado exitosamente';
  static const String nutritionSavedSuccess =
      'Nutricion registrada exitosamente';
  static const String maintenanceEventSavedSuccess =
      'Evento de mantenimiento registrado exitosamente';
  static const String reportGeneratedSuccess = 'Reporte generado exitosamente';
  static const String featureSoonMessage = 'Función de editar próximamente';
  static const String deleteFeatureSoonMessage =
      'Función de eliminar próximamente';
  static const String maintenanceHistoryEmptyMessage =
      'Sin eventos de mantenimiento registrados';
  static const String noMaintenceRecordsMessage =
      'Sin eventos de mantenimiento registrados';
  static const String calendarTitle2 = 'Calendario de Eventos 🐄🤠';
  static const String reportGenerated = 'Reporte Generado';

  // =========================================================================
  // MENSAJES DE ERROR
  // =========================================================================

  static const String errorLoadingHistory = 'Error al cargar el historial';
  static const String errorCapturingPhoto = 'Error al capturar foto: ';
  static const String errorSelectingPhoto = 'Error al seleccionar foto: ';
  static const String errorSavingPhoto = 'Error al guardar foto: ';
  static const String errorCompletingEvent = 'Error al completar evento: ';

  // =========================================================================
  // METADATOS
  // =========================================================================

  static const String appVersion = '1.0.0';
  static const String appDescription =
      'Sistema integral de gestión ganadera para pequeños y medianos productores';

  // Additional screen titles
  static const String directoryAnimalsTitle = 'Directorio de Animales';
  static const String reportVaccineTitle = 'Generar Reporte - ';
  static const String registerVaccineTitle = 'Registrar Vacuna';
  static const String registerTreatmentTitle = 'Registrar Tratamiento';
  static const String registerNutritionTitle = 'Registrar Nutricion';
  static const String registerBreedingTitle = 'Registrar Empadre';
  static const String registerBirthTitle = 'Registrar Parto';
  static const String registerMaintenanceTitle =
      'Registrar Evento de Mantenimiento';
  static const String durationLabel = 'Duracion: ';
  static const String durationDaysLabel = 'Duracion en dias';
  static const String locationsScreenTitle = 'Ubicaciones';
  static const String profileGanaderTitle = 'Perfil Ganadero';
  static const String notificationsTitle = 'Notificaciones';
  static const String cloudSyncTitle = 'Sincronización en la nube';
  static const String costsReportsTitle = 'Costos y Reportes';
  static const String homeTitle = 'Inicio';
  static const String registroTitle = 'Registro';

  // =========================================================================
  // TÉRMINOS GANADEROS MEXICANOS - CATEGORÍAS Y ETAPAS DE VIDA
  // =========================================================================

  // Cattle Categories (Categorías Bovinas)
  static const String categoryVaca = 'Vaca';
  static const String categoryToro = 'Toro';
  static const String categoryBecerro = 'Becerro';
  static const String categoryBecerra = 'Becerra';
  static const String categoryVaquilla = 'Vaquilla';
  static const String categoryTorete = 'Torete';
  static const String categoryNovillo = 'Novillo';

  // Equine Categories (Categorías Equinas)
  static const String categoryHorse = 'Caballo';
  static const String categoryMare = 'Yegua';
  static const String categoryDonkey = 'Burro';
  static const String categoryJenny = 'Burra';
  static const String categoryMule = 'Mula';

  // Life Stages (Etapas de Vida)
  static const String lifeStageCalfMale = 'Becerro';
  static const String lifeStageCalfFemale = 'Becerra';
  static const String lifeStageHeifer = 'Vaquilla';
  static const String lifeStageYoungBull = 'Torete';
  static const String lifeStageSteer = 'Novillo';
  static const String lifeStageCow = 'Vaca';
  static const String lifeStageBull = 'Toro';
  static const String lifeStageColt = 'Potro';
  static const String lifeStageFilly = 'Potranca';
  static const String lifeStageHorse = 'Caballo';
  static const String lifeStageMare = 'Yegua';
  static const String lifeStageDonkey = 'Burro';
  static const String lifeStageJenny = 'Burra';
  static const String lifeStageMule = 'Mula';

  // Sexes (Sexos)
  static const String sexMale = 'Macho';
  static const String sexFemale = 'Hembra';

  // Reproductive Status (Estado Reproductivo)
  static const String reproductiveStatusPregnant = 'Preñada';
  static const String reproductiveStatusLactating = 'Lactando';
  static const String reproductiveStatusDry = 'Seca';
  static const String reproductiveStatusUndefined = 'Sin Definir';

  // Health and Maintenance
  static const String healthVaccinated = 'Vacunado';
  static const String healthNotVaccinated = 'No Vacunado';
  static const String healthDewormed = 'Desparasitado';
  static const String healthNotDewormed = 'No Desparasitado';

  // Livestock Production Terms (Términos de Producción)
  static const String prodTypeBeef = 'Carne';
  static const String prodTypeMilk = 'Leche';
  static const String prodTypeDual = 'Doble Propósito';
  static const String prodTypeBreeding = 'Reproducción';
  static const String prodTypeFattening = 'Engorde';
  static const String prodTypeRaising = 'Levante';

  // Locations (Ubicaciones Ganaderas)
  static const String locPasture = 'Potrero';
  static const String locCorral = 'Corral';
  static const String locStable = 'Establo';
  static const String locFence = 'Cerca';
  static const String locWateringHole = 'Bebedero';
  static const String locFeeder = 'Comedero';

  // Livestock Terminology
  static const String herd = 'Hato';
  static const String lot = 'Lote';
  static const String breedingRecord = 'Registro de Empadre';
  static const String pregnancyStatus = 'Estado de Preñez';
  static const String birthRecord = 'Registro de Parto';
  static const String breeding = 'Empadre';
  static const String pregnancy = 'Preñez';
  static const String birth = 'Parto';
  static const String weaning = 'Destete';
  static const String vet = 'Veterinario';
  static const String vaccination = 'Vacunación';
  static const String deworming = 'Desparasitación';
  static const String treatment = 'Tratamiento';
  static const String nutrition = 'Nutrición';
  static const String castration = 'Castración';
  static const String branding = 'Herrado';

  // Weather and Environment
  static const String seasonDry = 'Época de Seca';
  static const String seasonRain = 'Época de Lluvia';
  static const String seasonCold = 'Época de Frío';
  static const String seasonHot = 'Época de Calor';
}
