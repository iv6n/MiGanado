# 📋 Checklist Completo del Formulario de Registro de Animal

## Verificación de Requisitos Implementados

### ✅ Categoría o Etapa de Vaca

- [x] Becerro
- [x] Vaquilla
- [x] Torete
- [x] Novillo
- [x] Vaca
- [x] Toro
- [x] Caballo (preparado para expansión)
- [x] Burro (preparado para expansión)
- [x] Mula (preparado para expansión)

**Ubicación**: Página 1 - Dropdown "Categoría o Etapa"

---

### ✅ Sexo - Carga Automática

- [x] Selección automática según categoría
  - Becerro → Macho
  - Becerra → Hembra
  - Vaquilla → Hembra
  - Torete → Macho
  - Novillo → Macho
  - Vaca → Hembra
  - Toro → Macho

- [x] Cambio automático de nombre si se modifica
  - Vaca → Toro (cambio de sexo)
  - Toro → Vaca (cambio de sexo)
  - Torete → Novillo (castración)

- [x] Permite cambio manual en becerro/becerra

**Ubicación**: Página 1 - Dropdown "Sexo" con info visual

**Lógica**: En `RegisterAnimalNotifier.updateEtapa()`

---

### ✅ Número de Arete

- [x] Campo OPCIONAL
- [x] Auto-generación si falta: `AR-{timestamp}`
- [x] Alerta visual naranja recordando si no se ingresa
  - No impide el registro
  - Se muestra mientras se completa el formulario
  - Se puede cerrar manualmente

**Ubicación**: Página 2 - Campo texto "Número de Arete"

**Lógica**: En `RegisterAnimalNotifier.mostrarAlertaArete()`

---

### ✅ Raza

- [x] Campo OPCIONAL
- [x] Texto libre
- [x] Máximo 50 caracteres
- [x] No requerido para registro

**Ubicación**: Página 2 - Campo texto "Raza"

---

### ✅ Nombre Personalizado

- [x] Campo OPCIONAL
- [x] Texto libre para apodos (ej: "Blanquita", "Lucero")
- [x] Máximo 50 caracteres
- [x] No requerido para registro

**Ubicación**: Página 2 - Campo texto "Nombre Personalizado"

---

### ✅ Fecha de Nacimiento

- [x] Campo OPCIONAL (pero requerido O edad aproximada)
- [x] Calendario nativo para selección
- [x] Validación: No futura
- [x] Toggle para cambiar entre fecha exacta y edad aproximada

**Ubicación**: Página 3 - Calendario con DatePicker

---

### ✅ Edad Aproximada

- [x] Alternativa a fecha exacta
- [x] Ingreso en meses
- [x] Máximo 3 dígitos
- [x] Auto-calcula la fecha de nacimiento
- [x] Sistema detecta inconsistencia con categoría

**Ubicación**: Página 3 - Campo "Edad Aproximada (meses)"

**Lógica**: `RegisterAnimalNotifier.updateEdadAproximada()`

---

### ✅ Ubicación

- [x] **NUEVO CAMPO AGREGADO**
- [x] Campo OPCIONAL
- [x] Texto libre
- [x] Máximo 50 caracteres
- [x] Se visualiza en el resumen final

**Ubicación**: Página 2 - Campo texto "Ubicación"

**Integración**: Almacenado en `AnimalEntity.ubicacion`

---

### ✅ Opción de Agregar Más Información

#### Vacunada

- [x] Checkbox "Está vacunado/a"
- [x] Campo condicional "Tipo de Vacuna"
- [x] Se oculta si no está marcada
- [x] Ejemplos: Fiebre Aftosa, Brucelosis, etc.

**Ubicación**: Página 3 - Checkbox + Campo condicional

---

#### Peso

- [x] Campo "Peso (kg)"
- [x] Acepta decimales
- [x] Almacena peso actual
- [x] Máximo 6 caracteres
- [x] OPCIONAL

**Ubicación**: Página 3 - Campo "Peso (kg)"

---

