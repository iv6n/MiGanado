# Guía de Migración: Usando los Nuevos Modelos TypeAdapters

## 1. Actualizar el Database Provider

Primero, necesitas inicializar el database provider en tu `main.dart`:

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/data/database/hive_database_typed.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializar la base de datos
  final database = MiGanadoDatabaseTyped();
  await database.init();
  
  runApp(
    ProviderContainer(
      overrides: [
        databaseProvider.overrideWithValue(database),
      ],
      child: const MyApp(),
    ),
  );
}
```

## 2. Leer Animales en un Widget

**ANTES (Box<Map>)**:
```dart
final animals = ref.watch(allAnimalesProvider);

animals.when(
  data: (List<Animal> items) => ListView(
    children: items.map((animal) {
      return Text(animal.numeroArete);
    }).toList(),
  ),
  loading: () => CircularProgressIndicator(),
  error: (err, stack) => Text('Error: $err'),
);
```

**DESPUÉS (TypeAdapters)**:
```dart
final animals = ref.watch(allAnimalesProvider);

animals.when(
  data: (List<AnimalModel> items) => ListView(
    children: items.map((animal) {
      return Text(animal.numeroArete);
    }).toList(),
  ),
  loading: () => CircularProgressIndicator(),
  error: (err, stack) => Text('Error: $err'),
);
```

La única diferencia es `Animal` → `AnimalModel`, ¡pero todo lo demás es igual!

## 3. Crear un Nuevo Animal

```dart
import 'package:miganado/features/animals/data/models/animal_model.dart';

// En tu widget
final animalNotifier = ref.watch(animalNotifierProvider.notifier);

final newAnimal = AnimalModel(
  numeroArete: '001',
  nombrePersonalizado: 'Bessie',
  tipo: TipoGanado.vaca,
  sexo: Sexo.hembra,
  raza: 'Holstein',
  notas: 'Lechera de buena producción',
);

// Guardar
await animalNotifier.saveAnimal(newAnimal);

// El provider se actualiza automáticamente!
ref.refresh(allAnimalesProvider);
```

## 4. Actualizar un Animal

```dart
final animalNotifier = ref.watch(animalNotifierProvider.notifier);

// Obtener el animal
final animal = await database.getAnimalById(animalId);

// Copiar y modificar
final updatedAnimal = animal!.copyWith(
  nombrePersonalizado: 'Bessie Updated',
  vacunado: true,
  fechaUltimaVacuna: DateTime.now(),
);

// Guardar
await animalNotifier.saveAnimal(updatedAnimal);
```

## 5. Calcular Métricas de un Animal

```dart
final calculateMetrics = ref.watch(calculateMetricsProvider);
final costos = await database.getCostosByAnimalId(animalId);
final animal = await database.getAnimalById(animalId);

final metrics = calculateMetrics(
  animal: animal!,
  costos: costos,
);

print('Edad: ${metrics.edadEnAnios} años');
print('Costo total: ${metrics.costoTotal}');
print('Ganancia: ${metrics.gananciaPotencial}');
print('¿Necesita vacuna? ${metrics.requiereVacunacion}');
```

## 6. Validar un Animal

```dart
final validateAnimal = ref.watch(validateAnimalProvider);

final result = validateAnimal(animalModel);

if (result.isValid) {
  print('Animal válido');
} else {
  print('Errores: ${result.errors}');
}
```

## 7. Filtrar Animales

```dart
final filterAnimals = ref.watch(filterAnimalsProvider);

final filtered = filterAnimals(
  animales: allAnimales,
  tipo: TipoGanado.vaca,
  soloVacunados: false,
  conAlertas: true,
);

// O usar el provider directamente:
final alertedAnimals = ref.watch(
  filteredAnimalesProvider(
    FilterCriteria(
      conAlertas: true,
      tipo: TipoGanado.vaca,
    ),
  ),
);
```

## 8. Trabajar con Costos

```dart
// Obtener costos de un animal
final costos = ref.watch(costosByAnimalProvider('animal-id'));

costos.when(
  data: (List<CostoModel> items) {
    for (var costo in items) {
      print('${costo.tipo}: \$${costo.monto} en ${costo.fecha}');
    }
  },
  loading: () => CircularProgressIndicator(),
  error: (err, _) => Text('Error: $err'),
);

// Crear un costo
final costoNotifier = ref.watch(costoNotifierProvider.notifier);

final newCosto = CostoModel(
  animalId: 'animal-id',
  tipo: TipoCosto.medicamento,
  monto: 50.0,
  fecha: DateTime.now(),
  descripcion: 'Antibiótico para mastitis',
);

await costoNotifier.saveCosto(newCosto);
```

## 9. Trabajar con Eventos de Mantenimiento

```dart
// Obtener eventos de un animal
final eventos = ref.watch(eventosByAnimalProvider('animal-id'));

// Crear un evento
final eventoNotifier = ref.watch(
  eventoMantenimientoNotifierProvider.notifier
);

final newEvento = EventoMantenimientoModel(
  animalId: 'animal-id',
  tipo: TipoMantenimiento.vacunacion,
  fecha: DateTime.now(),
  descripcion: 'Vacuna contra fiebre aftosa',
  proximaFecha: DateTime.now().add(Duration(days: 365)),
);

