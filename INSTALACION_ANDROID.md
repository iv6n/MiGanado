# 📱 Instalación en Android

Guía para instalar MiGanado en dispositivos Android.

## 🔧 Requisitos Previos

1. **Habilitar instalación de fuentes desconocidas**:
   - Configuración → Seguridad → **Fuentes desconocidas** (ON)

2. **USB Debugging** (si usas cable):
   - Configuración → Opciones de desarrollo → **Depuración USB** (ON)

## 📥 Opción 1: Instalar via Flutter CLI (Recomendado)

### Requisitos
- Flutter instalado y configurado
- Dispositivo Android conectado via USB
- `flutter devices` debe mostrar tu dispositivo

### Instalación

```bash
cd miganado
flutter install build/app/outputs/flutter-apk/app-release.apk
```

La app se instalará automáticamente en tu Android.

## 📥 Opción 2: Compilar e Instalar Directamente

```bash
cd miganado
flutter run --release
```

Flutter compilará y instalará automáticamente.

## 📥 Opción 3: Instalación Manual

### Paso 1: Crear APK
```bash
cd miganado
flutter build apk --release
```

APK creado en: `build/app/outputs/flutter-apk/app-release.apk`

### Paso 2: Transferir a Android
- Via USB: Copiar archivo a almacenamiento del dispositivo
- Via Email: Enviar a tu email y descargar en Android
- Via Cloud: Google Drive, Dropbox, etc.

### Paso 3: Instalar
1. Abrir gestor de archivos en Android
2. Localizar `app-release.apk`
3. Tocar para instalar
4. Confirmar cuando se pida permiso
5. Esperar a que termine
6. Tocar "Abrir" para ejecutar

## ✅ Verificación Post-Instalación

Después de instalar, verificar que:

- [ ] App abre sin errores
- [ ] Dashboard muestra animales
- [ ] Puedes navegar entre pantallas
- [ ] Botones funcionan
- [ ] No hay crashes

## 🐛 Problemas Comunes

### "No se puede instalar, aplicación no compatible"
- Asegúrate de usar `app-release.apk` (no `app-debug.apk`)
- Tu Android debe ser API 21+ (Android 5.0+)

### "No reconoce el dispositivo"
- Activar USB Debugging en Android
- Desconectar y reconectar cable USB
- Ejecutar `flutter devices` para verificar

### "Fuentes desconocidas bloqueadas"
- Ir a Configuración → Seguridad
- Activar "Instalar de fuentes desconocidas"

### "Espacio insuficiente"
- APK pesa ~22MB
- Necesitas al menos 50MB libres
- Liberar espacio en tu Android

## 🔄 Desinstalar

```bash
flutter uninstall
```

O manualmente en Android:
- Configuración → Aplicaciones → MiGanado → Desinstalar

## 📊 Requisitos del Dispositivo

- **Android**: 5.0+ (API 21)
- **RAM**: Mínimo 2GB (recomendado 3GB+)
- **Espacio**: Mínimo 50MB libres
- **Conexión**: No requiere internet para funcionar

## 🔄 Actualizar Versión

Cuando haya nueva versión:

```bash
cd miganado
flutter build apk --release
flutter install build/app/outputs/flutter-apk/app-release.apk
```

La nueva versión reemplazará la anterior.

---

**Última actualización**: Enero 2026
