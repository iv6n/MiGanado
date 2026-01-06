# MiGanado - Refactorización Fase 1: TypeAdapters

## Resumen de Cambios

Esta fase implementa la migración de `Box<Map>` a TypeAdapters de Hive, proporcionando:
- ✅ Type-safety en la persistencia de datos
- ✅ Generación automática de adapters con build_runner
- ✅ Estructura modular basada en features
- ✅ Use cases para lógica de negocio

## Estructura de Carpetas

```
lib/
├── features/
│   ├── animals/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   ├── animal_model.dart        # @HiveType(typeId: 0)
│   │   │   │   ├── pesaje_model.dart        # @HiveType(typeId: 1)
│   │   │   │   ├── ubicacion_model.dart     # @HiveType(typeId: 2)
│   │   │   │   ├── *_adapter.dart           # Enum adapters
│   │   │   │   └── index.dart
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   └── usecases/
│   │   │       ├── calculate_animal_metrics.dart
│   │   │       ├── validate_animal.dart
│   │   │       ├── filter_animals.dart
│   │   │       └── index.dart
│   │   └── presentation/
│   │       └── providers/
│   │           └── animals_providers.dart
│   ├── costs/
│   │   ├── data/
│   │   │   └── models/
│   │   │       └── costo_model.dart         # @HiveType(typeId: 3)
│   │   └── presentation/
│   │       └── providers/
│   │           └── costos_providers.dart
│   ├── ganadero/
│   │   └── data/
│   │       └── models/
│   │           └── ganadero_model.dart      # @HiveType(typeId: 4)
│   └── mantenimiento/
│       ├── data/
│       │   └── models/
│       │       └── evento_mantenimiento_model.dart  # @HiveType(typeId: 5)
│       └── presentation/
│           └── providers/
│               └── mantenimiento_providers.dart
└── data/
    └── database/
        ├── database.dart          # Legacy Box<Map>
        └── hive_database_typed.dart # New typed database ✨
```

## TypeIds Asignados

| Modelo | TypeId | Location |
|--------|--------|----------|
| AnimalModel | 0 | lib/features/animals/data/models/ |
| PesajeModel | 1 | lib/features/animals/data/models/ |
| UbicacionModel | 2 | lib/features/animals/data/models/ |
| CostoModel | 3 | lib/features/costs/data/models/ |
| GanaderoModel | 4 | lib/features/ganadero/data/models/ |
| EventoMantenimientoModel | 5 | lib/features/mantenimiento/data/models/ |
| TipoGanadoAdapter | 6 | lib/features/animals/data/models/ |
| SexoAdapter | 7 | lib/features/animals/data/models/ |
| EstadoReproductivoAdapter | 8 | lib/features/animals/data/models/ |

## Modelos Creados

### AnimalModel (typeId: 0)
```dart
@HiveType(typeId: 0)
class AnimalModel {
  // Identificación
  @HiveField(0) String id;
  @HiveField(1) String numeroArete;
  @HiveField(2) String? nombrePersonalizado;
  
  // Clasificación
  @HiveField(3) TipoGanado tipo;
  @HiveField(4) Sexo sexo;
  @HiveField(5) String raza;
  
  // Salud
  @HiveField(12-22) bool vacunado, desparasitado, tieneVitaminas, etc.
  
  // Financiero
  @HiveField(8-10) double? precioCompra, precioVenta
  @HiveField(10) Map<String, double> costosExtra
  
  // Metadata
  @HiveField(25-27) DateTime? fotoPath, fechaRegistro, etc.
  
  // Computed properties
  double get costoTotal
  double get gananciaPotencial
}
```

### PesajeModel (typeId: 1)
```dart
@HiveType(typeId: 1)
class PesajeModel {
  @HiveField(0) String id;
  @HiveField(1) String animalId;
  @HiveField(2) double peso;
  @HiveField(3) DateTime fecha;
  @HiveField(4) String? notas;
  @HiveField(5) DateTime fechaRegistro;
}
```

### UbicacionModel (typeId: 2)
Similar con campos: id, nombre, tipo (enum), descripción, fotoPath, etc.

### CostoModel (typeId: 3)
Con TipoCosto enum: medicamento, alimento, servicio_veterinario, equipo, otro

### GanaderoModel (typeId: 4)
Con datos: nombre, telefono, email, ubicacion, notas

### EventoMantenimientoModel (typeId: 5)
Con TipoMantenimiento enum: vacunacion, desparasitante, vitaminas, revision_clinica, curacion, dentadura, castracion, otro

## Use Cases Implementados

### 1. CalculateAnimalMetrics
Calcula métricas de un animal:
- Edad en días y años
- Costo total y ganancia potencial
- ROC (Return on Cost)
- Necesidades de mantenimiento (vacunación, desparasitación, vitaminas)
- Alertas automáticas

