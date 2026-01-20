# Mejoras del Formulario de Registro de Nuevo Animal

## Resumen Ejecutivo

Se ha completamente rediseñado y mejorado el formulario de registro de animales con un enfoque **100% user-friendly** y conforme a los requerimientos especificados. El formulario ahora es más intuitivo, lógico y sigue un flujo ordenado en 4 páginas.

---

## Cambios Principales

### 1. **Estructura del Formulario - 4 Páginas Mejoradas**

#### Página 1: Categoría o Etapa (ESENCIAL)
- **Campo Principal**: Selector de categoría/etapa de vida
  - Becerro / Becerra
  - Vaquilla
  - Torete
  - Novillo
  - Vaca
  - Toro
  
- **Sexo Automático**: 
  - Se selecciona automáticamente según la categoría elegida
  - Excepto en "Becerro" y "Becerra" que permiten cambio manual
  - Cambio de nombre automático si se cambia el sexo (ej: Vaca ↔ Toro)
  
- **Castración**: 
  - Solo disponible para machos que no sean torete (ya castrados por defecto)

#### Página 2: Datos del Animal
- **Número de Arete** (OPCIONAL)
  - Si no se ingresa, se genera automáticamente
  - Alerta visual para recordar al usuario
  
- **Raza** (OPCIONAL)
  - Autocompleta con historiales si existen
  
- **Nombre Personalizado** (OPCIONAL)
  - Hasta 50 caracteres
  
- **Ubicación** (NUEVO)
  - Permite registrar dónde está el animal
  - Integración con sistema de ubicaciones

#### Página 3: Información Adicional
- **Fecha de Nacimiento o Edad Aproximada** (ESENCIAL)
  - Toggle para seleccionar entre:
    - **Fecha Exacta**: Calendario con picker
    - **Edad Aproximada**: Ingreso en meses
  - Automáticamente calcula la edad faltante
  
- **Información Adicional** (OPCIONAL):
  - ✓ **Vacunado/a**: Checkbox + campo de tipo de vacuna
  - ✓ **Peso**: En kilogramos (decimal)
  - ✓ **Observaciones**: Hasta 200 caracteres, 3 líneas

#### Página 4: Confirmación
- Resumen completo organizando por secciones:
  - Datos Básicos
  - Datos del Animal
  - Fecha y Edad
  - Información Adicional (si existe)
- Botón final: "Registrar"

---

## Características Implementadas

### ✨ Lógica de Sexo Automático

```dart
// Mapeo automático por categoría:
- Becerro → Macho
- Becerra → Hembra
- Vaquilla → Hembra
- Torete → Macho (no castrado)
- Novillo → Macho (castrado)
- Vaca → Hembra
- Toro → Macho
```

**Comportamiento:**
- Al cambiar la categoría, el sexo se actualiza automáticamente
- El usuario puede cambiar manualmente el sexo
- Si cambia el sexo, la categoría se ajusta automáticamente:
  - Vaca → Toro (si cambia a macho)
  - Toro → Vaca (si cambia a hembra)

---

### 📍 Validación y Alertas

#### Alert de Arete Faltante
```
⚠️ Recordatorio: Falta el Arete
   Se generará un arete automático
```
- No impide el registro
- Se muestra mientras se completa el formulario
- Se puede cerrar manualmente

#### Validación de Datos Mínimos
- Se requiere obligatoriamente:
  - ✓ Categoría/Etapa
  - ✓ Sexo
  - ✓ Fecha de nacimiento O edad aproximada
- TODO LO DEMÁS es opcional

---

### 🔄 Modo de Edad

#### Fecha Exacta
- Usa calendario nativo
- Almacena fecha completa de nacimiento
- Más preciso

#### Edad Aproximada (NUEVO)
- Solo requiere ingresar meses
- Ideal para animales sin fecha exacta conocida
- Se calcula automáticamente la fecha de nacimiento
- Sistema detecta automáticamente si la categoría no coincide y notifica

---

### 🏷️ Campos Opcionales (User-Friendly)

Todos son verdaderamente opcionales:

| Campo | Requerido | Notas |
|-------|-----------|-------|
| Arete | No | Auto-generado si falta |
| Raza | No | Campo texto libre |
| Nombre | No | Para identificación personal |
| Ubicación | No | Nuevo campo añadido |
| Vacunado | No | Checkbox + tipo |
| Peso | No | Decimal en kg |
| Observaciones | No | Hasta 200 caracteres |

---

## Estado del Provider (RegisterAnimalState)

### Nuevos Campos Agregados

```dart
// Datos básicos
final Sexo? sexo;                    // Automático pero editable
final bool esCastrado;                // Para machos

// Datos adicionales  
final int? edadAproximadaMeses;       // Edad en meses
final bool usarEdadAproximada;        // Toggle fecha vs edad
final String? ubicacion;              // NUEVO CAMPO

// Información adicional
final bool vacunada;                  // NUEVO
final String? tipoVacuna;            // NUEVO
final double? peso;                   // NUEVO
final String? observaciones;          // NUEVO

// Control de alertas
final bool mostrarAlertaArete;        // Alerta de arete faltante
```

### Métodos del Notifier

