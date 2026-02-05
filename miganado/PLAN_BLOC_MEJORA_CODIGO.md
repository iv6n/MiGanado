# Análisis integral del código y plan de mejora (enfoque tipo BLOC)

## 1) Resumen ejecutivo

El proyecto tiene una base funcional sólida (Flutter + Riverpod + Isar + módulos por feature), pero hoy conviven **dos estilos arquitectónicos**: una estructura por `features/` y otra legacy en `ui/`, `models/`, `providers/` y `services/`. Esta dualidad incrementa el costo de mantenimiento, dificulta pruebas consistentes y abre la puerta a regresiones.

Además, la app realiza una **inicialización pesada en `main()`** (monitoring, cache, base de datos y seeding) antes de pintar la primera pantalla, lo que puede afectar el tiempo de arranque percibido.

---

## 2) Hallazgos principales (cuellos de botella y organización)

## 2.1 Arranque de app: demasiada carga antes de `runApp`

En `main.dart` se ejecutan múltiples inicializaciones y seeds antes de renderizar la UI:

- Inicialización de performance logger, cache manager, monitor y memory profiler.
- Inicialización de Isar.
- Seeding de datos base y demo.
- Seeding de eventos de calendario.

Riesgo:
- Startup lento en dispositivos de gama media/baja.
- Más probabilidad de fallo duro al inicio (si algo falla, la app puede no iniciar).

## 2.2 Capa de datos monolítica

`MiGanadoDatabase` concentra lógica de muchas entidades/feature en un solo archivo grande (`isar_database.dart`). Aunque funcional, genera:

- Acoplamiento entre módulos no relacionados.
- Dificultad para testear por partes.
- Mayor riesgo de conflictos en trabajo en equipo.

## 2.3 Mezcla de capas (presentation accede a data/modelos concretos)

Hay pantallas/providers de presentación que importan `data/models` o servicios de data directamente. Esto rompe separación de responsabilidades y complica migración/escala.

Impacto:
- Testing más frágil (mocking costoso).
- Dependencias cruzadas entre features.

## 2.4 Inconsistencia de navegación

`app_router.dart` declara explícitamente “no usar `Navigator.push()`”, pero existen múltiples usos directos de `Navigator` en varias pantallas/widgets.

Impacto:
- Flujos de navegación no uniformes.
- Más difícil controlar deep links, analytics y reglas de back stack.

## 2.5 Logging no homogéneo

Se usa `LoggerService` en parte del sistema, pero también hay abundantes `print()` en servicios/use cases.

Impacto:
- Observabilidad inconsistente.
- Ruido en logs y menor trazabilidad para producción.

## 2.6 Archivos muy grandes en presentación/servicios

Existen archivos de UI y seed de +600 a +1800 líneas (sin contar archivos generados), por ejemplo:

- `seed_database_full.dart` (muy extenso)
- `register_animal_screen.dart`
- `animal_detail_widgets.dart`
- `registro_dialogs.dart`
- `isar_database.dart`

Impacto:
- Menor legibilidad y velocidad de cambio.
- Más riesgo de bugs al tocar un único “mega-archivo”.

## 2.7 Duplicidad de modelos

En `features/animals/data/models` coexisten pares conceptualmente duplicados:

- `photo_entity.dart` y `foto_entity.dart`
- `reproductive_entity.dart` y `reproductivo_entity.dart`

Impacto:
- Ambigüedad en uso/convenciones.
- Potencial deuda técnica y divergencia de comportamiento.

## 2.8 Cobertura de pruebas: base aceptable pero insuficiente por feature crítica

Hay pruebas en `core/` y varias features, pero la arquitectura actual sugiere necesidad de:

- Más tests de repositorios por módulo.
- Tests de integración de navegación y flujos críticos.
- Tests de rendimiento para startup/listas grandes.

---

## 3) Plan de mejora tipo BLOC

> **BLOC = Baseline, Layering, Orchestration, Continuous quality**

## B — Baseline (línea base técnica y de rendimiento)

Objetivo: medir antes de refactorizar.

Acciones:
1. Definir métricas base:
   - Tiempo de arranque (cold start y warm start).
   - Tiempo de carga de listas (animales, calendario, mantenimiento).
   - % pantallas con navegación por `go_router` vs `Navigator` directo.
2. Crear checklist de deuda técnica por módulo (Animals, Calendar, Mantenimiento, etc.).
3. Establecer KPIs trimestrales:
   - Reducir startup en 30-40%.
   - Reducir archivos >500 líneas en 60%.
   - 0 uso de `print()` fuera de utilidades de desarrollo.

Entregable:
- Tablero de baseline (Markdown + hoja de control simple).

## L — Layering (limpieza de capas y límites de arquitectura)

Objetivo: consolidar arquitectura limpia por feature.

Acciones:
1. Estándar por feature:
   - `data/` (datasources + repositories impl)
   - `domain/` (entities + usecases + repository contracts)
   - `presentation/` (bloc/cubit + screens/widgets)