```dart
final metrics = CalculateAnimalMetrics().call(
  animal: animalModel,
  costos: costosList,
);

print(metrics.edadEnAnios);
print(metrics.gananciaPotencial);
print(metrics.requiereVacunacion);
```

### 2. ValidateAnimal
Valida un animal según reglas de negocio:
- Número de arete válido (mínimo 3 caracteres)
- Precios no negativos
- Consistencia de fechas
- Validación de tratamientos

```dart
final result = ValidateAnimal().call(animal);
if (!result.isValid) {
  print(result.errors); // Lista de errores
}
```

### 3. FilterAnimals
Filtra animales por múltiples criterios:
- Número de arete / nombre
- Tipo / sexo
- Estado de vacunación
- Estado de desparasitación
- Con alertas

```dart
final filtered = FilterAnimals().call(
  animales: allAnimales,
  tipo: TipoGanado.vaca,
  soloVacunados: false,
  conAlertas: true,
);
```

## Providers Creados

### Animals Providers (`animals_providers.dart`)
```dart
databaseProvider              // Acceso a la BD
allAnimalesProvider          // Todos los animales
animalByIdProvider           // Animal por ID
filteredAnimalesProvider     // Animales filtrados
animalNotifierProvider       // Crear/actualizar
calculateMetricsProvider     // Use case
validateAnimalProvider       // Use case
filterAnimalsProvider        // Use case
```

### Costs Providers (`costos_providers.dart`)
```dart
costosByAnimalProvider       // Costos de un animal
totalCostosByAnimalProvider  // Total de costos
allCostosProvider            // Todos los costos
costoNotifierProvider        // Crear/actualizar
costosStatisticsProvider     // Estadísticas
```

### Maintenance Providers (`mantenimiento_providers.dart`)
```dart
eventosByAnimalProvider      // Eventos de mantenimiento
allEventosProvider           // Todos los eventos
timelineEventosProvider      // Línea de tiempo
eventoMantenimientoNotifierProvider  // Crear/actualizar
maintenanceStatisticsProvider // Estadísticas
```

## Base de Datos Refactorizada

### MiGanadoDatabaseTyped
```dart
class MiGanadoDatabaseTyped {
  // Typed boxes (no más Box<Map>!)
  late Box<AnimalModel> _animalesBox;
  late Box<PesajeModel> _pesajesBox;
  late Box<UbicacionModel> _ubicacionesBox;
  late Box<CostoModel> _costosBox;
  late Box<GanaderoModel> _ganaderoBox;
  late Box<EventoMantenimientoModel> _eventosMantenimientoBox;

  // CRUD type-safe
  Future<List<AnimalModel>> getAllAnimales()
  Future<AnimalModel?> getAnimalById(String id)
  Future<void> saveAnimal(AnimalModel animal)
  Future<void> deleteAnimal(String id)
  
  // Similar para pesajes, costos, eventos, ubicaciones, etc.
  
  // Estadísticas
  Future<DatabaseStats> getStats()
}
```

## Generación de Adaptadores

Los adapters se generan automáticamente con:
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Esto crea archivos como:
- `animal_model.g.dart`
- `pesaje_model.g.dart`
- `costo_model.g.dart`
- etc.

## Próximas Fases

### Fase 2: Refactorización de Providers (En Progreso)
- ✅ Crear providers para cada módulo
- ✅ Integrar use cases con providers
- ❌ Refactorizar screens para usar nuevos providers
- ❌ Actualizar database provider

### Fase 3: Sistema de Costos (Pendiente)
- Crear cost calculation engine
- Dashboard de costos
- Reporte de ROI por animal

### Fase 4: Dashboard Mejorado (Pendiente)
- Métricas en tiempo real
- Alertas inteligentes
- Gráficos de tendencias

## Ventajas de esta Refactorización

✅ **Type-Safety**: El compilador verifica tipos en tiempo de compilación
✅ **Performance**: Sin conversión de Maps en runtime
✅ **Mantenibilidad**: Estructura clara y modular
✅ **Testabilidad**: Use cases pueden ser testeados aisladamente
✅ **Escalabilidad**: Fácil agregar nuevas funcionalidades
✅ **Code Generation**: Menos código boilerplate

## Migración de Datos Legados

Para migrar de `Box<Map>` a `AnimalModel`:
```dart
Future<void> migrateOldData() async {
  final oldBox = await Hive.openBox('animales');
  final newDb = MiGanadoDatabaseTyped();
  
  for (var entry in oldBox.entries) {
    final map = entry.value as Map;
    final animal = AnimalModel.fromMap(map);
    await newDb.saveAnimal(animal);
  }
}
```

---

**Status**: ✅ Fase 1 Completada  
**Próximo**: Refactorizar screens para usar nuevos providers
