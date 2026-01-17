# ⚡ REFERENCIA RÁPIDA

Guía rápida de comandos y procedimientos más comunes para MiGanado.

## 🚀 Comandos Frecuentes

### Ejecutar la aplicación

```bash
cd miganado
flutter run
```

### Instalar dependencias

```bash
flutter pub get
```

### Generar código (Isar, JSON serialization, Riverpod)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Limpiar build

```bash
flutter clean
flutter pub get
```

### Análisis de código

```bash
flutter analyze
```

### Ejecutar tests

```bash
flutter test
```

## 📦 Compilación

### Build APK para Android

```bash
flutter build apk --release
```

Ubicación: `build/app/outputs/flutter-apk/app-release.apk`

### Instalar APK en dispositivo conectado

```bash
flutter install build/app/outputs/flutter-apk/app-release.apk
```

### Build iOS

```bash
flutter build ios --release
```

## 🔧 Desarrollo

### Debugging DevTools

```bash
flutter pub global activate devtools
devtools
```

### Ver logs en tiempo real

```bash
flutter run -v  # Verbose mode
```

### Hot Reload durante desarrollo

Presionar `r` en la terminal durante `flutter run`

### Full Restart

Presionar `R` en la terminal durante `flutter run`

## 📝 Editar Modelos Isar

1. Modificar archivo en `lib/features/*/data/models/`
2. Ejecutar build runner:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## 🗂️ Estructura Base de Datos

- **Animales**: `lib/features/animals/data/models/animal_entity.dart`
- **Vacunas**: `lib/features/mantenimiento/data/models/vacuna_entity.dart`
- **Tratamientos**: `lib/features/mantenimiento/data/models/tratamiento_entity.dart`
- **Pesos**: `lib/features/pesos/data/models/peso_entity.dart`
- **Costos**: `lib/features/costs/data/models/costo_entity.dart`
- **Reproducción**: `lib/features/animals/data/models/evento_reproductivo_entity.dart`
- **Ubicaciones**: `lib/features/locations/data/models/ubicacion_entity.dart`

## 🔍 Debugging Común

### Problem: "No such file or directory" en build_runner

**Solución**:
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### Problem: Port 5037 already in use

**Solución**:
```bash
flutter run --host 127.0.0.1 --port 5038
```

### Problem: Cambios en código no se ven

**Solución**: 
1. Presionar `R` en terminal (full restart)
2. Si persiste: `flutter clean && flutter run`

## 📊 Git Workflow

```bash
# Crear rama nueva
git checkout -b feature/nombre-feature

# Hacer cambios
# ...

# Verificar cambios
flutter analyze
flutter test

# Commit
git add .
git commit -m "feat: descripción del cambio"

# Push
git push origin feature/nombre-feature

# Abrir Pull Request
```

## 🗑️ Limpieza Temporal

### Eliminar archivos generados

```bash
flutter clean
```

### Eliminar solo Isar

```bash
flutter pub run build_runner clean
```

## 📚 Documentación Adicional

- [README.md](./README.md) - Descripción general del proyecto
- [GUIA_CORRECCION_BUGS.md](./GUIA_CORRECCION_BUGS.md) - Guía de debugging
- [RECOMENDACIONES_FEATURES.md](./RECOMENDACIONES_FEATURES.md) - Próximas mejoras
- [PROXIMOS_PASOS.md](./PROXIMOS_PASOS.md) - Roadmap del proyecto
- [INSTALACION_ANDROID.md](./INSTALACION_ANDROID.md) - Instalación en Android

---

**Última actualización**: Enero 2026
