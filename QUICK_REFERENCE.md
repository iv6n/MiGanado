# 📑 Guía Rápida de Imports

Usa esta guía para copiar-pegar los imports correctos en tus files.

---

## Validadores

```dart
import 'package:miganado/core/validators/input_validators.dart';

// Uso:
final error = InputValidators.validateAnimalName(nombre);
if (error != null) {
  // mostrar error
}
```

---

## Servicio de Errores

```dart
import 'package:miganado/core/services/error_service.dart';

// Uso:
ErrorService.showError(context, 'Mensaje');
ErrorService.showSuccess(context, 'Éxito');
```

---

## Widgets Validados (Campos Validados)

```dart
import 'package:miganado/features/animals/presentation/widgets/validated_form_fields.dart';

// Uso:
ValidatedTextField(...)
ValidatedDropdown<T>(...)
ValidatedDateField(...)
```

---

## Tabla de Edad-Peso

```dart
import 'package:miganado/features/animals/domain/usecases/tabla_edad_peso.dart';

// Uso:
TablaEdadPeso.obtenerTabla('bovino');
TablaEdadPeso.estimarEdadPorPeso(peso, tabla);
TablaEdadPeso.validarPesoParaEdad(edad, peso, tipo);
```

---

## Búsqueda y Filtrado (Providers)

```dart
import 'package:miganado/features/animals/presentation/providers/search_filter_providers.dart';

// Providers disponibles:
// - searchQueryProvider
// - animalTypeFilterProvider
// - animalStatusFilterProvider
// - filteredAnimalsProvider
// - uniqueAnimalTypesProvider
// - animalCountByStatusProvider
// - animalCountByTypeProvider
```

---

## Widgets de Búsqueda

```dart
import 'package:miganado/features/animals/presentation/widgets/search_filter_widgets.dart';

// Widgets disponibles:
// - SearchFilterBar
// - AdvancedFilterDialog
// - SearchStatsCard
```

---

## Complete Example: Register Form

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/validators/input_validators.dart';
import 'package:miganado/core/services/error_service.dart';
import 'package:miganado/features/animals/presentation/widgets/validated_form_fields.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String nombre = '';
  String tipoAnimal = 'Bovino';

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    try {
      // Tu lógica aquí
      ErrorService.showSuccess(context, 'Registrado exitosamente');
    } catch (e) {
      ErrorService.showError(context, 
        ErrorService.getFriendlyErrorMessage(e)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrar')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            ValidatedTextField(
              label: 'Nombre',
              validationType: 'animalName',
              required: true,
              onChanged: (v) => nombre = v,
            ),
            ValidatedDropdown<String>(
              label: 'Tipo',
              value: tipoAnimal,
              items: ['Bovino', 'Caprino', 'Ovino'],
              required: true,
              onChanged: (v) => tipoAnimal = v ?? 'Bovino',
            ),
            ElevatedButton(onPressed: _submit, child: Text('Guardar')),
          ],
        ),
      ),
    );
  }
}
```

---

## Complete Example: Search List

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/search_filter_providers.dart';
import 'package:miganado/features/animals/presentation/widgets/search_filter_widgets.dart';

class AnimalsListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtered = ref.watch(filteredAnimalsProvider);

    return Scaffold(
      body: Column(
        children: [
          SearchFilterBar(
            onFilterTap: () => showDialog(
              context: context,
              builder: (_) => AdvancedFilterDialog(),
            ),
          ),
          SearchStatsCard(),
          Expanded(
            child: filtered.when(
              data: (animals) => ListView.builder(
                itemCount: animals.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(animals[i].nombre),
                ),
              ),
              loading: () => CircularProgressIndicator(),
              error: (e, _) => Text('Error: $e'),
            ),
          ),
        ],
      ),
    );
  }
}
```

---

## Tabla Rápida de Tipos de Validación

```dart
ValidatedTextField(
  validationType: 'text',        // Texto genérico
  validationType: 'number',      // Número
  validationType: 'weight',      // Peso (0.1-1000)
  validationType: 'price',       // Precio (0-9M)
  validationType: 'email',       // Email
  validationType: 'phone',       // Teléfono
  validationType: 'animalName',  // Nombre animal
  validationType: 'code',        // Código
)
```

---

## Errores Comunes y Soluciones

### Error: "Undefined name 'ErrorService'"
```dart
// ✅ CORRECTO:
import 'package:miganado/core/services/error_service.dart';
ErrorService.showError(context, msg);

// ❌ INCORRECTO:
ErrorService.showError(context, msg); // Sin import
```

### Error: "BuildContext is required"
```dart
// ✅ CORRECTO: ErrorService necesita context válido
void _handler(BuildContext context) {
  ErrorService.showError(context, msg);
}

// ❌ INCORRECTO:
ErrorService.showError(null, msg); // No puede ser null
```

### Error: "Cannot find provider"
```dart
// ✅ CORRECTO: Ver en search_filter_providers
final filtered = ref.watch(filteredAnimalsProvider);

// ❌ INCORRECTO:
final filtered = ref.watch(filteredAnimals); // No existe
```

---

## Testing Rápido

Para verificar que todo funciona:

```dart
// Test de validadores
test('ValidateAnimalName', () {
  expect(InputValidators.validateAnimalName('Bo'), null); // Válido
  expect(InputValidators.validateAnimalName('B'), isNotNull); // Inválido
});

// Test de widgets en flutter test:
testWidgets('ValidatedTextField', (WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: ValidatedTextField(
        label: 'Test',
        onChanged: (_) {},
      ),
    ),
  );
  expect(find.byType(ValidatedTextField), findsOneWidget);
});
```

---

## Comandos Útiles

```bash
# Limpiar y compilar
flutter clean && flutter pub get

# Ver análisis
flutter analyze

# Ver imports no usados
flutter analyze 2>&1 | grep "unused_import"

# Compilar APK
flutter build apk

# Compilar iOS
flutter build ios

# Ver paquetes desactualizados
flutter pub outdated
```

---

**Guardado:** 19 de enero, 2026  
**Versión:** 2.0.0
