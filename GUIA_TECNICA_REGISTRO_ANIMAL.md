# Guía Técnica: Registro de Nuevo Animal - Estructura del Formulario

## 📋 Estructura General

### Flujo de 4 Páginas

```
┌─────────────────────────────────────┐
│   PÁGINA 1: CATEGORÍA Y SEXO        │ ← ESENCIAL
│  • Categoría/Etapa (requerido)      │
│  • Sexo (automático, editable)      │
│  • Castración (si aplica)           │
└─────────────────────────────────────┘
                ↓
┌─────────────────────────────────────┐
│   PÁGINA 2: DATOS DEL ANIMAL        │ ← OPCIONAL
│  • Número de Arete (auto-genera)    │
│  • Raza                             │
│  • Nombre Personalizado             │
│  • Ubicación (NUEVO)                │
└─────────────────────────────────────┘
                ↓
┌─────────────────────────────────────┐
│   PÁGINA 3: INFO ADICIONAL          │ ← SEMI-OPCIONAL
│  • Fecha/Edad (toggle)              │
│  • Vacunado (NUEVO)                 │
│  • Peso (NUEVO)                     │
│  • Observaciones (NUEVO)            │
└─────────────────────────────────────┘
                ↓
┌─────────────────────────────────────┐
│   PÁGINA 4: CONFIRMACIÓN            │ ← REVISIÓN FINAL
│  • Resumen organizado               │
│  • Botón "Registrar"                │
└─────────────────────────────────────┘
```

---

## 🔧 Implementación Técnica

### State Management (Riverpod)

```dart
class RegisterAnimalState {
  // PÁGINA 1: Categoría y Sexo
  EtapaVida? etapa;                // ← Categoría
  Sexo? sexo;                       // ← Auto desde etapa
  bool esCastrado;                  // ← Para machos
  
  // PÁGINA 2: Datos del Animal
  String numeroArete;               // ← Auto si falta
  String raza;                      // ← Opcional
  String? nombrePersonalizado;      // ← Opcional
  String? ubicacion;                // ← NUEVO
  
  // PÁGINA 3: Fecha y Edad
  DateTime? fechaNacimiento;        // ← Exacta O
  int? edadAproximadaMeses;        // ← Aproximada
  bool usarEdadAproximada;          // ← Toggle
  
  // PÁGINA 3: Info Adicional
  bool vacunada;                    // ← NUEVO
  String? tipoVacuna;              // ← NUEVO
  double? peso;                     // ← NUEVO (kg)
  String? observaciones;            // ← NUEVO
  
  // Control
  bool mostrarAlertaArete;          // ← Alerta visual
  bool isLoading;                   // ← Registrando
  String? errorMessage;             // ← Errores
}
```

### Notifier: Métodos Clave

#### Actualización de Etapa (Sexo Automático)

```dart
void updateEtapa(EtapaVida? value) {
  // Mapeo: EtapaVida → Sexo automático
  final sexoAutomatico = _getSexoAutomatico(value);
  
  state = state.copyWith(
    etapa: value,
    sexo: sexoAutomatico ?? state.sexo,
  );
}

// Mapeo privado
static const Map<EtapaVida, Sexo> _sexoPorEtapa = {
  EtapaVida.becerro: Sexo.macho,
  EtapaVida.becerra: Sexo.hembra,
  EtapaVida.vaquilla: Sexo.hembra,
  EtapaVida.torete: Sexo.macho,
  EtapaVida.novillo: Sexo.macho,
  EtapaVida.vaca: Sexo.hembra,
  EtapaVida.toro: Sexo.macho,
};
```

#### Toggle Fecha vs Edad Aproximada

```dart
void toggleUsarEdadAproximada(bool value) {
  state = state.copyWith(
    usarEdadAproximada: value,
    fechaNacimiento: value ? null : state.fechaNacimiento,
    edadAproximadaMeses: value ? state.edadAproximadaMeses : null,
  );
}
```

#### Calcular Edad Final para Registro

```dart
int get edadMesesFinal {
  if (usarEdadAproximada && edadAproximadaMeses != null) {
    return edadAproximadaMeses!;  // ← Usar valor ingresado
  }
  if (fechaNacimiento != null) {
    final diferencia = DateTime.now().difference(fechaNacimiento!);
    return (diferencia.inDays / 30.44).round();  // ← Calcular
  }
  return 0;
}
```

---

## 🎨 Componentes de UI

### Página 1: Selector de Categoría

```dart
FormDropdown<EtapaVida>(
  label: 'Categoría o Etapa *',
  value: state.etapa,
  items: [
    EtapaVida.becerro,
    EtapaVida.becerra,
    EtapaVida.vaquilla,
    EtapaVida.torete,
    EtapaVida.novillo,
    EtapaVida.vaca,
    EtapaVida.toro,
  ],
  itemLabel: (etapa) => _getEtapaLabel(etapa),
  onChanged: notifier.updateEtapa,
  required: true,
)
```

### Página 3: Toggle Fecha vs Edad

```dart
Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey.shade300),
    borderRadius: BorderRadius.circular(8),
  ),
  child: Row(
    children: [
      // Botón "Fecha Exacta"
      Expanded(
        child: GestureDetector(
          onTap: () => notifier.toggleUsarEdadAproximada(false),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: !state.usarEdadAproximada ? Colors.green.shade50 : Colors.transparent,
            child: const Text('Fecha Exacta', textAlign: TextAlign.center),
          ),
        ),
      ),
      // Divisor
      Container(width: 1, height: 48, color: Colors.grey.shade300),
      // Botón "Edad Aprox."
      Expanded(
        child: GestureDetector(
          onTap: () => notifier.toggleUsarEdadAproximada(true),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: state.usarEdadAproximada ? Colors.green.shade50 : Colors.transparent,
            child: const Text('Edad Aprox.', textAlign: TextAlign.center),
          ),
        ),
      ),
    ],
  ),
)
```

