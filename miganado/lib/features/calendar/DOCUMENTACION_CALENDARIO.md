# Calendario Ganadero - Documentación Técnica

## 📋 Resumen Ejecutivo

El **Calendario Ganadero** es un sistema integral para gestionar todos los eventos que ocurren en una explotación ganadera. Soporta animales individuales, lotes completos, múltiples especies y categorías de eventos (sanitarios, reproductivos, productivos y ambientales).

### Características Principales

✅ **Gestión de Eventos Multidimensional**
- Eventos para animales individuales y lotes
- 4 categorías: Sanitarios, Reproductivos, Productivos, Ambientales
- 40+ tipos específicos de eventos
- Estados y prioridades configurables

✅ **Automatización Inteligente**
- Generación automática de eventos recurrentes
- Patrones de recurrencia flexibles
- Alertas y recordatorios
- Validaciones automáticas

✅ **Trazabilidad Completa**
- Historial de cambios detallado
- Registro de usuario/responsable
- Sincronización con servidor
- Datos específicos extensibles (JSON)

✅ **Escalabilidad Corporativa**
- Múltiples especies: Bovino, Equino, Ovino, Caprino
- Soporte para lotes de cualquier tamaño
- Índices optimizados en Isar
- Consultas eficientes y ordenadas

---

## 🏗️ Arquitectura

### Estructura de Carpetas

```
lib/features/calendar/
├── data/
│   ├── models/
│   │   ├── evento_ganadero_entity.dart    # Entidad Isar para eventos
│   │   ├── lote_ganadero_entity.dart      # Entidad Isar para lotes
│   │   └── index.dart
│   ├── repositories/
│   │   └── repositorio_calendario_ganadero.dart  # Acceso a datos
│   └── services/
│       └── validador_y_generador_eventos.dart    # Lógica de negocio
├── domain/
│   └── entities/
│       ├── event_types.dart               # Enums y tipos
│       └── index.dart
└── ejemplos_uso.dart                      # Ejemplos de implementación
```

### Capas de Arquitectura

```
┌─────────────────────────────────────────────────┐
│           Presentación (UI/Providers)           │
├─────────────────────────────────────────────────┤
│      Servicios de Lógica (Validador, etc.)      │
├─────────────────────────────────────────────────┤
│         Repositorio (RepositorioCalendario)     │
├─────────────────────────────────────────────────┤
│    Entidades/Modelos (Entity classes Isar)      │
├─────────────────────────────────────────────────┤
│         Base de Datos (Isar - SQLite)           │
└─────────────────────────────────────────────────┘
```

---

## 📊 Modelos de Datos

### EventoGanaderoEntity

Representa un evento individual en el calendario.

**Campos Principales:**
```dart
// Identificación
id                    // Auto-increment de Isar
uuid                  // UUID único para sincronización (UNIQUE)
titulo               // Nombre del evento (requerido)
descripcion          // Descripción detallada

// Relaciones
animalId             // Animal individual (opcional)
loteId               // Lote de animales (opcional)
ubicacionId          // Ubicación/Potrero (opcional)

// Clasificación
categoria            // CategoriaEvento (sanitaria, reproductiva, etc.)
tipoSanitario        // Si categoria = sanitaria
tipoReproductivo     // Si categoria = reproductiva
tipoProductivo       // Si categoria = productiva
tipoAmbiental        // Si categoria = ambiental

// Estado
estado               // EstadoEvento (pendiente, realizado, vencido, etc.)
prioridad            // PrioridadEvento (baja, media, alta, crítica)

// Fechas
fechaProgramada      // Cuando se debe hacer (requerido)
fechaEjecutada       // Cuando se hizo
fechaVencimiento     // Límite de tiempo

// Automatización
esAutomatico         // ¿Generado por el sistema?
esRecurrente         // ¿Se repite?
patronRecurrencia    // "cada 30 días", "mensual", "trimestral", etc.

// Ejecución
responsable          // Quién lo ejecuta
duracionEstimadoMinutos
observacionesPrevia  // Antes del evento
observacionesPostEvent  // Resultados/hallazgos

// Evidencia y Documentos
fotosEvidencia       // List<String> - rutas de fotos
documentosAdjuntos   // List<String> - rutas de documentos

// Datos Extensibles
datosEspecificos     // Map<String, dynamic> - JSON flexible

// Seguimiento
requiereSeguimiento
fechaSeguimiento
descripcionSeguimiento

// Costo
costoAsociado        // Costo del evento
descripcionCosto

// Auditoría
registrosCambios     // IsarRegistroCambio list - historial completo
fechaCreacion
fechaActualizacion
usuarioCreacion
usuarioActualizacion

// Sincronización
sincronizado         // ¿Guardado en server?
fechaSincronizacion
```

