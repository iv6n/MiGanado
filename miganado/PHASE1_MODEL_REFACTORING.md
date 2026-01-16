# FASE 1 ✅ COMPLETADA: Refactorización de Modelos de Datos

Fecha: 2026-01-13

## 📋 Cambios Implementados

### 1️⃣ Enums Centralizados (`lib/core/enums/`)

Se creó una estructura centralizada de enumeraciones con TypeAdapters para Hive:

#### `tipo_ganado.dart` (typeId: 10)
- Consolidación de tipos: vaca, becerro, toro, novillo, caballo, mula, burro
- ✅ REGLA: No existe "becerrón/becerrona" - < 12 meses es Becerro (M) o Becerra (H)
- Extensión: validación de arete, nombres en español
- Icono: novillo.png para Novillo/Vaquilla/Torete

#### `sexo.dart` (typeId: 11)
- Macho / Hembra
- Extensiones: nombre español, inicial (M/H)

#### `estado_reproductivo.dart` (typeId: 12)
- Prenada, Lactando, Seca, No_definido
- Extensión: nombre español

#### `metodo_edad.dart` (typeId: 13) **NUEVO**
- ✅ REGLA: La edad es OPCIONAL y se calcula según el método
  - `exacta_por_fecha_nacimiento`: Tenemos fecha de nacimiento
  - `simulada_por_categoria`: Sin fecha, el animal "comienza" en esa etapa
  - `estimada_por_peso`: Futuro - inferir por peso
- Extensiones: descripción, indicadores booleanos

#### `tipo_mantenimiento.dart` (typeId: 14)
- Vacunacion, Desparasitante, Vitaminas, Revision_clinica, Curacion, Dentadura, Castracion, Otro
- Extensiones:
  - `nombreEspanol`: nombre legible
  - `cicloMesesRecomendado`: ciclo típico para alertas
  - `tieneCostaHabitual`: indica si típicamente genera costo

#### `tipo_costo.dart` (typeId: 15)
- Compra_inicial, Veterinario, Alimento, Medicamento, Equipo, Otro
- Extensiones:
  - `nombreEspanol`: nombre legible
  - `colorHex`: color para UI
  - `esUnico`: si es costo inicial (única ocurrencia)
  - `puedeAsociarseAMantenimiento`: si se puede vincular a mantenimiento

### 2️⃣ Modelos Especializados

#### `peso_registro.dart` (typeId: 20)
Reemplazo mejorado de `PesajeModel`:
```
- id (UUID)
- animalId (referencia)
- peso (kg)
- fecha (del pesaje)
- observacion (opcional, ej: "Pesaje pre-venta")
- fechaRegistro (auditoría)
```
✅ Limpio, simple, specializado para pesos

#### `mantenimiento_registro.dart` (typeId: 21) **NUEVO**
Consolidación de TODOS los mantenimientos en un modelo:
```
- id (UUID)
- animalId (referencia)
- tipo (TipoMantenimiento enum)
- descripcion (ej: "Vacuna fiebre aftosa")
- notas (observaciones veterinarias)
- fecha (del evento)
- costo (opcional, si hay gasto)
- proximaFechaRecomendada (calculada según ciclo)
- costoRegistroId (referencia al CostoRegistro creado automáticamente)
- datoEspecifico (JSON string para datos adicionales)
- fechaRegistro (auditoría)
```
✅ VENTAJA: Un modelo único para vacunaciones, desparasitaciones, revisiones, etc.
✅ VENTAJA: Campo `costoRegistroId` permite trazabilidad automática
✅ VENTAJA: Métodos helper: `estaVencido`, `estaProximo`

#### `costo_registro.dart` (typeId: 22) **REFACTOR de CostoModel**
```
- id (UUID)
- animalId (referencia)
- tipo (TipoCosto enum)
- descripcion (ej: "Vacuna fiebre aftosa")
- monto (dinero)
- fecha (del gasto)
- mantenimientoRelacionadoId (si viene de un mantenimiento)
- notas (adicionales)
- fechaRegistro (auditoría)
```
✅ CAMBIO CLAVE: Agregado campo `mantenimientoRelacionadoId`
   → Cuando se crea un MantenimientoRegistro con costo > 0,
     el sistema automáticamente crea un CostoRegistro relacionado
