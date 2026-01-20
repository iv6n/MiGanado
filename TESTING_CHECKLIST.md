# 🧪 TESTING CHECKLIST - MANUAL VALIDATION

## Cómo Probar Cada Funcionalidad

### PASO 1: Iniciar la Aplicación

```bash
cd miganado
flutter run
```

Expected: App inicia sin errores ✅

---

## 📋 TEST PLAN DETALLADO

### TEST 1: Pesaje ⚖️

**Pasos:**
1. Navega a Animal Detail Screen de cualquier animal
2. Toca botón "Pesaje" (balanza azul)
3. En la pantalla de Pesos, toca FAB (+)
4. Completa:
   - Peso: 450.5
   - Unidad: kg
   - Fecha: Hoy
   - Notas: "Test pesaje"
5. Toca "Guardar"

**Validación:**
- ✅ Diálogo desaparece
- ✅ SnackBar verde muestra "Pesaje registrado"
- ✅ Pesaje aparece en lista
- ✅ Se guarda en BD

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 2: Mantenimiento 🔧

**Pasos:**
1. Animal Detail → Botón "Mantenimiento" (llave gris)
2. Diálogo se abre
3. Selecciona tipo: "Control Veterinario"
4. Completa:
   - Descripción: "Revisión general"
   - Veterinario: "Dr. García"
   - Medicamento: "Antibiótico"
5. Toca "Guardar"

**Validación:**
- ✅ Se registra correctamente
- ✅ Aparece en historial
- ✅ Se puede ver con detalles expandibles

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 3: Fotos 📸

**Pasos:**
1. Animal Detail → Botón "Foto" (cámara púrpura)
2. En pantalla de Fotos:
   - OPCIÓN A: Toca FAB "Cámara" → captura foto
   - OPCIÓN B: Toca FAB "Galería" → selecciona foto
3. En preview, agrega descripción (opcional)
4. Toca "Guardar Foto"

**Validación:**
- ✅ Foto se captura/selecciona correctamente
- ✅ Preview muestra imagen
- ✅ Se guarda con timestamp
- ✅ Aparece en grid

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 4: Vacuna 💉

**Pasos:**
1. Animal Detail → Botón "Vacuna" (jeringa)
2. Diálogo se abre
3. Completa:
   - Tipo: "Triple"
   - Enfermedad: "Fiebre aftosa"
   - Producto: "AFTOVAX"
   - Dosis: "2 dosis"
   - Vía: "IM"
   - Intervalo: "Anual"
4. Guardar

**Validación:**
- ✅ Se registra
- ✅ Próxima dosis se calcula
- ✅ Aparece en Historial de Vacunas

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 5: Tratamiento 🩹

**Pasos:**
1. Animal Detail → Botón "Tratamiento"
2. Completa campos básicos
3. Guardar

**Validación:**
- ✅ Se registra correctamente
- ✅ Aparece en historial

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 6: Nutrición 🍽️

**Pasos:**
1. Animal Detail → Botón "Nutrición"
2. Registra cambio alimenticio
3. Guardar

**Validación:**
- ✅ Se registra
- ✅ Aparece en historial

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 7: Costo 💵

**Pasos:**
1. Animal Detail → Botón "Costo"
2. En pantalla de Costos, toca FAB (+)
3. Completa:
   - Concepto: "Medicinas"
   - Monto: 50.00
   - Fecha: Hoy
   - Proveedor: "Farmacia X"
4. Guardar

**Validación:**
- ✅ Se registra
- ✅ Aparece en historial
- ✅ Se suma al total

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 8: Historiales

**TEST 8.1: Historial de Vacunas**

**Pasos:**
1. Animal Detail → Sección "Historiales"
2. Toca "Vacunas"
3. Verifica que aparezcan todas las vacunas registradas

**Validación:**
- ✅ Se muestran correctamente
- ✅ Se pueden expandir para ver detalles

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 8.2: Historial de Tratamientos**

Similar al TEST 8.1

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 8.3: Historial de Nutrición**

Similar al TEST 8.1

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 8.4: Historial de Desparasitación**

Similar al TEST 8.1

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 8.5: Historial de Mantenimiento** (NUEVA)

**Pasos:**
1. Animal Detail → Sección "Historiales"
2. Toca "Mantenimiento"
3. Verifica que aparezcan todos los eventos registrados

