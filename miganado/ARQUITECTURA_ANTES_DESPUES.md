# 🎨 VISUALIZACIÓN: ARQUITECTURA ANTES vs DESPUÉS

## 📁 ESTRUCTURA DE CARPETAS

### ANTES
```
lib/
├── models/
│   ├── animal.dart          ← Monolítico (28 campos)
│   ├── evento_mantenimiento.dart
│   ├── ganadero.dart
│   └── index.dart
│
└── features/
    ├── animals/
    │   └── data/models/
    │       ├── animal_model.dart
    │       ├── pesaje_model.dart
    │       └── index.dart
    │
    └── costs/
        └── data/models/
            ├── costo_model.dart
            └── index.dart
```

### DESPUÉS
```
lib/
├── core/
│   └── enums/               ← ⭐ NUEVO: Centralizados
│       ├── tipo_ganado.dart (10)
│       ├── sexo.dart (11)
│       ├── estado_reproductivo.dart (12)
│       ├── metodo_edad.dart (13)      ← ⭐ NUEVO
│       ├── tipo_mantenimiento.dart (14)
│       ├── tipo_costo.dart (15)
│       └── index.dart
│
├── models/
│   ├── [legacy/]
│   ├── animal.dart          (compatibilidad)
│   └── index.dart
│
└── features/
    ├── animals/data/models/
    │   ├── animal_model.dart         (legacy)
    │   ├── animal_model_v2.dart      ← ⭐ REFACTORIZADO
    │   ├── peso_registro.dart        ← ⭐ NUEVO (20)
    │   ├── mantenimiento_registro.dart ← ⭐ NUEVO (21)
    │   ├── pesaje_model.dart         (legacy)
    │   └── index.dart
    │
    └── costs/data/models/
        ├── costo_model.dart          (legacy)
        ├── costo_registro.dart       ← ⭐ NUEVO (22)
        ├── index.dart
        └── [enums/] → moved to core/enums/
```

---

## 🐄 TRANSFORMACIÓN: AnimalModel

### ANTES (28 campos booleanos dispersos)
```dart
@HiveType(typeId: 0)
class AnimalModel extends HiveObject {
  @HiveField(0) final String id;
  @HiveField(1) final String identificadorVisible;
  
  // ❌ BOOLEAN SOUP (12 campos sanitarios)
  @HiveField(10) final bool vacunado = false;
  @HiveField(11) final DateTime? fechaUltimaVacuna;
  @HiveField(12) final String? tipoVacuna;
  @HiveField(13) final bool desparasitado = false;
  @HiveField(14) final DateTime? fechaUltimoDesparasitante;
  @HiveField(15) final bool tieneVitaminas = false;
  @HiveField(16) final DateTime? fechaVitaminas;
  @HiveField(17) final bool tieneOtrosTratamientos = false;
  @HiveField(18) final DateTime? fechaOtrosTratamientos;
  @HiveField(19) final String? descripcionOtrosTratamientos;
  @HiveField(20) final bool tieneExtraccion = false;
  
  // ❌ COSTOS DESESTRUCTURADOS
  @HiveField(25) final Map<String, double> costosExtra = const {};
  
  // ❌ EDAD FORZADA
  @HiveField(2) final DateTime fechaNacimiento;  // NO OPTIONAL
  
  // Problema: ¿Cuándo fue la vacuna? ¿Cuál vacuna específicamente?
  // Problema: ¿De dónde salió este costo?
  // Problema: ¿Qué pasa si no tengo fecha de nacimiento?
}
```