**Métodos Importantes:**
```dart
// Consultas
String get nombreTipoEvento     // Obtiene nombre legible del tipo
dynamic get tipoEvento          // Devuelve el enum del tipo específico
bool get estaAtrasado           // ¿Pasó la fecha sin ejecutarse?
bool get esUrgente              // ¿Alta prioridad y próximo a vencer?
int get diasHastaEvento         // Días faltantes
bool? get completadoATiempo     // ¿Se completó en tiempo?

// Manipulación
void agregarCambio(...)         // Registrar cambio en historial
void marcarComoRealizado(...)   // Completar evento
void posponerA(...)             // Reprogramar a otra fecha
void cancelar(...)              // Cancelar evento
```

### LoteGanaderoEntity

Agrupa múltiples animales con características similares.

**Campos Principales:**
```dart
// Identificación
id                   // Auto-increment
uuid                 // UUID único (UNIQUE)
nombre               // Nombre del lote (INDEXED)

// Clasificación
especie              // EspecieLote (bovino, equino, ovino, caprino)
tipoProduccion       // TipoProduccion (carne, leche, doble, etc.)

// Composición
cantidadAnimales     // Cantidad total
animalIds            // List<String> - IDs de animales del lote

// Características
edadPromedioMeses
razaPredominante
ubicacionId          // Ubicación principal
pesoPromedio
pesoMinimo
pesoMaximo

// Producción
produccionDiaria     // Producción promedio
unidadProduccion     // "litros", "kg", etc.

// Gestión
activo               // ¿Lote activo?
fechaCreacion
fechaCierre          // Null si sigue activo

// Detalles
responsable
objetivo             // Objetivo productivo

// Datos Extensibles
datosEspecificos     // Map<String, dynamic>
historicoCambios     // IsarCambioLote list

// Auditoría
fechaRegistro
fechaActualizacion
usuarioCreacion
usuarioActualizacion
```

**Métodos Importantes:**
```dart
void agregarAnimal(String id)      // Sumar animal al lote
void removerAnimal(String id)      // Quitar animal del lote
void registrarCambio(...)          // Registrar cambio en historial
void cerrar(...)                   // Cerrar lote
void reabrir()                     // Reabrir lote cerrado
bool get estaActivo                // ¿Lote está activo?
String get nombreEspecie           // Nombre legible de especie
String get nombreProduccion        // Nombre legible de tipo
```

---

## 📌 Enumeraciones

### CategoriaEvento
```dart
enum CategoriaEvento {
  sanitaria,      // Vacunas, veterinaria, desparasitación
  reproductiva,   // Inseminación, partos, cellos
  productiva,     // Pesaje, ordeño, alimentación
  ambiental,      // Limpieza, desinfección, rotación
}
```

### EventoSanitario (10 tipos)
```dart
vacunacion, desparasitacion, banioSanitario, vitaminizacion,
revisionVeterinaria, tratamiento, curacion, inmunizacion,
examenDiagnostico, otro
```

### EventoReproductivo (10 tipos)
```dart
inseminacionArtificial, montaNatural, deteccionCelo, ecografia,
partoEsperado, partoRealizado, destete, revisionPostParto,
controlPrenez, otro
```