#### Observaciones

- [x] Campo "Observaciones"
- [x] Texto libre con 3 líneas disponibles
- [x] Máximo 200 caracteres
- [x] Para notas adicionales: estado general, comportamiento, etc.
- [x] OPCIONAL

**Ubicación**: Página 3 - Campo multi-línea "Observaciones"

---

## 📱 Estructura del Formulario

### Página 1: Datos Básicos Esenciales
```
┌────────────────────────────────────┐
│ Categoría o Etapa                  │ [Dropdown]
│ Información sobre sexo automático  │ [Alerta azul]
│ Sexo                               │ [Dropdown]
│ ¿Está castrado?                    │ [Checkbox] (si aplica)
└────────────────────────────────────┘
```

### Página 2: Datos del Animal
```
┌────────────────────────────────────┐
│ Número de Arete                    │ [Texto] (Opcional)
│ Raza                               │ [Texto] (Opcional)
│ Nombre Personalizado               │ [Texto] (Opcional)
│ Ubicación                          │ [Texto] (Opcional) ← NUEVO
└────────────────────────────────────┘
```

### Página 3: Información Adicional
```
┌────────────────────────────────────┐
│ Fecha de Nacimiento [Toggle]       │
│ ⚪ Fecha Exacta | Edad Aprox. ⚪   │
│                                    │
│ [Calendario si Fecha Exacta]       │
│ [Campo meses si Edad Aprox.]       │
│                                    │
│ Información Adicional              │
│ ✓ Está vacunado/a        [Check]   │
│   Tipo de Vacuna         [Texto]   │ (condicional)
│ Peso (kg)                [Decimal] │
│ Observaciones            [Memo]    │
└────────────────────────────────────┘
```

### Página 4: Confirmación
```
┌────────────────────────────────────┐
│ Resumen del Registro               │
├────────────────────────────────────┤
│ DATOS BÁSICOS                      │
│ • Arete: AR-XXXXX                  │
│ • Nombre: Blanquita                │
│ • Categoría: Vaca                  │
│ • Sexo: Hembra                     │
├────────────────────────────────────┤
│ DATOS DEL ANIMAL                   │
│ • Raza: Brahman                    │
│ • Ubicación: Potrero A             │
├────────────────────────────────────┤
│ FECHA Y EDAD                       │
│ • Fecha: 15/03/2023                │
│ • Edad: 2 años 10 meses            │
├────────────────────────────────────┤
│ INFORMACIÓN ADICIONAL              │
│ • Vacunado: Sí (Fiebre Aftosa)    │
│ • Peso: 650 kg                     │
│ • Obs: Animal en buen estado       │
└────────────────────────────────────┘
```

---

## 🎨 Componentes UX/UI

### Indicadores

- [x] 4 puntos de progreso (página 1, 2, 3, 4)
- [x] Punto activo resaltado en verde
- [x] Navegación programática (sin scroll horizontal)

### Alertas y Mensajes

- [x] **Azul**: Información (sexo automático)
- [x] **Naranja**: Advertencias (arete faltante)
- [x] **Rojo**: Errores (validación)
- [x] **Verde**: Confirmación (resumen final)

### Botones

- [x] "Anterior" (disponible desde página 2 en adelante)
- [x] "Siguiente" (páginas 1-3)
- [x] "Registrar" (página 4, verde)
- [x] Botones deshabilitados mientras se registra (muestra spinner)

### Campos Condicionales

- [x] "Está castrado" (solo para machos, excepto torete)
- [x] "Tipo de Vacuna" (solo si "Está vacunado" es true)

---

## 🔐 Validación

### Campos Obligatorios
- [x] Categoría/Etapa
- [x] Sexo
- [x] Fecha de Nacimiento O Edad Aproximada (al menos uno)

### Campos Opcionales (TODO LO DEMÁS)
- [x] Arete → Auto-generado si falta
- [x] Raza → "Desconocida" por defecto si falta
- [x] Nombre → Puede ser vacío
- [x] Ubicación → Puede ser vacío
- [x] Vacunada → No requerida
- [x] Peso → No requerido
- [x] Observaciones → No requeridas