await eventoNotifier.saveEvento(newEvento);
```

## 10. Obtener Estadísticas

```dart
// Estadísticas de costos
final statsC = ref.watch(costosStatisticsProvider);

statsC.when(
  data: (stats) {
    print('Total: \$${stats.totalCostos}');
    print('Promedio: \$${stats.promedioCostos}');
    print('Máximo: \$${stats.maxCosto}');
  },
  loading: () => SizedBox(),
  error: (_, __) => SizedBox(),
);

// Estadísticas de mantenimiento
final statsM = ref.watch(maintenanceStatisticsProvider);

statsM.when(
  data: (stats) {
    print('Total eventos: ${stats.totalEventos}');
    print('Animales con alertas: ${stats.animalesConAlertas}');
    print('Tasa de mantenimiento: ${stats.tasaMantenimiento}');
  },
  loading: () => SizedBox(),
  error: (_, __) => SizedBox(),
);
```

## 11. Patrones Comunes

### Patrón: Leer datos y recalcular en cambios

```dart
class AnimalDetailView extends ConsumerWidget {
  final String animalId;
  
  const AnimalDetailView({required this.animalId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Leer animal
    final animalAsync = ref.watch(animalByIdProvider(animalId));
    
    // Leer costos relacionados
    final costosAsync = ref.watch(costosByAnimalProvider(animalId));
    
    return animalAsync.when(
      data: (animal) => costosAsync.when(
        data: (costos) {
          // Calcular métricas
          final calculateMetrics = ref.watch(calculateMetricsProvider);
          final metrics = calculateMetrics(
            animal: animal!,
            costos: costos,
          );
          
          return Column(
            children: [
              Text('Animal: ${animal.nombrePersonalizado}'),
              Text('Edad: ${metrics.edadEnAnios} años'),
              Text('Costo total: \$${metrics.costoTotal}'),
              Text('Alertas: ${metrics.tieneAlertas ? "Sí" : "No"}'),
            ],
          );
        },
        loading: () => CircularProgressIndicator(),
        error: (e, st) => Text('Error: $e'),
      ),
      loading: () => CircularProgressIndicator(),
      error: (e, st) => Text('Error: $e'),
    );
  }
}
```

### Patrón: Guardar con validación

```dart
Future<void> saveAnimalWithValidation(
  AnimalModel animal,
  WidgetRef ref,
) async {
  final validateAnimal = ref.watch(validateAnimalProvider);
  final animalNotifier = ref.watch(animalNotifierProvider.notifier);
  
  final result = validateAnimal(animal);
  
  if (!result.isValid) {
    // Mostrar errores
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Errores de validación'),
        content: Column(
          children: result.errors.map((e) => Text(e)).toList(),
        ),
      ),
    );
    return;
  }
  
  // Guardar si es válido
  await animalNotifier.saveAnimal(animal);
  
  // Actualizar la lista
  ref.refresh(allAnimalesProvider);
}
```

## 12. Migración de Screens Existentes

### De homescreen.dart

**CAMBIOS NECESARIOS**:

```dart
// ANTES
import 'package:miganado/models/animal.dart';
final animales = ref.watch(allAnimalesProvider);
// ...
animales.data?.value?.forEach((Animal animal) { ... });

// DESPUÉS  
import 'package:miganado/features/animals/data/models/animal_model.dart';
final animales = ref.watch(allAnimalesProvider);
// ...
animales.data?.value?.forEach((AnimalModel animal) { ... });
```

### De detalle_animal_screen.dart

```dart
// ANTES
final animal = await ref.read(animalRepositoryProvider).getAnimalById(id);

// DESPUÉS
final database = ref.watch(databaseProvider);
final animal = await database.getAnimalById(id);

// O usar el provider directamente:
final animal = ref.watch(animalByIdProvider(id));
```

## 13. Testing Use Cases

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/features/animals/domain/usecases/calculate_animal_metrics.dart';

void main() {
  group('CalculateAnimalMetrics', () {
    final useCase = CalculateAnimalMetrics();
    
    test('calcula edad correctamente', () {
      final animal = AnimalModel(
        id: '1',
        numeroArete: '001',
        tipo: TipoGanado.vaca,
        sexo: Sexo.hembra,
        raza: 'Holstein',
        notas: '',
        fechaNacimiento: DateTime.now().subtract(Duration(days: 365)),
      );
      
      final metrics = useCase(animal: animal, costos: []);
      
      expect(metrics.edadEnAnios, 1);
      expect(metrics.edadEnDias, 365);
    });
  });
}
```

## Checklist de Migración

- [ ] Inicializar database provider en main.dart
- [ ] Importar `AnimalModel` en lugar de `Animal`
- [ ] Actualizar screens para usar nuevos providers
- [ ] Probar CRUD operations (Create, Read, Update, Delete)
- [ ] Probar Use Cases (métricas, validación, filtrado)
- [ ] Probar estadísticas
- [ ] Migrar datos legados (si es necesario)
- [ ] Compilar y ejecutar tests
- [ ] Actualizar UI con nuevas funcionalidades

---

**Nota**: Los modelos son mucho más type-safe ahora. El IDE te ayudará con autocompletado y detección de errores en tiempo de compilación.