### EventoProductivo (10 tipos)
```dart
pesaje, ordeno, cambioAlimentacion, suplementacion,
cortesCascos, esquila, controlProductivo, registroProduccion,
cambioLote, otro
```

### EventoAmbiental (10 tipos)
```dart
limpiezaInstalacion, desinfeccion, mantenimientoInfraestructura,
controlPlagas, preparacionPastizales, rotacionPotreros,
reparacionCercas, abastecimientoAgua, controlContaminacion, otro
```

### EstadoEvento
```dart
pendiente,    // 📊 Programado pero no ejecutado
realizado,    // ✅ Completado
vencido,      // ❌ Pasada la fecha sin ejecutarse
cancelado,    // 🚫 Cancelado
pospuesto,    // ⏸️ Reprogramado
```

### PrioridadEvento
```dart
baja,         // Valor: 1, Color: Verde #4CAF50
media,        // Valor: 2, Color: Ámbar #FFC107
alta,         // Valor: 3, Color: Naranja #FF9800
critica,      // Valor: 4, Color: Rojo #F44336
```

---

## 🔧 Servicios

### ValidadorEventoGanadero

Valida eventos antes de crear/actualizar.

```dart
// Validación completa
List<String> validar(EventoGanaderoEntity evento)

// Validaciones específicas
List<String> validarRealizacion(EventoGanaderoEntity evento)
List<String> validarPostergacion(EventoGanaderoEntity evento, DateTime nuevaFecha)
```

**Validaciones que realiza:**
- Título no vacío y < 255 caracteres
- Evento asociado a animal, lote o ubicación
- Fecha programada no en pasado
- Tipo de evento válido para categoría
- Fecha vencimiento > fecha programada
- Duración > 0 minutos
- Costo >= 0

### GeneradorEventosAutomaticos

Crea eventos recurrentes automáticamente.

```dart
// Eventos sanitarios básicos (vacunación anual, desparasitación trimestral)
List<EventoGanaderoEntity> generarEventosSanitariosBasicos(
  String animalId,
  DateTime fechaInicio,
)

// Eventos de pesaje
List<EventoGanaderoEntity> generarEventosPesaje(
  String animalId,
  DateTime fechaInicio,
  int frecuenciaDias = 30,
  int cantidadEventos = 12,
)
```

### CalculadoraAlertasEventos

Calcula alertas y recomendaciones.

```dart
// Obtener alerta del evento
String? calcularAlerta(EventoGanaderoEntity evento)

// Recomendación de acción
String obtenerRecomendacion(EventoGanaderoEntity evento)

// Tasa de cumplimiento por categoría
Future<Map<CategoriaEvento, double>> calcularTasaPorCategoria(
  List<EventoGanaderoEntity> eventos
)
```

---

## 📦 Repositorio

### RepositorioCalendarioGanadero

Gestiona todo acceso a datos.

**CRUD de Eventos:**
```dart
Future<EventoGanaderoEntity> crearEvento(EventoGanaderoEntity evento)
Future<EventoGanaderoEntity?> obtenerEventoPorUuid(String uuid)
Future<EventoGanaderoEntity?> obtenerEventoPorId(int id)
Future<List<EventoGanaderoEntity>> obtenerTodosLosEventos()
Future<void> actualizarEvento(EventoGanaderoEntity evento)
Future<bool> eliminarEvento(int id)
```

**Búsqueda por Estado:**
```dart
Future<List<EventoGanaderoEntity>> obtenerEventosPendientes()
Future<List<EventoGanaderoEntity>> obtenerEventosRealizados()
Future<List<EventoGanaderoEntity>> obtenerEventosVencidos()
Future<List<EventoGanaderoEntity>> obtenerEventosPorEstado(EstadoEvento estado)
```

**Búsqueda por Relación:**
```dart
Future<List<EventoGanaderoEntity>> obtenerEventosPorAnimal(String animalId)
Future<List<EventoGanaderoEntity>> obtenerEventosPorLote(String loteId)
Future<List<EventoGanaderoEntity>> obtenerEventosPorUbicacion(String ubicacionId)
```