2. Eliminar acoplamientos:
   - Presentation NO importa `data/models`.
   - Presentation consume entidades de dominio/DTO de UI.
3. Dividir `isar_database.dart` en datasource/repositories por feature:
   - `animals_local_datasource.dart`
   - `calendar_local_datasource.dart`
   - etc.
4. Mover código legacy de `ui/` y `providers/` globales hacia `features/*/presentation`.

Entregable:
- ADR corto de arquitectura + convención de imports.

## O — Orchestration (migración progresiva a BLoC/Cubit)

Objetivo: tener gestión de estado predecible, testeable y consistente (BLoC style).

Estrategia recomendada:
1. Iniciar por vertical slice (piloto): `animals`.
2. Crear `AnimalsCubit/Bloc` con estados explícitos:
   - `AnimalsInitial`, `AnimalsLoading`, `AnimalsLoaded`, `AnimalsError`.
3. Reemplazar providers más críticos por BLoC en pantallas de alto tráfico.
4. Unificar side effects (snackbars, navegación, errores) con listeners de BLoC.
5. Mantener interoperabilidad temporal con Riverpod durante la transición (strangler pattern).

Nota:
- No es necesario migrar todo de golpe; hacerlo por módulos reduce riesgo.

Entregable:
- Primer módulo en BLoC con tests unitarios + widget tests.

## C — Continuous Quality (calidad continua y gobernanza)

Objetivo: evitar recaída en deuda técnica.

Acciones:
1. Reglas automáticas de calidad:
   - Lint para evitar imports de data en presentation.
   - Regla interna: archivo > 400 líneas requiere justificación/refactor plan.
2. CI mínima:
   - `analyze`, `test`, cobertura y verificación de formato.
3. Política de logging:
   - Sustituir `print()` por logger estructurado.
   - Correlation IDs por operación crítica.
4. Observabilidad funcional:
   - Instrumentar eventos clave (crear animal, registrar vacuna, crear evento calendario).
5. Auditoría mensual de arquitectura (30 min, checklist fija).

Entregable:
- Definition of Done actualizada + plantilla de PR con checks de arquitectura.

---

## 4) Backlog priorizado (90 días)

### Fase 1 (Semanas 1-3) — Quick wins de alto impacto

1. Reducir trabajo de `main()`:
   - Mostrar splash/shell inicial y mover seeds no críticos a background.
2. Unificar navegación:
   - Reemplazar `Navigator.push` por `go_router` (excepto `pop` en dialogs locales).
3. Logging:
   - Reemplazo sistemático de `print()` por `LoggerService`.
4. Archivo monolítico:
   - Partir `isar_database.dart` en componentes por feature.

### Fase 2 (Semanas 4-8) — Migración BLoC por módulos

1. Piloto BLoC: Animals.
2. Segundo módulo: Calendar.
3. Extraer widgets y estados de archivos >500 líneas.
4. Normalizar naming/idioma en modelos duplicados (`foto/photo`, `reproductivo/reproductive`).

### Fase 3 (Semanas 9-12) — Escalado y hardening

1. Extender BLoC a Mantenimiento y Costs.
2. Aumentar cobertura en flujos críticos end-to-end.
3. Revisar rendimiento en listas y consultas Isar con dataset grande.
4. Cerrar deuda legacy (`ui/` y providers globales residuales).

---

## 5) Mapa de riesgos y mitigación

1. **Riesgo:** migración a BLoC rompe pantallas activas.
   - Mitigación: feature flags y migración incremental por módulo.
2. **Riesgo:** caída temporal de velocidad de entrega.
   - Mitigación: 70/20/10 (70% features, 20% refactor, 10% hardening).
3. **Riesgo:** divergencia entre estilos (Riverpod vs BLoC).
   - Mitigación: fecha límite para congelar nuevas pantallas en Riverpod legacy.

---

## 6) KPI objetivo (medibles)

- Startup cold start: -30%.
- Archivos >500 líneas (no generados): -60%.
- Uso de `print()` en código productivo: 0.
- Cobertura de tests en módulos críticos: >70%.
- Pantallas críticas migradas a BLoC/Cubit: >=80%.

---

## 7) Plan operativo semanal (plantilla)

- Lunes: baseline y priorización (30 min).
- Martes-Miércoles: refactor y migración de capa.
- Jueves: tests + performance checks.
- Viernes: demo técnica y actualización de deuda/KPIs.

---

## 8) Recomendación final

La mejor estrategia aquí no es “reescribir todo”, sino una **migración incremental tipo BLOC**, empezando por los módulos con mayor uso (Animals y Calendar), con medición desde el día 1 y reglas de arquitectura en CI para evitar volver al estado actual.

Este enfoque te da:
- mejor mantenibilidad,
- menos regresiones,
- evolución controlada hacia una arquitectura más limpia y escalable.