---

## 💾 Almacenamiento en Base de Datos

### AnimalEntity (Isar)

```
✓ uuid: String (UUID del animal)
✓ numeroArete: String (auto-generado si falta)
✓ nombrePersonalizado: String? (opcional)
✓ especie: Especie (BOVINO detectado automático)
✓ categoria: Categoria (VACA por defecto en bovinos)
✓ etapa: EtapaVida (calculada automáticamente)
✓ sexo: Sexo (seleccionado/automático)
✓ edadMeses: int (calculada automáticamente)
✓ esCastrado: bool (si aplica)
✓ raza: String
✓ fechaNacimiento: DateTime (exacta o calculada)
✓ ubicacion: String? (NUEVO)
✓ vacunado: bool (NUEVO)
✓ tipoVacuna: String? (NUEVO)
✓ pesoActual: double? (NUEVO)
✓ observaciones: String? (NUEVO)
✓ fechaCreacion: DateTime (automática)
✓ fechaActualizacion: DateTime (automática)
```

---

## 🧪 Casos de Prueba

### Test 1: Registro Mínimo
```
✓ Página 1: Seleccionar "Vaca"
✓ Sexo: Automático "Hembra"
✓ Página 2: No ingresar nada
✓ Página 3: Seleccionar fecha (hoy)
✓ Página 4: Registrar
Resultado: Animal registrado con datos mínimos ✓
```

### Test 2: Registro Completo
```
✓ Página 1: Seleccionar "Toro"
✓ Sexo: Automático "Macho"
✓ Página 2: Arete "T-001", Raza "Brahman", Nombre "Dorado", Ubicación "Potrero"
✓ Página 3: Fecha exacta, Vacunado "Sí", Peso "850", Obs "Animal activo"
✓ Página 4: Revisar resumen
✓ Registrar
Resultado: Animal registrado con todos los datos ✓
```

### Test 3: Edad Aproximada
```
✓ Página 1: Seleccionar "Becerro"
✓ Página 3: Toggle "Edad Aprox."
✓ Ingresar "3" meses
✓ Página 4: Ver fecha calculada
✓ Registrar
Resultado: Fecha calculada correctamente ✓
```

### Test 4: Cambio de Categoría
```
✓ Página 1: Seleccionar "Vaca" → Sexo: Hembra
✓ Cambiar a "Toro" → Sexo: Macho
✓ Verificar coherencia
Resultado: Cambios automáticos correctos ✓
```

### Test 5: Alerta de Arete
```
✓ Página 2: No ingresar arete
✓ Página 3: Ver alerta naranja
✓ Cerrar alerta
✓ Página 4: Registrar sin arete
Resultado: Auto-genera arete, registra correctamente ✓
```

---

## 📊 Resumen de Cambios

| Aspecto | Antes | Ahora |
|---------|-------|-------|
| Páginas | 3 | 4 |
| Categoría/Etapa | Dropdown + Edad | Selector principal |
| Sexo | Manual | Automático + editable |
| Arete | Requerido | Opcional con alerta |
| Fecha/Edad | O bien - bien | Toggle entre ambos |
| Ubicación | No existe | NUEVO ✓ |
| Vacunada | No existe | NUEVO ✓ |
| Peso | No existe | NUEVO ✓ |
| Observaciones | No existe | NUEVO ✓ |
| UX General | Básica | Mejorada |

---

## ✨ Mejoras Futuras (Opcionales)

- [ ] Galería de fotos
- [ ] Reconocimiento de patrón en raza
- [ ] Historial de pesajes
- [ ] Código QR automático
- [ ] Exportación PDF
- [ ] Historial de cambios
- [ ] Alertas por edad/estado
- [ ] Integración con veterinario

---

**Estado Final**: ✅ COMPLETADO

**Fecha**: 19 de Enero, 2026

**Validación**: Todos los requisitos cumplidos ✓