**Búsqueda por Categoría:**
```dart
Future<List<EventoGanaderoEntity>> obtenerEventosSanitarios()
Future<List<EventoGanaderoEntity>> obtenerEventosReproductivos()
Future<List<EventoGanaderoEntity>> obtenerEventosProductivos()
Future<List<EventoGanaderoEntity>> obtenerEventosAmbientales()
Future<List<EventoGanaderoEntity>> obtenerEventosPorCategoria(CategoriaEvento)
```

**Búsqueda por Prioridad y Fechas:**
```dart
Future<List<EventoGanaderoEntity>> obtenerEventosCriticos()
Future<List<EventoGanaderoEntity>> obtenerEventosPorPrioridad(PrioridadEvento)
Future<List<EventoGanaderoEntity>> obtenerEventosEnRango(DateTime inicio, DateTime fin)
Future<List<EventoGanaderoEntity>> obtenerEventosDelDia()
Future<List<EventoGanaderoEntity>> obtenerEventosDelMes(DateTime mes)
Future<List<EventoGanaderoEntity>> obtenerEventosProximos(int dias)
Future<List<EventoGanaderoEntity>> obtenerEventosUrgentes()
```

**Manipulación de Eventos:**
```dart
Future<void> marcarComoRealizado(int id, {String? observaciones, DateTime? fecha})
Future<void> posponerEvento(int id, DateTime nuevaFecha, {String? motivo})
Future<void> cancelarEvento(int id, {String? motivo})
```

**CRUD de Lotes:**
```dart
Future<LoteGanaderoEntity> crearLote(LoteGanaderoEntity lote)
Future<LoteGanaderoEntity?> obtenerLotePorUuid(String uuid)
Future<LoteGanaderoEntity?> obtenerLotePorId(int id)
Future<List<LoteGanaderoEntity>> obtenerTodosLosLotes()
Future<List<LoteGanaderoEntity>> obtenerLotesActivos()
Future<List<LoteGanaderoEntity>> obtenerLotesPorEspecie(EspecieLote especie)
Future<List<LoteGanaderoEntity>> obtenerLotesPorProduccion(TipoProduccion tipo)
Future<List<LoteGanaderoEntity>> obtenerLotesPorUbicacion(String ubicacionId)
Future<void> actualizarLote(LoteGanaderoEntity lote)
Future<bool> eliminarLote(int id)
```

**Análisis y Reportes:**
```dart
Future<Map<String, dynamic>> obtenerResumenCalendario()
Future<Map<String, dynamic>> obtenerEstadisticasCumplimiento()
Future<List<EventoGanaderoEntity>> buscarEventos(String termino)
Future<int> limpiarEventosSincronizados()
```

---

## 💡 Casos de Uso

### Caso 1: Crear Evento Sanitario

```dart
final evento = EventoGanaderoEntity(
  categoria: CategoriaEvento.sanitaria,
  tipoSanitario: EventoSanitario.vacunacion,
  titulo: 'Vacunación Fiebre Aftosa',
  estado: EstadoEvento.pendiente,
  prioridad: PrioridadEvento.alta,
  fechaProgramada: DateTime.now().add(Duration(days: 7)),
  animalId: 'animal-id-123',
  responsable: 'Dr. García',
);

// Validar
final errores = ValidadorEventoGanadero.validar(evento);
if (errores.isEmpty) {
  await repo.crearEvento(evento);
}
```

### Caso 2: Generar Eventos Automáticos

```dart
final eventosSanitarios = GeneradorEventosAutomaticos
    .generarEventosSanitariosBasicos(
  animalId: 'animal-id-123',
  fechaInicio: DateTime.now(),
);

for (var evento in eventosSanitarios) {
  await repo.crearEvento(evento);
}
```

### Caso 3: Obtener Eventos Próximos

