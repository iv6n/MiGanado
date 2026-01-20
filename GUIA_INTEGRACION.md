# Guía de Integración - MiGanado Refactorizado

> **Versión:** 2.0.0  
> **Fecha:** 19 de enero, 2026  
> **Estado:** Nuevos componentes listos para integrar

---

## 🎯 Resumen de Mejoras

Tu app ha sido refactorizada con:

✅ **8 errores de compilación corregidos**  
✅ **Sistema de validación centralizado**  
✅ **Servicio de errores consistente**  
✅ **Cálculo de edad por peso implementado**  
✅ **Búsqueda y filtrado de animales**  
✅ **Widgets reutilizables validados**  

---

## 📦 Nuevos Componentes Disponibles

### 1. InputValidators (Validación)
**Ubicación:** `lib/core/validators/input_validators.dart`

Proporciona métodos estáticos para validar entrada:
```dart
InputValidators.validateAnimalName(nombre);     // Nombres (2-50 chars)
InputValidators.validateWeight(peso);           // Peso (0.1-1000)
InputValidators.validatePrice(precio);          // Precio (0-9M)
InputValidators.validateEmail(correo);          // Email válido
InputValidators.validatePhone(telefono);        // Teléfono (7-15 dígitos)
InputValidators.validateNumber(valor, label);   // Número con rango
InputValidators.validateNotEmpty(valor, label); // Campo obligatorio
```

---

### 2. ErrorService (Manejo de Errores)
**Ubicación:** `lib/core/services/error_service.dart`

Muestra errores, éxito, y confirmaciones:
```dart
// SnackBars
ErrorService.showError(context, 'Algo salió mal');
ErrorService.showSuccess(context, 'Éxito');
ErrorService.showWarning(context, 'Advertencia');
ErrorService.showInfo(context, 'Información');

// Dialogs
ErrorService.showErrorDialog(context, 'Error', 'Descripción', onRetry: () {});
final confirmed = await ErrorService.showConfirmDialog(
  context,
  'Confirmar',
  '¿Está seguro?'
);
```

---

### 3. ValidatedTextField (Campo Validado)
**Ubicación:** `lib/features/animals/presentation/widgets/validated_form_fields.dart`

Campo de texto con validación en tiempo real:
```dart
ValidatedTextField(
  label: 'Nombre del Animal',
  validationType: 'animalName',    // 'text', 'number', 'weight', 'price', 'email', etc
  required: true,
  onChanged: (value) { nombre = value; },
  customValidator: (value) {       // Opcional: validación personalizada
    return value?.length ?? 0 < 3 ? 'Mínimo 3 caracteres' : null;
  },
)
```

---

### 4. ValidatedDropdown (Dropdown Validado)
**Ubicación:** `lib/features/animals/presentation/widgets/validated_form_fields.dart`

Dropdown con validación:
```dart
ValidatedDropdown<String>(
  label: 'Tipo de Animal',
  value: tipoAnimal,
  items: ['Bovino', 'Caprino', 'Ovino'],
  required: true,
  onChanged: (value) { tipoAnimal = value; },
)
```

---

### 5. ValidatedDateField (Fecha Validada)
**Ubicación:** `lib/features/animals/presentation/widgets/validated_form_fields.dart`

Selector de fecha con validación:
```dart
ValidatedDateField(
  label: 'Fecha de Nacimiento',
  value: fechaNacimiento,
  required: true,
  firstDate: DateTime(1900),
  lastDate: DateTime.now(),
  onChanged: (date) { fechaNacimiento = date; },
)
```

---

### 6. Tabla de Edad-Peso
**Ubicación:** `lib/features/animals/domain/usecases/tabla_edad_peso.dart`

Estima edad basada en peso:
```dart
import 'package:miganado/features/animals/domain/usecases/tabla_edad_peso.dart';

// Obtener tabla para tipo de animal
final tabla = TablaEdadPeso.obtenerTabla('bovino');

// Estimar edad por peso
int edadMeses = TablaEdadPeso.estimarEdadPorPeso(450, tabla);

// Validar peso para edad
final (valido, mensaje) = TablaEdadPeso.validarPesoParaEdad(
  edadMeses: 24,
  peso: 450,
  tipoAnimal: 'bovino',
);
if (!valido) print(mensaje); // "Peso dentro del rango esperado"
```

