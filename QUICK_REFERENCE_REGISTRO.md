# 🚀 Quick Reference - Registro de Animal

## Acceso Rápido a Funcionalidades

### UpdateEtapa (Categoría)
```dart
notifier.updateEtapa(EtapaVida.vaca);
// → Sexo automático: Hembra
// → Llama a registrar
```

### UpdateSexo (Manual)
```dart
notifier.updateSexo(Sexo.macho);
// → Permite override manual
// → Mantiene categoría
```

### Edad: Fecha vs Aproximada
```dart
// Opción 1: Fecha exacta
notifier.updateFechaNacimiento(DateTime(2020, 05, 15));
// Opción 2: Edad aproximada
notifier.updateEdadAproximada(24);
// Toggle entre modos
notifier.toggleUsarEdadAproximada(true);
```

### Información Adicional
```dart
notifier.updateVacunada(true);
notifier.updateTipoVacuna("Fiebre Aftosa");
notifier.updatePeso(650.5);
notifier.updateObservaciones("Animal activo");
```

### Alertas
```dart
notifier.mostrarAlertaArete();  // Mostrar alerta
notifier.cerrarAlertaArete();   // Cerrar alerta
notifier.clearMessages();        // Limpiar todos los mensajes
```

---

## Estado Actual

```dart
// Verificar estado
final estado = ref.watch(registerAnimalProvider);

// Acceso a datos
estado.etapa;                 // ← Categoría actual
estado.sexo;                  // ← Sexo actual
estado.numeroArete;           // ← Arete (vacío si no ingresó)
estado.edadMesesFinal;        // ← Edad calculada
estado.usarEdadAproximada;    // ← Toggle fecha/edad
estado.mostrarAlertaArete;    // ← Mostrar alerta
estado.isLoading;             // ← Registrando
estado.errorMessage;          // ← Error actual
```

---

## Validación

```dart
// Validar automáticamente
if (state.isValid) {
  // OK para registrar
}

// Campos requeridos
- etapa (no null)
- sexo (no null)
- fechaNacimiento (no null) O edadAproximadaMeses (no null)

// TODO LO DEMÁS es opcional
```

---

## Registro

```dart
final animal = await notifier.registrar();

if (animal != null) {
  // Éxito: animal registrado
  print('Animal: ${animal.numeroArete}');
} else {
  // Error: revisar state.errorMessage
  print(state.errorMessage);
}
```

---

## Mapeos

### Categoría → Sexo Automático
```
becerro → macho
becerra → hembra
vaquilla → hembra
torete → macho
novillo → macho
vaca → hembra
toro → macho
```

### Etiquetas de Categoría
```
becerro: "Becerro"
becerra: "Becerra"
vaquilla: "Vaquilla"
torete: "Torete"
novillo: "Novillo"
vaca: "Vaca"
toro: "Toro"
```

---

## Archivos Modificados

```
lib/features/animals/presentation/providers/register_animal_provider.dart
├── RegisterAnimalState (ampliado)
└── RegisterAnimalNotifier (mejorado)

lib/ui/screens/register_animal_screen.dart
├── RegisterAnimalScreen (4 páginas)
├── _Page1Categoria (esencial)
├── _Page2DatosAnimal (datos básicos)
├── _Page3InfoAdicional (fecha + extras)
├── _Page4Confirmacion (resumen)
└── Componentes auxiliares
```

---

## Troubleshooting

### Error: "Por favor completa categoría y sexo"
→ Falta seleccionar etapa y sexo en página 1

### Error: "Por favor ingresa fecha de nacimiento o edad aproximada"
→ Falta seleccionar fecha O edad en página 3

### Alerta: "Falta el Arete"
→ No ingresó número de arete (opcional, pero remindado)
→ Se auto-genera si no existe

### Campo condicional no aparece
→ Verificar que checkbox padre esté marcado
→ Ej: "Tipo de Vacuna" solo aparece si "Vacunado" = true

---

## Testing

```dart
// Test 1: Mínimo
const category = EtapaVida.vaca;
const sex = Sexo.hembra;
final date = DateTime.now();
// → Debe registrar sin errores

// Test 2: Con edad aproximada
const edad = 24;
notifier.toggleUsarEdadAproximada(true);
notifier.updateEdadAproximada(edad);
// → Debe calcular fecha automáticamente

// Test 3: Cambio de categoría
notifier.updateEtapa(EtapaVida.vaca);  // Sexo: Hembra
notifier.updateEtapa(EtapaVida.toro);  // Sexo: Macho automático
// → Sexo debe cambiar automáticamente

// Test 4: Alerta de arete
notifier.mostrarAlertaArete();
// → Debe mostrar alerta naranja
// → No debe bloquear registro
```

---

## Constants

```dart
// Máximo de caracteres
MAX_ARETE = 20
MAX_RAZA = 50
MAX_NOMBRE = 50
MAX_UBICACION = 50
MAX_TIPO_VACUNA = 50
MAX_PESO_DIGITOS = 6
MAX_OBSERVACIONES = 200

// Formato de arete automático
AUTO_ARETE = "AR-{timestamp}"
```

---

## Estados del Notifier

```
┌─────────────────────┐
│   Inicial           │
└──────┬──────────────┘
       ↓
┌─────────────────────┐
│   Editando          │ ← Usuario rellenando
└──────┬──────────────┘
       ↓
┌─────────────────────┐
│   Validando         │ ← Antes de registrar
└──────┬──────────────┘
       ↓
    ╱─┴─╲
   ╱     ╲
  ╱       ╲
 /         \
╱           ╲
Registrando  Error
(isLoading)  (errorMessage)
```

---

## API

### Métodos Públicos del Notifier

```dart
void updateArete(String value)
void updateNombrePersonalizado(String? value)
void updateEspecie(Especie? value)
void updateCategoria(Categoria? value)
void updateEtapa(EtapaVida? value)  ← Con lógica automática
void updateSexo(Sexo? value)
void updateRaza(String value)
void updateFechaNacimiento(DateTime? value)
void updateEdadAproximada(int? value)
void toggleUsarEdadAproximada(bool value)
void updateEsCastrado(bool value)
void updateUbicacion(String? value)
void updateVacunada(bool value)
void updateTipoVacuna(String? value)
void updatePeso(double? value)
void updateObservaciones(String? value)
void mostrarAlertaArete()
void cerrarAlertaArete()
void clearMessages()
Future<Animal?> registrar()
void reset()
```

---

**Última actualización**: 19 de Enero, 2026
**Versión**: 2.0
**Estado**: Producción ✓