**Validación:**
- ✅ Se muestran correctamente
- ✅ Expandibles con detalles

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 9: Reproducción

**Pasos:**
1. Animal Detail → Sección "Reproducción"
2. (Solo disponible para Bovino Hembra y Equino Hembra)

**Para Empadre:**
- Toca "Empadre" (corazón rojo)
- Registra evento
- Valida que se guarde

**Para Parto:**
- Toca "Parto" (bebé)
- Registra evento
- Valida que se guarde

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 10: Persistencia en BD

**Validación de Datos:**

```
Registra 1 pesaje → Cierra app → Reabre app
Valida que pesaje siga ahí ✅

Registra 1 vacuna → Cierra app → Reabre app
Valida que vacuna siga ahí ✅

Registra 1 foto → Cierra app → Reabre app
Valida que foto siga ahí ✅
```

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 11: Validaciones

**TEST 11.1: Peso Inválido**

**Pasos:**
1. Intenta registrar peso = 0
2. Intenta registrar peso = -10
3. Intenta registrar peso = "abc"

**Validación:**
- ❌ No debe permitir guardar
- ✅ Debe mostrar error

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 11.2: Fecha Futura**

**Pasos:**
1. Intenta registrar con fecha futura

**Validación:**
- ❌ No debe permitir
- ✅ Debe mostrar error

**Status:** 🔴 PENDIENTE DE TESTING

---

**TEST 11.3: Campos Requeridos**

**Pasos:**
1. Intenta guardar mantenimiento sin descripción
2. Intenta guardar costo sin concepto

**Validación:**
- ❌ No debe permitir
- ✅ Debe indicar campos requeridos

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 12: Refresh y Actualización

**Pasos:**
1. Abre pantalla de Pesos
2. Agrega un pesaje
3. Tira hacia abajo (refresh)
4. Valida que peso aparezca

**Validación:**
- ✅ Lista se actualiza automáticamente
- ✅ No hay duplicados

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 13: Dynamic UI

**Pasos:**
1. Selecciona Bovino Hembra
2. Verifica que aparezca "Reproducción"
3. Selecciona Bovino Macho
4. Verifica que NO aparezca "Reproducción"
5. Selecciona Equino
6. Verifica que aparezca "Reproducción"

**Validación:**
- ✅ UI se adapta según tipo de animal

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 14: Error Handling

**Pasos:**
1. Desconecta internet (si aplica)
2. Intenta registrar datos
3. Verifica mensaje de error

**Validación:**
- ✅ Se muestra error claro
- ✅ App no se bloquea

**Status:** 🔴 PENDIENTE DE TESTING

---

### TEST 15: Performance

**Pasos:**
1. Registra 50+ pesajes
2. Abre historial
3. Valida que cargue en < 2 segundos

**Validación:**
- ✅ Sin lag
- ✅ Lista scroll suave

**Status:** 🔴 PENDIENTE DE TESTING

---

## 📊 RESUMEN DE TESTING

### Todas las Pruebas Completadas:
```
TEST 1-7:  Acciones Rápidas           [ ] 7/7
TEST 8:    Historiales                 [ ] 5/5
TEST 9:    Reproducción                [ ] 2/2
TEST 10:   Persistencia                [ ] 3/3
TEST 11:   Validaciones                [ ] 3/3
TEST 12:   Refresh                     [ ] 1/1
TEST 13:   Dynamic UI                  [ ] 3/3
TEST 14:   Error Handling              [ ] 1/1
TEST 15:   Performance                 [ ] 1/1

TOTAL: ___/40 PASADAS ✅
```

---

## 🎯 CRITERIOS DE ACEPTACIÓN

- ✅ 0 crashes durante testing
- ✅ Todos los datos se guardan correctamente
- ✅ Validaciones funcionan
- ✅ UI es responsiva
- ✅ Mensajes de error claros
- ✅ Transiciones suaves

---

## 🚀 RESULTADO FINAL

Una vez completados TODOS los tests, la app está lista para:
- ✅ Testing en dispositivo real
- ✅ Beta testing con usuarios
- ✅ Deployment a Play Store/App Store

---

**Nota:** Marca cada test como ✅ una vez lo pruebes exitosamente.

**Fecha de Testing:** _____________  
**Tester:** _____________  
**Status Final:** _____________