---

### 7. Búsqueda y Filtrado
**Ubicación:** `lib/features/animals/presentation/providers/search_filter_providers.dart`

Providers para búsqueda dinámica:
```dart
// Providers de estado
searchQueryProvider;         // Término de búsqueda
animalTypeFilterProvider;    // Filtro por tipo
animalStatusFilterProvider;  // Filtro por estado

// Providers de datos
filteredAnimalsProvider;     // Lista filtrada
uniqueAnimalTypesProvider;   // Tipos únicos
animalCountByStatusProvider; // Conteos
animalCountByTypeProvider;   // Conteos por tipo

// En UI:
final filtered = ref.watch(filteredAnimalsProvider);
ref.read(searchQueryProvider.notifier).state = 'búsqueda';
```

---

### 8. Widgets de Búsqueda
**Ubicación:** `lib/features/animals/presentation/widgets/search_filter_widgets.dart`

Componentes listos para usar:
```dart
// Barra de búsqueda
SearchFilterBar(onFilterTap: () { /* abrir dialog */ }),

// Dialog de filtros
AdvancedFilterDialog(),

// Card de estadísticas
SearchStatsCard(),
```

---

## 🚀 Cómo Integrar

### Paso 1: Reemplazar Validadores Manuales

**ANTES:**
```dart
if (nombre.isEmpty) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('El nombre es requerido'))
  );
  return;
}
```

**DESPUÉS:**
```dart
final error = InputValidators.validateAnimalName(nombre);
if (error != null) {
  ErrorService.showError(context, error);
  return;
}
```

---

### Paso 2: Usar Campos Validados en Formularios

**ANTES:**
```dart
TextField(
  onChanged: (value) => nombre = value,
  decoration: InputDecoration(labelText: 'Nombre'),
)
```

**DESPUÉS:**
```dart
ValidatedTextField(
  label: 'Nombre',
  validationType: 'animalName',
  required: true,
  onChanged: (value) => nombre = value,
)
```

---

### Paso 3: Integrar Búsqueda en Home Screen

**Agregar a home_screen.dart:**
```dart
// En imports
import 'package:miganado/features/animals/presentation/providers/search_filter_providers.dart';
import 'package:miganado/features/animals/presentation/widgets/search_filter_widgets.dart';

// En build():
Scaffold(
  body: Column(
    children: [
      // Barra de búsqueda
      SearchFilterBar(
        onFilterTap: () {
          showDialog(
            context: context,
            builder: (_) => const AdvancedFilterDialog(),
          );
        },
      ),
      
      // Estadísticas
      SearchStatsCard(),
      
      // Lista filtrada
      Expanded(
        child: Consumer(
          builder: (context, ref, child) {
            final filtered = ref.watch(filteredAnimalsProvider);
            return filtered.when(
              data: (animals) => ListView.builder(
                itemCount: animals.length,
                itemBuilder: (_, i) => AnimalListTile(animals[i]),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (e, _) => ErrorService.showErrorMessage(e),
            );
          },
        ),
      ),
    ],
  ),
)
```

---

### Paso 4: Mejorar Manejo de Errores

**Reemplazar todos los:**
```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('Error: $error'))
);
```

**Por:**
```dart
ErrorService.showError(context, error);
```

---

## 📋 Checklist de Integración

- [ ] Revisar `lib/core/validators/input_validators.dart`
- [ ] Revisar `lib/core/services/error_service.dart`
- [ ] Revisar `lib/features/animals/presentation/widgets/validated_form_fields.dart`
- [ ] Revisar `lib/features/animals/domain/usecases/tabla_edad_peso.dart`
- [ ] Integrar `ValidatedTextField` en `register_animal_screen.dart`
- [ ] Integrar `ValidatedDropdown` en formularios de costos/ubicaciones
- [ ] Integrar `ErrorService` en try-catch blocks
- [ ] Integrar `SearchFilterBar` en home screen
- [ ] Testar búsqueda y filtrado
- [ ] Testar validaciones en todos los formularios
- [ ] Testar cálculo de edad por peso
- [ ] Compilar y revisar lint issues: `flutter analyze`