### DESPUÉS (32 campos organizados)
```dart
@HiveType(typeId: 0)
class AnimalModelV2 extends HiveObject {
  // ═════════════════════════════════════════
  // IDENTIFICACIÓN (5 campos)
  // ═════════════════════════════════════════
  @HiveField(0) final String id;
  @HiveField(1) final String identificadorVisible;
  @HiveField(2) final Sexo sexo;
  @HiveField(3) final String? numeroArete;
  @HiveField(4) final String? nombrePersonalizado;

  // ═════════════════════════════════════════
  // CATEGORIZACIÓN (3 campos) - Auto-calculado
  // ═════════════════════════════════════════
  @HiveField(5) final String categoriaAutomatica;
  @HiveField(6) final String? categoriaInicialSeleccionada;
  @HiveField(7) final EstadoReproductivo estadoReproductivo;

  // ═════════════════════════════════════════
  // EDAD Y EVOLUCIÓN (5 campos) ✅ FLEXIBLE
  // ═════════════════════════════════════════
  @HiveField(8) final DateTime? fechaNacimiento;  // ✅ OPTIONAL
  @HiveField(9) final MetodoEdad metodoEdad;      // exacta/simulada/estimada
  @HiveField(10) final int? edadMesesCachedValue;
  @HiveField(11) final DateTime fechaInicioEtapa; // Cuándo entró a etapa
  @HiveField(12) final TipoGanado tipo;

  // ═════════════════════════════════════════
  // PRODUCTIVO (4 campos)
  // ═════════════════════════════════════════
  @HiveField(13) final double? pesoActual;
  @HiveField(14) final double? pesoInicial;
  @HiveField(15) final List<PesoRegistro> historialPesos;
  @HiveField(16) final String? observaciones;

  // ═════════════════════════════════════════
  // REPRODUCTIVO (4 campos)
  // ═════════════════════════════════════════
  @HiveField(17) final int partos;
  @HiveField(18) final DateTime? fechaUltimoParot;
  @HiveField(19) final int empadres;
  @HiveField(20) final DateTime? fechaUltimoEmpadre;

  // ═════════════════════════════════════════
  // SANITARIO (2 campos) ✅ CONSOLIDADO
  // ═════════════════════════════════════════
  @HiveField(21) final List<MantenimientoRegistro> historialMantenimientos;
  @HiveField(22) final List<String> alertasSanitarias;
  // ✅ REMOVED: vacunado, desparasitado, tieneVitaminas, etc.
  // ✅ NOW IN: MantenimientoRegistro model

  // ═════════════════════════════════════════
  // FINANCIERO (2 campos) ✅ TRAZABLE
  // ═════════════════════════════════════════
  @HiveField(23) final double? costoCompraInicial;
  @HiveField(24) final List<String> historialCostosIds;
  // ✅ REMOVED: Map<String, double> costosExtra
  // ✅ NOW IN: CostoRegistro model with link to maintenance

  // ═════════════════════════════════════════
  // AUDITORÍA (7 campos)
  // ═════════════════════════════════════════
  @HiveField(25) final DateTime fechaRegistro;
  @HiveField(26) final DateTime? ultimaActualizacion;
  @HiveField(27) final String? ubicacionId;
  @HiveField(28) final String? madreId;
  @HiveField(29) final String? fotoPath;
  @HiveField(30) final String? raza;
  @HiveField(31) final String? notas;

  // ═════════════════════════════════════════
  // GETTERS CALCULADOS
  // ═════════════════════════════════════════
  
  /// Recalcula automáticamente según metodoEdad
  int get edadMesesCalculada {
    if (metodoEdad == MetodoEdad.exacta_por_fecha_nacimiento) {
      if (fechaNacimiento == null) return 0;
      return calculateMonthsDifference(fechaNacimiento!, DateTime.now());
    } else if (metodoEdad == MetodoEdad.simulada_por_categoria) {
      return calculateMonthsDifference(fechaInicioEtapa, DateTime.now());
    }
    return 0;
  }

  /// Ganancia = peso actual - inicial
  double? get pesoGanado => 
    (pesoActual != null && pesoInicial != null)
      ? pesoActual! - pesoInicial!
      : null;

  /// Suma compra + todos costos
  double get costoTotalAcumulado => (costoCompraInicial ?? 0) + 
    historialCostosIds.fold(0, (sum, id) => sum + getCostoFromId(id));

  /// Promedio mensual: total / meses desde registro
  double get costoMesPromedio {
    final meses = mesesDesdeRegistro;
    return meses > 0 ? costoTotalAcumulado / meses : 0;
  }

  /// Costo por kg de ganancia
  double get costoKgGanado {
    final kg = pesoGanado ?? 0;
    return kg > 0 ? costoTotalAcumulado / kg : 0;
  }
}
```

**Comparación:**

