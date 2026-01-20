# 🔧 Cómo Resetear la Base de Datos - MiGanado

## El Problema

Si registraste animales **ANTES** de la actualización de fix, los datos antiguos en la BD local tienen:
- `edadMeses` incorrecto (hardcodeado en seed viejo)
- Cálculo de `etapa` incorrecto (basado en edadMeses viejo)

**Ejemplo**: Bessie tiene `edadMeses: 48` pero nació el 15/3/2020 (ahora tiene ~5 años = 60 meses)

---

## ✅ Solución: Limpiar BD y Regenerar

### Opción 1: Automática (Recomendado)

1. **Actualiza main.dart** para que limpie la BD en la primera ejecución:

```dart
// lib/main.dart
import 'package:miganado/services/reset_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final database = MiGanadoDatabase();
  
  // 🔄 LIMPIAR BD VIEJA Y CARGAR DATOS CORRECTOS
  // Descomenta esta línea UNA SOLA VEZ para resetear
  // await ResetDatabase.deleteIsarDatabase();
  
  await database.initDatabase();
  
  runApp(const MyApp());
}
```

2. **Descomenta la línea** `await ResetDatabase.deleteIsarDatabase();`

3. **Ejecuta la app**:
```bash
cd miganado
flutter clean
flutter pub get
flutter run
```

4. **Vuelve a comentar la línea** después de que se ejecute una sola vez

---

### Opción 2: Manual (Alternativa)

Si quieres hacerlo manualmente:

```bash
# Android
rm -rf ~/Library/Android/sdk/emulator/data/default.ini  # En caso de emulador
flutter clean
flutter pub get
flutter run
```

**O** simplemente desinstala la app del emulador/dispositivo:

```bash
# Emulador Android
adb uninstall com.example.miganado

# Luego:
flutter run
```

---

### Opción 3: Desde la App (Si está implementado)

Agrega un botón de "Resetear BD" en Settings:

```dart
// Dentro de un SettingsScreen o AdminPanel
ElevatedButton(
  onPressed: () async {
    final confirmed = await showDialog(...);
    if (confirmed == true) {
      await ResetDatabase.deleteIsarDatabase();
      // Reiniciar app manualmente
    }
  },
  child: const Text('Resetear Base de Datos'),
)
```

---

## 📊 Qué Sucederá Después

Una vez reseteada la BD, los animales de seed se cargarán con **datos correctos**:

| Animal | Arete | Nac. | Edad Real | Etapa Correcta |
|--------|-------|------|-----------|---|
| Bessie | BES-001 | 15/3/2021 | 4 años | Vaca ✅ |
| Daisy | DAI-002 | 22/7/2019 | 5 años | Vaca ✅ |
| Brahman | BRH-003 | 5/11/2018 | 6+ años | Toro ✅ |
| Valentina | VQA-004 | 10/2/2023 | 23 meses | Vaquilla ✅ |
| Cebollín | CEL-005 | 20/8/2023 | 17 meses | Novillo ✅ |
| Benji | BEC-006 | hace ~3.5 meses | 3-4 meses | Becerro ✅ |
| Alcázar | CAB-007 | 10/5/2020 | 4-5 años | Caballo ✅ |

---

## 🐛 Verificación

Después de resetear, verifica que:

1. **Bessie** ahora muestre:
   - Edad: **4 años** (o "4 años" dependiendo de la fecha exacta)
   - Etapa: **Vaca** ✅ (NO "Becerro")

2. **Benji** muestre:
   - Edad: **3-4 meses**
   - Etapa: **Becerro** ✅

3. **Cebollín** muestre:
   - Edad: **17 meses**
   - Etapa: **Novillo** ✅

---

## 📝 Cambios Realizados en el Código

### En `seed_database.dart`:
- ✅ Agregado método `_calcularEdadMeses(DateTime)` que calcula edad correctamente
- ✅ Todos los animales usan `_calcularEdadMeses(fechaNacimiento)` en lugar de hardcodear `edadMeses`
- ✅ Las fechas de nacimiento son realistas

### En `animal.dart` (domain/entities):
- ✅ El factory `Animal.fromEntity()` recalcula `edadMeses` automáticamente

### En `animal_detail_widgets.dart`:
- ✅ El widget calcula etapa basada en `edadMeses` en vivo
- ✅ Grid layout (2 columnas) para mejor visualización

---

## ⚠️ Advertencias

- **NO hagas reset cada vez** que abres la app (solo UNA VEZ)
- Después de resetear, **tus datos anteriores se pierden** (excepto lo en la nube si sincronizas)
- El reset **NO afecta la app en producción** si usas una BD diferente

---

## 🆘 Si Aún No Funciona

Si después de resetear aún ves problemas:

1. Verifica que `seed_database.dart` tiene el método `_calcularEdadMeses()`
2. Confirma que `animal.dart` recalcula en `fromEntity()`
3. Prueba en un emulador limpio:
   ```bash
   flutter clean
   flutter pub get
   flutter run --clean
   ```

4. Contacta soporte si persiste el problema

---

**Última actualización**: 2026-01-19  
**Archivo relacionado**: `lib/services/reset_database.dart`