✅ VENTAJA: Trazabilidad completa de costos
✅ VENTAJA: Reportes por tipo de costo y tipo de mantenimiento

### 3️⃣ AnimalModel Refactorizado (`animal_model_v2.dart`, typeId: 0)

**⚠️ IMPORTANTE: NUEVO ARCHIVO animal_model_v2.dart (no reemplaza animal_model.dart aún)**

Campos reorganizados en secciones lógicas:

#### IDENTIFICACIÓN
```
- id (UUID)
- identificadorVisible (arete / nombre / código)
- sexo (Sexo enum)
- numeroArete (opcional, NULL si no requiere)
- nombrePersonalizado (opcional)
- raza (opcional)
```

#### CATEGORIZACIÓN
```
- categoriaAutomatica ⭐ (CALCULADA: "Vaca", "Becerra", "Novillo")
- categoriaInicialSeleccionada (lo que eligió el ganadero)
- estadoReproductivo (Prenada, Lactando, Seca, No_definido)
```

#### EDAD Y EVOLUCIÓN
```
- fechaNacimiento (DateTime?, OPCIONAL ✅ REGLA)
- metodoEdad (exacta_por_fecha / simulada_por_categoria / estimada_por_peso)
- edadMesesCalculada (getter que recalcula según método)
- fechaInicioEtapa (cuándo inició la etapa actual)
- tipo (TipoGanado enum, para compatibilidad)
```

#### DATOS PRODUCTIVOS
```
- pesoActual (kg)
- pesoInicial (kg, para calcular ganancia)
- historialPesos (List<PesoRegistro>)
- observaciones (notas del ganadero)
```

#### DATOS REPRODUCTIVOS
```
- partos (cantidad)
- fechaUltimoParot (DateTime?)
- empadres (cantidad)
- fechaUltimoEmpadre (DateTime?)
```

#### DATOS SANITARIOS
```
- historialMantenimientos (List<MantenimientoRegistro>) ⭐ NUEVO
- alertasSanitarias (List<String>, "Vacuna vencida", etc.)
```

**❌ REMOVIDO:**
```
- vacunado, fechaUltimaVacuna, tipoVacuna (ahora en historialMantenimientos)
- desparasitado, fechaUltimoDesparasitante (ahora en historialMantenimientos)
- tieneVitaminas, fechaVitaminas (ahora en historialMantenimientos)
- tieneOtrosTratamientos, fechaOtrosTratamientos (ahora en historialMantenimientos)
- costosExtra Map (ahora en historialCostosIds + CostoRegistro)
```

#### DATOS FINANCIEROS (OBLIGATORIO)
```
- costoCompraInicial (double?, primer gasto)
- historialCostosIds (List<String>, IDs de CostoRegistro en BD)
- costoTotalAcumulado (getter: compra + sum(costos))
- costoMesPromedio (getter: total / meses)
- costoKgGanado (getter: total / kg ganados)
```

#### AUDITORÍA
```
- fechaRegistro
- ultimaActualizacion
- ubicacionId
- madreId
- fotoPath
- notas
```

### 4️⃣ Getters Calculados (AnimalModel)

✅ `edadMesesCalculada`: Recalcula según metodoEdad
✅ `pesoGanado`: pesoActual - pesoInicial (si ambos existen)
✅ `tienePesajes`: bool
✅ `tieneMantenimientos`: bool
✅ `proximoMantenimientoVencido`: MantenimientoRegistro?
✅ `proximoMantenimientoProximo`: (en 30 días)
✅ `mesesDesdeRegistro`: para calcular costos promedios
✅ `descripcionResumida`: "Vaca - Blanquita"

## 🔄 Lógica de Asociación Mantenimiento ↔ Costo