| Aspecto | Antes | Después |
|---------|--------|---------|
| **Campos booleanos** | 12 sueltos | 0 (consolidados) |
| **Historial mantenimientos** | ❌ No | ✅ List<MantenimientoRegistro> |
| **Historial costos** | ❌ Map desestructurado | ✅ List<String> tipados |
| **Edad flexible** | ❌ fechaNacimiento required | ✅ DateTime? + metodoEdad |
| **Trazabilidad costos** | ❌ No | ✅ CostoRegistro.mantenimientoRelacionadoId |
| **Alertas** | ❌ No | ✅ List<String> calculada |

---

## 📊 MODELO: MantenimientoRegistro (NUEVO)

```dart
@HiveType(typeId: 21)
class MantenimientoRegistro {
  @HiveField(0) final String id;
  @HiveField(1) final String animalId;
  @HiveField(2) final TipoMantenimiento tipo;
  @HiveField(3) final String? descripcion;
  @HiveField(4) final String? notas;
  @HiveField(5) final DateTime fecha;
  @HiveField(6) final double? costo;
  @HiveField(7) final DateTime? proximaFechaRecomendada;
  @HiveField(8) final String? costoRegistroId;    // ⭐ LINK TRAZABLE
  @HiveField(9) final String? datoEspecifico;     // JSON
  @HiveField(10) final DateTime fechaRegistro;

  bool estaVencido() => 
    proximaFechaRecomendada != null && 
    proximaFechaRecomendada!.isBefore(DateTime.now());

  bool estaProximo() {
    if (proximaFechaRecomendada == null) return false;
    final dias = proximaFechaRecomendada!.difference(DateTime.now()).inDays;
    return dias >= 0 && dias <= 30;  // Próximo dentro de 30 días
  }
}
```

**Reemplaza:**
- ❌ `vacunado: bool` → `MantenimientoRegistro(tipo: vacunacion)`
- ❌ `desparasitado: bool` → `MantenimientoRegistro(tipo: desparasitante)`
- ❌ `tieneVitaminas: bool` → `MantenimientoRegistro(tipo: vitaminas)`
- ❌ Todos los otros campos booleanos sanitarios

**Ventajas:**
- ✅ Historial: "¿Cuándo exactamente?"
- ✅ Detalles: "¿Qué producto específico?"
- ✅ Alertas: `estaVencido()`, `estaProximo()`
- ✅ Trazabilidad: `costoRegistroId` → ¿Cuánto costó?

---

## 💰 MODELO: CostoRegistro (NUEVO)

```dart
@HiveType(typeId: 22)
class CostoRegistro {
  @HiveField(0) final String id;
  @HiveField(1) final String animalId;
  @HiveField(2) final TipoCosto tipo;
  @HiveField(3) final String? descripcion;
  @HiveField(4) final double monto;
  @HiveField(5) final DateTime fecha;
  @HiveField(6) final String? mantenimientoRelacionadoId;  // ⭐ TRAZABILIDAD
  @HiveField(7) final String? notas;
  @HiveField(8) final DateTime fechaRegistro;

  bool get esCompraInicial => tipo == TipoCosto.compra_inicial;
  bool get tieneMantenimientoAsociado => mantenimientoRelacionadoId != null;
}
```

**Ejemplo de Flujo:**

```
1. Usuario crea Mantenimiento:
   MantenimientoRegistro {
     tipo: TipoMantenimiento.vacunacion,
     fecha: 2026-01-10,
     descripcion: "Rabia + Aftosa",
     costo: 150000,  // COP
   }

2. Sistema automáticamente genera CostoRegistro:
   CostoRegistro {
     tipo: TipoCosto.veterinario,
     monto: 150000,
     mantenimientoRelacionadoId: "uuid-del-mantenimiento"  // ⭐ LINK
   }

3. Query de Trazabilidad:
   getCostosByMantenimiento("uuid-del-mantenimiento")
   → [CostoRegistro { tipo: veterinario, monto: 150000 }]
```

---

## 🔗 BASE DE DATOS: Dual Storage

### Migración Gradual (No breaking changes)

```
LEGACY (Funciona igual):              NUEVO (Refactorizado):
Box<AnimalModel> ─ 5k animales        Box<AnimalModelV2> ─ Nuevos
├─ vacunado: bool                     ├─ historialMantenimientos[]
├─ desparasitado: bool                ├─ alertasSanitarias[]
└─ costosExtra: Map                   └─ historialCostosIds[]

Box<CostoModel>                       Box<CostoRegistro>
├─ Viejo TipoCosto                    ├─ Nuevo TipoCosto (enum)
└─ Sin trazabilidad                   └─ mantenimientoRelacionadoId
```