### Página 3: Campo Condicional para Vacuna

```dart
if (state.vacunada)
  FormTextField(
    label: 'Tipo de Vacuna',
    initialValue: state.tipoVacuna,
    onChanged: notifier.updateTipoVacuna,
    required: false,
    maxLength: 50,
  ),
```

### Página 4: Resumen Organizado

```dart
Card(
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        // Sección 1: Datos Básicos
        _SectionTitle('Datos Básicos'),
        _ResumenRow('Arete', _arete),
        _ResumenRow('Categoría', _getEtapaLabel(state.etapa)),
        
        // Sección 2: Datos del Animal
        const Divider(),
        _SectionTitle('Datos del Animal'),
        _ResumenRow('Raza', _raza),
        _ResumenRow('Ubicación', _ubicacion),
        
        // Sección 3: Fecha y Edad
        const Divider(),
        _SectionTitle('Fecha y Edad'),
        _ResumenRow('Fecha Nacimiento', _fechaFormato),
        _ResumenRow('Edad Calculada', _formatearEdad(state.edadMesesFinal)),
        
        // Sección 4: Info Adicional (condicional)
        if (_tieneInfoAdicional)
          const Divider(),
          _SectionTitle('Información Adicional'),
          _ResumenRow('Vacunado', _vacunaTexto),
          _ResumenRow('Peso', '${state.peso} kg'),
      ],
    ),
  ),
)
```

---

## ✅ Validación al Registrar

```dart
Future<Animal?> registrar() async {
  // 1. Validar datos mínimos
  if (state.especie == null || state.categoria == null || state.sexo == null) {
    state = state.copyWith(
      errorMessage: 'Por favor completa categoría y sexo del animal',
    );
    return null;
  }

  // 2. Alerta si no hay arete (pero continúa)
  if (state.numeroArete.isEmpty) {
    mostrarAlertaArete();
  }

  // 3. Validar fecha/edad
  if (!state.usarEdadAproximada && state.fechaNacimiento == null) {
    state = state.copyWith(
      errorMessage: 'Por favor ingresa fecha de nacimiento o edad aproximada',
    );
    return null;
  }

  // 4. Generar arete si no existe
  final arete = state.numeroArete.isNotEmpty
      ? state.numeroArete
      : 'AR-${DateTime.now().millisecondsSinceEpoch}';

  // 5. Calcular fecha de nacimiento si solo hay edad
  late DateTime fechaCalculada;
  if (state.usarEdadAproximada && state.edadAproximadaMeses != null) {
    final diasAtras = (state.edadAproximadaMeses! * 30.44).toInt();
    fechaCalculada = DateTime.now().subtract(Duration(days: diasAtras));
  } else {
    fechaCalculada = state.fechaNacimiento!;
  }

  // 6. Registrar en base de datos
  final animal = await registerUseCase(...);
  
  return animal;
}
```

---

## 📊 Mapeo de Categorías por Edad

| Meses | Becerro/a | Torete | Novillo | Vaquilla | Toro | Vaca |
|-------|-----------|--------|---------|----------|------|------|
| 0-12  | ✓         | -      | -       | -        | -    | -    |
| 12-24 | -         | ✓      | ✓       | ✓        | -    | -    |
| 24+   | -         | -      | -       | -        | ✓    | ✓    |

**Sistema automático**: Si la edad no coincide con la categoría, se notifica al usuario para ajuste.

---

## 🔄 Ciclo de Datos

```
┌──────────────────────────────────┐
│  Usuario selecciona Categoría    │
└──────────────┬───────────────────┘
               ↓
     ┌─────────────────────┐
     │ updateEtapa()       │
     │ • Sexo automático   │
     │ • Actualizar state  │
     └─────────────────────┘
               ↓
    ┌──────────────────────────┐
    │ UI reconstruida con      │
    │ nuevo sexo automático    │
    └──────────────────────────┘
               ↓
  ┌────────────────────────────────┐
  │ Usuario puede cambiar manualmente│
  │ el sexo si es necesario         │
  └────────────────────────────────┘
               ↓
      ┌──────────────────────┐
      │ updateSexo()         │
      │ • Actualizar estado  │
      └──────────────────────┘
```

---

## 🚨 Manejo de Errores

### Errores de Validación

```dart
// Error: Falta categoría/sexo
"Por favor completa categoría y sexo del animal"

// Error: Falta fecha/edad
"Por favor ingresa fecha de nacimiento o edad aproximada"

// Error: Otros
"Error inesperado: {exception}"
```

### Alertas (No Bloqueantes)

```dart
// Alerta: Arete faltante
"⚠️ Recordatorio: Falta el Arete
    Se generará un arete automático"
```

---

## 📱 Responsive Design

- **PageView** con física deshabilitada para navegación programática
- **ScrollView** en cada página para contenido largo
- **Botones adaptables** que se ajustan a diferentes pantallas
- **Indicadores visuales** siempre visibles (4 puntos)

---

## 🎯 Requisitos Cumplidos

✅ **Categoría/Etapa** - Dropdown con 7 opciones
✅ **Sexo Automático** - Carga según categoría, cambia nombre si se modifica
✅ **Número de Arete** - Opcional con alerta si falta
✅ **Raza** - Campo opcional
✅ **Nombre Personalizado** - Campo opcional
✅ **Fecha de Nacimiento** - Opcional o edad aproximada
✅ **Ubicación** - NUEVO campo añadido
✅ **Información Adicional** - Vacunada, peso, observaciones

---

**Última actualización**: 19 de Enero, 2026