---

## ⚠️ Notas Importantes

1. **Los validadores retornan `null` si es válido, o un `String` con error**
   ```dart
   final error = InputValidators.validateWeight(peso);
   if (error != null) { /* mostrar error */ }
   ```

2. **ErrorService requiere BuildContext**
   ```dart
   // ✅ Correcto: dentro de un widget que tiene context
   ErrorService.showError(context, mensaje);
   
   // ❌ Incorrecto: sin context
   // ErrorService.showError(null, mensaje);
   ```

3. **Búsqueda es en tiempo real**
   - Cada cambio en `searchQueryProvider` actualiza automáticamente `filteredAnimalsProvider`
   - Considera performance si hay miles de animales

4. **Tablas de edad-peso son aproximadas**
   - Basadas en razas comunes de América Latina
   - Varían significativamente por raza, sexo, nutrición
   - Usar como referencia, no verdad absoluta

---

## 🔍 Ejemplos Completos

### Ejemplo 1: Formulario con Validación

```dart
import 'package:flutter/material.dart';
import 'package:miganado/core/validators/input_validators.dart';
import 'package:miganado/core/services/error_service.dart';
import 'package:miganado/features/animals/presentation/widgets/validated_form_fields.dart';

class RegisterAnimalForm extends StatefulWidget {
  @override
  State<RegisterAnimalForm> createState() => _RegisterAnimalFormState();
}

class _RegisterAnimalFormState extends State<RegisterAnimalForm> {
  final _formKey = GlobalKey<FormState>();
  String nombre = '';
  String tipoAnimal = 'Bovino';
  double? peso;
  DateTime? fechaNacimiento;

  void _registrar() {
    if (!_formKey.currentState!.validate()) return;

    try {
      // Lógica de registro aquí
      print('Registrando: $nombre, $tipoAnimal, $peso kg');
      
      ErrorService.showSuccess(
        context,
        'Animal registrado exitosamente',
      );
      
      // Limpiar formulario
      _formKey.currentState!.reset();
    } catch (e) {
      ErrorService.showError(
        context,
        ErrorService.getFriendlyErrorMessage(e),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
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
            items: const ['Bovino', 'Caprino', 'Ovino'],
            required: true,
            onChanged: (v) => tipoAnimal = v ?? 'Bovino',
          ),
          ValidatedTextField(
            label: 'Peso (kg)',
            validationType: 'weight',
            keyboardType: TextInputType.number,
            required: false,
            onChanged: (v) => peso = double.tryParse(v),
          ),
          ValidatedDateField(
            label: 'Fecha de Nacimiento',
            required: false,
            lastDate: DateTime.now(),
            onChanged: (d) => fechaNacimiento = d,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _registrar,
            child: const Text('Registrar Animal'),
          ),
        ],
      ),
    );
  }
}
```

### Ejemplo 2: Lista con Búsqueda

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/search_filter_providers.dart';
import 'package:miganado/features/animals/presentation/widgets/search_filter_widgets.dart';

class AnimalsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtered = ref.watch(filteredAnimalsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Mis Animales')),
      body: Column(
        children: [
          SearchFilterBar(
            onFilterTap: () => showDialog(
              context: context,
              builder: (_) => const AdvancedFilterDialog(),
            ),
          ),
          SearchStatsCard(),
          Expanded(
            child: filtered.when(
              data: (animals) => animals.isEmpty
                  ? const Center(child: Text('No hay animales'))
                  : ListView.builder(
                      itemCount: animals.length,
                      itemBuilder: (_, i) => ListTile(
                        title: Text(animals[i].nombre),
                        subtitle: Text(animals[i].tipoAnimal),
                        trailing: const Icon(Icons.arrow_forward),
                      ),
                    ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }
}
```

---

## 📞 Soporte

Si encuentra problemas durante la integración:

1. Revisar imports correctos
2. Verificar que `ErrorService` recibe `BuildContext` válido
3. Verificar que providers están siendo watcheados/leídos correctamente
4. Compilar con `flutter clean && flutter pub get && flutter analyze`

---

**¡Listo para comenzar la integración!** 🎉
