# 📱 Instrucciones para Instalar MiGanado en Dispositivo Android

## ✅ APK Compilado

**Ubicación**: `build\app\outputs\flutter-apk\app-release.apk`  
**Tamaño**: 21.7MB  
**Estado**: ✅ Listo para instalar

---

## 🔧 Requisitos Previos

1. **Habilitar instalación de fuentes desconocidas**:
   - Ir a **Configuración → Seguridad**
   - Activar **"Fuentes desconocidas"** o **"Instalar aplicaciones desconocidas"**

2. **USB Debugging (Opcional, si usas cable)**:
   - Ir a **Configuración → Opciones de desarrollo**
   - Activar **"Depuración USB"**

---

## 📥 Opción 1: Instalar via Cable USB (Recomendado)

### Paso 1: Conectar dispositivo
```bash
# Conecta tu Android al PC via USB
# El PC debe reconocer el dispositivo
```

### Paso 2: Verificar conexión
```bash
flutter devices
# Debería listar tu dispositivo Android
```

### Paso 3: Instalar APK
```bash
# En terminal, desde el directorio del proyecto:
cd c:\Users\Master\Desktop\Code\MiGanado\miganado

# Opción A: Usar Flutter (automático)
flutter install build/app/outputs/flutter-apk/app-release.apk

# Opción B: Usar ADB directamente
adb install -r build\app\outputs\flutter-apk\app-release.apk
```

### Paso 4: Lanzar la app
```bash
# Automático después de instalar, o:
flutter run -r build/app/outputs/flutter-apk/app-release.apk
```

---

## 📥 Opción 2: Transferir APK Manualmente

### Paso 1: Copiar APK a dispositivo
```bash
# Copiar el archivo APK a tu dispositivo via:
- Bluetooth
- Email
- USB (arrastrar archivo)
- Cualquier servicio de nube
```

### Paso 2: Instalar en el dispositivo
- Abrir **Gestor de Archivos**
- Navegar a descargas o donde esté el APK
- Hacer tap en **app-release.apk**
- Confirmar instalación

---

## 🚀 Comandos Útiles

### Ver dispositivos conectados
```bash
adb devices
```

### Instalar APK con reemplazo (si ya existe)
```bash
adb install -r build\app\outputs\flutter-apk\app-release.apk
```

### Desinstalar app
```bash
adb uninstall com.example.miganado
# O desde el dispositivo: Configuración → Aplicaciones → MiGanado → Desinstalar
```

### Ver logs en tiempo real
```bash
flutter logs
# o
adb logcat
```

---

## 🧪 Pruebas Recomendadas

### En el Dispositivo:

1. **Inicio de la app**
   - ✓ La app inicia sin crashes
   - ✓ Se ve el dashboard

2. **Navegación**
   - ✓ Botón "+" agrega animal
   - ✓ Botón "Lista" muestra lista
   - ✓ Botón "Alertas" muestra alertas
   - ✓ Taps en animales abren detalles

3. **Estados de carga**
   - ✓ Se muestra loading spinner
   - ✓ Se muestra mensaje de carga

4. **Manejo de errores**
   - ✓ Si hay error, se muestra pantalla de error
   - ✓ Botón "Reintentar" funciona

5. **Empty State**
   - ✓ Si no hay animales, se muestra mensaje
   - ✓ Botón "Agregar animal" funciona

6. **Datos**
   - ✓ Se cargan animales desde DB
   - ✓ Se muestran estadísticas
   - ✓ Se muestran alertas

---

## 🐛 Troubleshooting

### Problema: "Dispositivo no encontrado"
```bash
# Solución:
adb kill-server
adb start-server
flutter devices
```

### Problema: "APK corrupto"
```bash
# Recompilar:
cd miganado
flutter clean
flutter build apk --release
```

### Problema: "Instalación rechazada"
```bash
# Asegúrate de:
1. Habilitar "Fuentes desconocidas"
2. Tener espacio libre en el dispositivo (>50MB)
3. Usar: adb install -r (reemplaza versión anterior)
```

### Problema: "La app no inicia"
```bash
# Ver logs:
flutter logs
# o
adb logcat | grep flutter
```

---

## 📋 Checklist Pre-Instalación

- [ ] APK compilado (21.7MB)
- [ ] 0 errores de compilación
- [ ] Tests pasados (15/15)
- [ ] Dispositivo conectado
- [ ] USB Debugging habilitado
- [ ] Fuentes desconocidas habilitadas
- [ ] ADB reconoce el dispositivo

---

## 🎯 Después de Instalar

### Próximos Pasos:
1. **Prueba la app** en tu dispositivo
2. **Reporta cualquier problema** encontrado
3. **Haz correcciones** si es necesario
4. **Prepárate para escalar** a PlayStore

### Métricas a Verificar:
- ✓ No hay crashes
- ✓ UI se ve bien
- ✓ Navegación funciona
- ✓ Datos se cargan
- ✓ Performance es bueno

---

## 📊 Información de la App

| Propiedad | Valor |
|-----------|-------|
| **Package Name** | `com.example.miganado` |
| **Versión** | 1.0.0 |
| **API Level Mín** | 21 (Android 5.0) |
| **API Level Dest** | 34 (Android 14) |
| **Tamaño APK** | 21.7MB |
| **Arquitecturas** | arm64-v8a, armeabi-v7a |

---

## ✅ Estado de la Compilación

```
✅ Compilación APK: Exitosa
✅ Tamaño: 21.7MB (Óptimo)
✅ Errores: 0
✅ Tests: 15/15 PASS
✅ Listo para instalar en dispositivo
```

**Documento generado**: 14 de Enero de 2026  
**Estado**: ✅ APP LISTA PARA PRUEBAS EN DISPOSITIVO