```dart
final proximos = await repo.obtenerEventosProximos(7);  // Próximos 7 días
final urgentes = await repo.obtenerEventosUrgentes();

for (var evento in urgentes) {
  final alerta = CalculadoraAlertasEventos.calcularAlerta(evento);
  print('$alerta - ${evento.titulo}');
}
```

### Caso 4: Marcar Evento como Realizado

```dart
await repo.marcarComoRealizado(
  eventoId,
  observaciones: 'Animal respondió bien, sin reacciones adversas',
);
```

### Caso 5: Crear Lote y Asociar Animales

```dart
final lote = LoteGanaderoEntity(
  nombre: 'Lote Lecherías A',
  especie: EspecieLote.bovino,
  tipoProduccion: TipoProduccion.leche,
  cantidadAnimales: 0,
);

await repo.crearLote(lote);

// Agregar animales
lote.agregarAnimal('animal-001');
lote.agregarAnimal('animal-002');
await repo.actualizarLote(lote);
```

---

## 🔐 Validaciones y Seguridad

### Validaciones Automáticas

- ✅ Título no vacío
- ✅ Asociación a animal/lote/ubicación
- ✅ Fechas válidas y coherentes
- ✅ Tipo de evento válido para categoría
- ✅ Costos no negativos
- ✅ Duraciones positivas

### Auditoría Completa

- 📋 Registro de cambios historial
- 👤 Usuario que creó/actualizó
- 📅 Fechas de creación/actualización
- 🔄 Estado de sincronización
- 📝 Observaciones pre y post evento

### Transacciones Seguras

Todas las operaciones de escritura usan `writeTxn()` de Isar:

```dart
await _database.isar.writeTxn(() async {
  await _database.isar.eventoGanaderoEntitys.put(evento);
});
```

---

## 🚀 Integración con Isar

### Registrar Colecciones en main.dart

```dart
_isar = await Isar.open(
  [
    // ... otros schemas
    EventoGanaderoEntitySchema,
    LoteGanaderoEntitySchema,
  ],
  directory: dir.path,
  name: dbName,
);
```

### Generar archivos .g.dart

Ejecutar:
```bash
dart run build_runner build
```

---

## 📈 Escalabilidad y Mejoras Futuras

### Características Implementadas ✅
- [x] Modelo de datos completo
- [x] 4 categorías de eventos
- [x] 40+ tipos específicos
- [x] Soporte para múltiples especies
- [x] Historial de cambios
- [x] Validaciones automáticas
- [x] Generador de eventos recurrentes
- [x] Cálculo de alertas
- [x] Sincronización con servidor

### Mejoras Futuras 🔄
- [ ] Notificaciones push para alertas
- [ ] Reportes avanzados en PDF
- [ ] Exportación a Excel
- [ ] Sincronización real-time
- [ ] Integración con calendario del sistema
- [ ] Análisis predictivo con IA
- [ ] Integración con IoT (sensores)
- [ ] Respaldos automáticos en cloud

---

## 🧪 Testing

Ejemplo de test unitario:

```dart
test('Validar evento sanitario', () {
  final evento = EventoGanaderoEntity(
    categoria: CategoriaEvento.sanitaria,
    tipoSanitario: EventoSanitario.vacunacion,
    titulo: 'Vacunación',
    estado: EstadoEvento.pendiente,
    prioridad: PrioridadEvento.media,
    fechaProgramada: DateTime.now().add(Duration(days: 7)),
    animalId: 'animal-123',
  );

  final errores = ValidadorEventoGanadero.validar(evento);
  expect(errores, isEmpty);
});
```

---

## 📚 Referencias

- Isar Database: https://isar.dev
- Flutter Best Practices: https://flutter.dev/docs
- Arquitectura Limpia: https://medium.com/@android.clean.code
- SOLID Principles: https://en.wikipedia.org/wiki/SOLID

---

**Versión:** 1.0  
**Última actualización:** Enero 2024  
**Autor:** Senior Developer - Especialista en Apps Agropecuarias
