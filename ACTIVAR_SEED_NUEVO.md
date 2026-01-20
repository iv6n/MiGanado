# ⚡ QUICK START - ACTIVAR NUEVO SEED

## 🚀 En 3 Pasos (1 minuto)

### Paso 1: Abrir main.dart
```
Archivo: lib/main.dart
```

### Paso 2: Cambiar Import
```dart
// BUSCAR ESTA LÍNEA (línea ~8):
import 'package:miganado/services/seed_database.dart';

// REEMPLAZAR POR:
import 'package:miganado/services/seed_database_full.dart';
```

### Paso 3: Cambiar Llamada
```dart
// BUSCAR ESTA LÍNEA (línea ~20):
await SeedDatabase.seedAll(database);

// REEMPLAZAR POR:
await SeedDatabaseFull.seedAll(database);
```

### Paso 4: Ejecutar
```bash
flutter clean && flutter run
```

---

## ✅ Verificación Post-Carga

Después de ejecutar, deberías ver en consola:

```
✅ 12 ANIMALES creados:
✅ 44 PESAJES registrados
✅ 16 EVENTOS DE MANTENIMIENTO
✅ 11 COSTOS OPERACIONALES
✅ 3 REGISTROS DE REPRODUCCIÓN
...
```

---

## 📊 QUÉ VAS A VER

- **12 animales** (vs 7 anteriores)
- **44 pesajes** con historiales de 8 meses
- **16 eventos sanitarios** documentados
- **11 costos** registrados
- **Datos realistas** listos para presentación

---

## 🔄 Si Algo Sale Mal

```bash
# Opción A: Limpiar todo
flutter clean
flutter pub get
flutter run

# Opción B: Reset completo (Android)
# Settings > Apps > MiGanado > Storage > Clear Data
# Luego: flutter run
```

---

## 📞 Preguntas Frecuentes

**P: ¿Desaparece el seed anterior?**  
R: Sí, se reemplaza completamente. Si quieres mantener ambos, contacta.

**P: ¿Cuánto tarda en cargar?**  
R: ~2-3 segundos (una sola vez al instalar)

**P: ¿Afecta el rendimiento?**  
R: No. La app sigue igual de rápida.

**P: ¿Puedo usar en producción?**  
R: No, es solo para desarrollo y demostración.

---

## 🎯 Casos de Uso Por Animal

Abre cada animal para ver:

- **Bessie** → Producción lechera 28L/día
- **Daisy** → Gestación próximo parto
- **Cebollín** → Engorde +220kg en 180 días
- **Brahman** → Reproductor elite
- **Benji, Luna** → Becerros neonatos
- **Etc.**

---

## 📁 Archivos Creados

1. `lib/services/seed_database_full.dart` - Nuevo seed
2. `GUIA_NUEVO_SEED.md` - Documentación completa
3. `COMPARATIVA_SEEDS.md` - Comparación antes/después

---

**¡Listo! El nuevo seed está activo con 12 animales y datos completos.**