### Import Strategy

```dart
// En hive_database_typed.dart:
import 'animal_model.dart' as legacy;
import 'animal_model_v2.dart' as v2;

class MiGanadoDatabaseTyped {
  late Box<legacy.AnimalModel> _animalesBox;
  late Box<v2.AnimalModel> _animalesV2Box;
  
  // Método de migración:
  Future<void> migrateAnimalToV2(String animalId) async {
    final legacy = _animalesBox.get(animalId);
    final v2 = AnimalModelV2.fromLegacy(legacy);
    await _animalesV2Box.put(animalId, v2);
  }
}
```

---

## 🎯 MÉTODOS BD: Nueva API

### Pesos
```dart
List<PesoRegistro> getPesosByAnimalId(String animalId)
Future<void> savePeso(PesoRegistro peso)
Future<void> deletePeso(String id)
```

### Mantenimientos
```dart
List<MantenimientoRegistro> getMantenimientosByAnimalId(String animalId)
List<MantenimientoRegistro> getMantenimientosVencidos(String animalId)  ⭐
List<MantenimientoRegistro> getMantenimientosProximos(String animalId)  ⭐
Future<void> saveMantenimiento(MantenimientoRegistro m)
```

### Costos
```dart
List<CostoRegistro> getCostoRegistroByAnimalId(String animalId)
double getTotalCostoRegistroByAnimalId(String animalId)
List<CostoRegistro> getCostosByMantenimiento(String manId)  ⭐ TRAZABILIDAD
Future<void> saveCostoRegistro(CostoRegistro costo)
```

---

## 📈 DIAGRAMA: Flujo de Datos Nuevo

```
┌─────────────────────────────────────────────────────┐
│  AnimalModel V2                                     │
│  ┌──────────────────────────────────────────────┐  │
│  │ IDENTIFICACIÓN: id, sexo, arete, nombre     │  │
│  │ CATEGORIZACIÓN: categoriaAutomatica()       │  │
│  │ EDAD: metodoEdad, fechaNacimiento?, edad()  │  │
│  │ PRODUCTIVO: peso, historialPesos[]          │  │
│  │ REPRODUCTIVO: partos, empadres              │  │
│  │ SANITARIO: historialMantenimientos[]        │  │
│  │ FINANCIERO: costoCompra, historialCostosIds│  │
│  │ AUDITORÍA: fechaRegistro, notas             │  │
│  └──────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────┘
         ↓                              ↓
    ┌─────────────┐            ┌──────────────────────┐
    │ PesoRegistro│ historialPesos[]
    ├─────────────┤            │ MantenimientoRegistro│
    │ id          │            ├──────────────────────┤
    │ peso: 450kg │            │ id                   │
    │ fecha       │            │ tipo: vacunacion     │
    │ fecha       │            │ costo: 150000        │
    └─────────────┘            │ costoRegistroId ────→┐
                               └──────────────────────┘
                                                      │
                                                      ↓
                                        ┌──────────────────────┐
                                        │ CostoRegistro        │
                                        ├──────────────────────┤
                                        │ id                   │
                                        │ tipo: veterinario    │
                                        │ monto: 150000        │
                                        │ mantenimientoId◄─────┘
                                        └──────────────────────┘
```

---

## ✨ RESUMEN: Antes vs Después

| Funcionalidad | Antes | Después |
|--------|--------|---------|
| **Historial de vacunas** | ❌ Bool + 1 fecha | ✅ List<MantenimientoRegistro> |
| **¿Cuánto costó la vacuna?** | ❌ No se sabe | ✅ CostoRegistro.mantenimientoId |
| **Próxima vacuna vencida** | ❌ Manual | ✅ estaVencido() automático |
| **Edad sin fecha nacimiento** | ❌ Imposible | ✅ metodoEdad = simulada |
| **Costos totales** | ❌ Map desordenado | ✅ sum(CostoRegistro) |
| **Costo por categoría** | ❌ No | ✅ getCostosRegistroPorTipo() |
| **Trazabilidad costos** | ❌ No | ✅ getCostosByMantenimiento() |
| **Alertas automáticas** | ❌ No | ✅ alertasSanitarias[] |

**Resultado:** Sistema robusto, trazable, escalable, type-safe ✅