```dart
updateEtapa(EtapaVida?)              // Con lógica de sexo automático
updateSexo(Sexo?)                     // Manual
toggleUsarEdadAproximada(bool)        // Toggle fecha vs edad
updateEdadAproximada(int?)            // Edad en meses
updateUbicacion(String?)              // NUEVO
updateVacunada(bool)                  // NUEVO
updateTipoVacuna(String?)            // NUEVO
updatePeso(double?)                   // NUEVO
updateObservaciones(String?)          // NUEVO
mostrarAlertaArete()                  // Mostrar alerta
cerrarAlertaArete()                   // Cerrar alerta
```

---

## Flujo de Validación al Registrar

```
1. ¿Categoría, Sexo, Fecha/Edad OK?
   → SÍ: Continuar
   → NO: Mostrar error

2. ¿Falta Arete?
   → SÍ: Mostrar alerta (pero continúa)
   → NO: Proceder

3. Calcular edad en meses:
   - Si fecha exacta: calcular desde hoy
   - Si edad aproximada: usar valor ingresado

4. Generar arete si no existe
   → Formato: AR-{timestamp}

5. Registrar animal con todos los datos
```

---

## Interfaz de Usuario (UX)

### Indicadores Visuales

- **4 puntos indicadores** de progreso (página actual)
- **Información en azul**: Instrucciones sobre sexo automático
- **Alertas en naranja**: Recordatorios (arete faltante)
- **Errores en rojo**: Problemas de validación
- **Confirmación en verde**: Listado final antes de registrar

### Navegación

- Botones "Anterior" y "Siguiente" (exceptuando página 1)
- La primera página siempre accesible desde cualquier lugar
- Botón final "Registrar" en la página 4

### Responsive Design

- Funciona en pantallas de todos los tamaños
- ScrollView en cada página para contenido que se desborda
- Elementos adaptables a diferentes resoluciones

---

## Ejemplos de Uso

### Caso 1: Becerra recién nacida (sin arete, sin fecha exacta)

```
1. Seleccionar: Becerra → Sexo: Hembra (automático)
2. Siguente
3. Dejar en blanco: Arete, Raza, Nombre
4. Seleccionar ubicación
5. Siguiente
6. Seleccionar: Edad Aproximada → 1 mes
7. Opcional: Marcar vacunada, ingresar peso
8. Siguiente
9. Revisar resumen → Registrar
✓ Resultado: Animal registrado con arete auto-generado
```

### Caso 2: Toro adulto conocido

```
1. Seleccionar: Toro → Sexo: Macho (automático)
2. Siguiente
3. Ingresar: Arete "T-001", Raza "Brahman", Nombre "Dorado"
4. Ubicación: "Potrero Norte"
5. Siguiente
6. Seleccionar: Fecha Exacta → 15/05/2020
7. Marcar: Vacunado (Fiebre Aftosa), Peso 850 kg
8. Siguiente
9. Revisar → Registrar
✓ Resultado: Toro registrado con todos los datos
```

### Caso 3: Vaquilla que cambió sexo

```
1. Seleccionar: Vaquilla → Sexo: Hembra (automático)
   ...completa datos...
5. En Page 4, revisar y ver que es Hembra
   Oups! El animal es Macho
6. Volver atrás a Page 1
7. Cambiar Sexo a: Macho
   → Categoría se actualiza automáticamente a: Torete
   ✓ Sistema mantiene coherencia automática
```

---

## Integración con Base de Datos

Los campos se guardan directamente en `AnimalEntity`:

- `etapa`: Enum automático
- `sexo`: Enum actual
- `esCastrado`: Boolean
- `fechaNacimiento`: DateTime
- `edadMeses`: Calculado
- `ubicacion`: String nuevo
- `vacunado`: Boolean nuevo
- `tipoVacuna`: String nuevo
- `peso`: Double nuevo
- `observaciones`: String nuevo

---

## Próximos Pasos Opcionales

1. **Fotos**: Agregar galería de fotos del animal
2. **Historial**: Mostrar historial de vacunaciones/pesajes
3. **Validación de Arete**: Verificar arete único en sistema
4. **Auto-complete**: Raza, ubicación desde historiales
5. **Exportación**: PDF con resumen del registro
6. **Códigos QR**: Generar QR automático del arete

---

## Archivos Modificados

```
✓ lib/features/animals/presentation/providers/register_animal_provider.dart
  - Estado ampliado con nuevos campos
  - Lógica de sexo automático
  - Métodos de validación mejorados

✓ lib/ui/screens/register_animal_screen.dart
  - Rediseño completo de 3 a 4 páginas
  - UX mejorada con componentes reutilizables
  - Alertas y validaciones visuales
```

---

## Testing Manual

Recomendamos probar:

1. ✓ Crear animal mínimo (solo categoría + sexo)
2. ✓ Crear animal completo (todos los campos)
3. ✓ Cambiar sexo manualmente
4. ✓ Toggle entre fecha exacta y aproximada
5. ✓ Navegar adelante y atrás
6. ✓ Alerta de arete faltante
7. ✓ Resumen final coherente

---

**Fecha**: 19 de Enero, 2026
**Estado**: Completado ✓
**Compatibilidad**: Flutter, Riverpod, Isar DB