**Flujo propuesto (para FASE 2 - Use Cases):**

```
CUANDO: Se crea MantenimientoRegistro(tipo, costo > 0)

ENTONCES:
  1. Guardar MantenimientoRegistro en BD
  2. SI costo > 0:
     a. Crear CostoRegistro(
          tipo: deducir_tipo_costo(tipoMantenimiento),
          monto: mantenimiento.costo,
          mantenimientoRelacionadoId: mantenimiento.id
        )
     b. Guardar CostoRegistro
     c. Actualizar animal.historialCostosIds += [costoRegistro.id]
  3. Actualizar animal.alertasSanitarias:
     - Calcular proximaFechaRecomendada según ciclo
     - Agregar alertas si es necesario
```

**Función auxiliar necesaria (FASE 2):**
```dart
TipoCosto deducirTipoCostoDeMantenimiento(TipoMantenimiento tipo) {
  switch (tipo) {
    case TipoMantenimiento.vacunacion:
    case TipoMantenimiento.revision_clinica:
    case TipoMantenimiento.castracion:
      return TipoCosto.veterinario;
    case TipoMantenimiento.desparasitante:
      return TipoCosto.medicamento;
    case TipoMantenimiento.vitaminas:
      return TipoCosto.medicamento;
    case TipoMantenimiento.curacion:
      return TipoCosto.veterinario;
    case TipoMantenimiento.dentadura:
      return TipoCosto.veterinario;
    case TipoMantenimiento.otro:
      return TipoCosto.otro;
  }
}
```

## 📊 Resumen de typeIds Asignados

```
typeId: 10 → TipoGanado enum
typeId: 11 → Sexo enum
typeId: 12 → EstadoReproductivo enum
typeId: 13 → MetodoEdad enum (NUEVO)
typeId: 14 → TipoMantenimiento enum
typeId: 15 → TipoCosto enum
typeId: 20 → PesoRegistro (especializado de PesajeModel)
typeId: 21 → MantenimientoRegistro (NUEVO, consolidado)
typeId: 22 → CostoRegistro (refactor de CostoModel)
typeId: 0  → AnimalModel (ya existe, actualizar a animal_model_v2)
```

## 🔧 Proximos Pasos (FASE 1.4)

1. ✅ Generar TypeAdapters para los nuevos modelos (build_runner)
2. ⏳ Registrar los nuevos adapters en Hive (`hive.registerAdapter(...)`)
3. ⏳ Crear migraciones de base de datos
4. ⏳ Actualizar `HiveDatabaseTyped` para soportar nuevos modelos

## ⚠️ CAMBIOS BREAKING

```
ANTES:
- Animal con 28 campos booleanos y Maps
- PesajeModel en historial
- EventoMantenimientoModel separado
- CostoModel independiente

AHORA:
- AnimalModel simplificado a 32 campos (más claros)
- PesoRegistro (nuevo)
- MantenimientoRegistro (consolidado)
- CostoRegistro (refactor con trazabilidad)
- Relaciones explícitas: MantenimientoRegistro → CostoRegistro
```

## ✅ Validación

- ✅ Todos los enums tienen TypeAdapters
- ✅ Todos los modelos tienen @HiveType
- ✅ Todos tienen copyWith()
- ✅ Todos tienen toString()
- ✅ build_runner generó los .g.dart
- ✅ Reglas de negocio implementadas en modelos
- ✅ Documentación inline completa

## 🎯 Estado Actual

```
FASE 1.1: Enums Centralizados         ✅ COMPLETO
FASE 1.2: Modelos Especializados      ✅ COMPLETO
FASE 1.3: AnimalModel Refactorizado   ✅ COMPLETO
FASE 1.4: TypeAdapters + BD           ⏳ SIGUIENTE
FASE 2: Lógica de Negocio (Use Cases) ⏳ DESPUÉS
FASE 3: Providers + Repositorios      ⏳ DESPUÉS
FASE 4: UI Refactorizada              ⏳ DESPUÉS
```
