# 🚀 FASE 5: PLAN DE ESCALADO A GOOGLE PLAY STORE

**Fecha**: 14 Enero 2026  
**Estado**: 📋 PRE-PRODUCCIÓN  
**Objetivo**: Llevar MiGanado a Google Play Store

---

## 📊 HOJA DE RUTA - FASE 5

```
┌─────────────────┐
│ Fase 4.4 ✅     │
│ Dispositivo OK  │
└────────┬────────┘
         │
         ▼
┌──────────────────────────────────────────────┐
│ FASE 5: ESCALADO A PLAYSTORE                │
├──────────────────────────────────────────────┤
│ 1. Testing en dispositivo       [1-2 días]  │
│ 2. Correcciones post-testing    [1-2 días]  │
│ 3. Preparación PlayStore        [1 día]     │
│ 4. Configuración de firma       [2-4 horas] │
│ 5. Generación APK/AAB firmados  [2 horas]   │
│ 6. Subida a Play Console        [2 horas]   │
│ 7. Revisión de Google           [24-48 hrs] │
│ 8. LAUNCH EN PLAYSTORE          [Inmediato] │
└──────────────────────────────────────────────┘
```

---

## 1️⃣ TESTING EN DISPOSITIVO (1-2 días)

### Objetivo
✅ Validar app en Android real antes de PlayStore

### Pasos

#### 1.1 Instalar APK
```bash
cd c:\Users\Master\Desktop\Code\MiGanado\miganado
flutter install build/app/outputs/flutter-apk/app-release.apk
```

#### 1.2 Tests Funcionales
- [ ] App inicia sin crashes
- [ ] Todas las pantallas cargan correctamente
- [ ] Navegación funciona fluidamente
- [ ] Datos se persisten entre sesiones
- [ ] No hay memory leaks

#### 1.3 Tests de Usuario
- [ ] Agregar animal funciona
- [ ] Ver detalles de animal funciona
- [ ] Editar animal funciona
- [ ] Ver alertas funciona
- [ ] Eliminar animal funciona

#### 1.4 Tests de Edge Cases
- [ ] App sin conexión a internet
- [ ] App sin datos (empty state)
- [ ] App con muchos datos (performance)
- [ ] Cambio rápido de pantallas
- [ ] Rotación de pantalla

### Entregables
- [ ] Bug report (si hay bugs)
- [ ] Performance metrics
- [ ] Screenshots de app funcionando
- [ ] Feedback del usuario

---

## 2️⃣ CORRECCIONES POST-TESTING (1-2 días)

### Si hay bugs encontrados
```bash
# Flujo de corrección:
1. Documentar bug
2. Crear branch: fix/bug-name
3. Implementar corrección
4. Pasar tests
5. Compilar APK
6. Re-probar en dispositivo
7. Merge a main
```

### Si no hay bugs
✅ **Saltar directo a Paso 3**

---

## 3️⃣ PREPARACIÓN PLAYSTORE (1 día)

### 3.1 Google Play Developer Account

Si no lo tienes:
```
1. Ir a: https://play.google.com/console
2. Crear cuenta ($25 usd, de una sola vez)
3. Verificar email
4. Completar perfil de desarrollador
5. Aceptar términos
```

### 3.2 Información de App

Necesitarás preparar:

#### 📱 Detalles Básicos
- **Nombre App**: MiGanado
- **Paquete**: com.example.miganado
- **Tipo**: Aplicación
- **Categoría**: Ganadería/Productividad
- **Clasificación de contenido**: No

#### 📝 Descripción & Títulos

**Nombre corto** (50 caracteres máx):
```
MiGanado - Gestión Ganadera
```

**Descripción corta** (80 caracteres máx):
```
App para gestionar tu rebaño de ganado
```

**Descripción completa** (4000 caracteres máx):
```
MiGanado es la aplicación perfecta para ganaderos 
que desean gestionar su rebaño de forma eficiente.

Características:
✅ Registro de animales con peso, raza y sexo
✅ Seguimiento de costos y gastos
✅ Alertas sanitarias automáticas
✅ Estadísticas en tiempo real
✅ Historial de eventos
✅ Almacenamiento local seguro

Ideal para:
- Ganaderos medianos
- Productores de leche
- Criadores de ganado
- Gestión integral del rebaño

MiGanado - Tecnología para el campo
```

#### 🖼️ Screenshots

Necesitas 5-8 screenshots:
```
1. Home screen / Dashboard
2. Lista de animales
3. Detalles de animal
4. Agregar animal form
5. Alertas sanitarias
6. Estadísticas
7. (Opcional) Pantalla de mantenimiento
8. (Opcional) Pantalla de costos
```

**Requisitos**:
- Tamaño: 1080 x 1920 px (portrait) o 2560 x 1440 px (landscape)
- JPG o PNG
- Máx 20MB por imagen
- Mínimo 2, máximo 8

#### 🎨 Icono de App
```
- Tamaño: 512 x 512 px
- PNG
- Sin bordes
- Cuadrado
- Máx 1MB
```

#### 🎥 Feature Graphic (Opcional)
```
- Tamaño: 1024 x 500 px
- PNG o JPG
- Se muestra en PlayStore
- Puede ser el logo + fondo
```

#### 🏆 Calificación
```
Categoría: Productividad / Estilo de vida
Audiencia: Cualquiera
Requiere permisos: Almacenamiento, Camera (opcional)
```

### 3.3 Política de Privacidad

Necesitas una URL de Política de Privacidad:

**Opción A: Crear una rápida**
```
1. Google Docs
2. Escribir política básica
3. Publicar como página web pública
4. Copiar URL
```

**Opción B: Usar generador online**
```
https://www.iubenda.com/privacy-policy-generator/
(Gratis, te da URL)
```

**Contenido mínimo:**
```
- Qué datos recolecta
- Cómo se usan
- Cómo se almacenan
- Derechos del usuario
- Contacto para privacidad
```

### 3.4 Permisos de App

En `android/app/src/AndroidManifest.xml`:

```xml
<manifest ...>
    <!-- Permisos necesarios -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    
    <!-- Opcional: Para fotos -->
    <uses-permission android:name="android.permission.CAMERA" />
    
    <application ...>
        <!-- Contenido -->
    </application>
</manifest>
```

---

## 4️⃣ CONFIGURACIÓN DE FIRMA (2-4 horas)

### 4.1 Generar Keystore

Un **keystore** es tu certificado digital que demuestra que TÚ eres el desarrollador.

```bash
# En terminal (PowerShell):
cd c:\Users\Master\Desktop\Code\MiGanado

# Generar keystore
keytool -genkey -v -keystore miganado-key.jks `
  -keyalg RSA -keysize 2048 -validity 10000 -alias miganado

# Responde las preguntas:
# Contraseña: [TU_PASSWORD_SEGURO]
# Nombres y apellidos: [Tu nombre]
# Empresa: [Tu empresa/nombre]
# País: EC (para Ecuador)
# etc...
```

**⚠️ IMPORTANTE:**
```
✅ Guarda contraseña en lugar seguro
✅ NO compartas el archivo .jks
✅ Guarda el archivo en lugar seguro
❌ Si pierdes la contraseña, no puedes actualizar la app
```

### 4.2 Configurar Flutter para firma

Crear archivo `android/key.properties`:

```properties
storePassword=TU_PASSWORD_DEL_KEYSTORE
keyPassword=TU_PASSWORD_DEL_ALIAS
keyAlias=miganado
storeFile=/ruta/a/miganado-key.jks
```

**Opción más segura - Usar variables de entorno:**

```bash
# En PowerShell:
$env:KEYSTORE_PASSWORD = "tu_password"
$env:KEY_PASSWORD = "tu_password"
$env:KEY_ALIAS = "miganado"
$env:STORE_FILE = "c:\Users\Master\Desktop\Code\MiGanado\miganado-key.jks"
```

### 4.3 Modificar `android/app/build.gradle`

```gradle
android {
    ...
    signingConfigs {
        release {
            keyAlias = System.getenv("KEY_ALIAS") ?: "miganado"
            keyPassword = System.getenv("KEY_PASSWORD")
            storeFile = file(System.getenv("STORE_FILE"))
            storePassword = System.getenv("KEYSTORE_PASSWORD")
        }
    }
    
    buildTypes {
        release {
            signingConfig = signingConfigs.release
        }
    }
}
```

---

## 5️⃣ GENERACIÓN APK/AAB FIRMADOS (2 horas)

### 5.1 Limpiar y preparar

```bash
cd c:\Users\Master\Desktop\Code\MiGanado\miganado

# Limpiar builds anteriores
flutter clean
flutter pub get
```

### 5.2 Build App Bundle (RECOMENDADO)

App Bundle es lo que Google Play requiere:

```bash
# Build AAB firmado
$env:KEYSTORE_PASSWORD = "tu_password"
$env:KEY_PASSWORD = "tu_password"
$env:KEY_ALIAS = "miganado"
$env:STORE_FILE = "c:\Users\Master\Desktop\Code\MiGanado\miganado-key.jks"

flutter build appbundle --release

# Resultado: build\app\outputs\bundle\release\app-release.aab
```

### 5.3 Build APK Firmado (Alternativa)

Si prefieres APK:

```bash
flutter build apk --release

# Resultado: build\app\outputs\flutter-apk\app-release.apk
```

**Nota**: Google Play acepta ambos, pero **App Bundle es preferible** (archivos más pequeños para usuarios).

---

## 6️⃣ SUBIDA A PLAY CONSOLE (2 horas)

### 6.1 Crear Listing en Play Console

```
1. Ir a https://play.google.com/console
2. Click "Crear aplicación"
3. Nombre: "MiGanado"
4. Idioma predeterminado: Español
5. Aplicación o Juego: Aplicación
6. Click "Crear"
```

### 6.2 Completar Información

**Pestaña: Descripción de la aplicación**

```
Título: MiGanado - Gestión Ganadera
Descripción breve: App para gestionar tu rebaño
Descripción completa: [Ver 3.2 arriba]
Icono: [Subir PNG 512x512]
Screenshots: [Subir 5-8 imágenes]
Feature graphic: [Subir 1024x500 PNG]
Video promocional: [Opcional - URL de YouTube]
Categoría: Productividad
Clasificación de contenido: Completar cuestionario
```

**Pestaña: Contenido**

```
- Calificación por edad: +4 años
- Privacidad: [URL de política]
- Tipo de contenido: Productividad
- Clasificación ESRB: [Completar si aplica]
```

**Pestaña: Fijación de precios y distribución**

```
- Gratis o Pago: GRATIS
- Países: Todos (o seleccionar)
- Permisos requeridos: Revisar y confirmar
```

### 6.3 Subir Build

**Pestaña: Versiones de la aplicación**

```
1. Click "Producción"
2. Click "Crear nueva versión"
3. Subir APK o App Bundle
4. Completar:
   - Código de versión: 1
   - Versión (nombre): 1.0.0
   - Notas de la versión: 
     "Primera versión - MiGanado v1.0"
5. Click "Guardar"
```

### 6.4 Revisar antes de publicar

```
1. Verificar toda la información
2. Revisar screenshots
3. Confirmar permisos
4. Confirmar política de privacidad
5. Aceptar términos de Google Play
6. Enviar para revisión
```

---

## 7️⃣ REVISIÓN DE GOOGLE (24-48 horas)

### Qué hace Google
```
1. Revisa contenido
2. Verifica permisos
3. Comprueba malware
4. Valida funcionamiento
5. Verifica política de privacidad
```

### Posibles resultados

**✅ Aprobado**
- Verás "Activo" en la pestaña Producción
- La app aparecerá en PlayStore en ~3 horas

**❌ Rechazado**
- Recibirás email con razón
- Puedes corregir y resubmitir
- Vuelve al paso 6

**⚠️ Advertencia**
- App se publica pero con restricciones
- Puedes apelar o corregir

---

## 8️⃣ LAUNCH EN PLAYSTORE (Inmediato)

### Una vez aprobado

```
1. Ve a Play Console
2. Pestaña: Versiones de la aplicación
3. Verás "Activo"
4. Haz click en % de rollout
5. Aumenta a 100% para todos
6. Confirmar
7. LIVE EN PLAYSTORE ✅
```

### Enlaces de descarga

Una vez live, obtendrás:

**URL de PlayStore**:
```
https://play.google.com/store/apps/details?id=com.example.miganado
```

**QR Code**: 
- Escaneab desde PlayStore console
- Puedes compartir directamente

**Play Badge HTML**:
- Para poner en tu web

---

## 🔄 ACTUALIZACIONES FUTURAS

### Nueva versión (v1.0.1, v1.1, etc)

```bash
1. Hacer cambios en código
2. Actualizar version en pubspec.yaml:
   version: 1.0.1+2  # Major.Minor.Patch+BuildNumber
   
3. Build nuevo APK/AAB:
   flutter build appbundle --release
   
4. Subir a PlayStore:
   - Play Console → Producción → Nueva versión
   - Subir nuevo APK/AAB
   - Notas de la versión
   - Enviar para revisión (usualmente <12 horas)
```

---

## 📋 CHECKLIST FASE 5

### Pre-Dispositivo
- [ ] APK compilado (21.7MB)
- [ ] AAB compilado (21.7MB)
- [ ] Tests pasando (15/15)
- [ ] 0 Errores de compilación

### Testing en Dispositivo
- [ ] Instalar APK
- [ ] Probar todas las pantallas
- [ ] Probar navegación
- [ ] Probar funcionalidades
- [ ] Documentar bugs (si hay)

### Post-Testing
- [ ] Corregir bugs (si hay)
- [ ] Re-probar cambios
- [ ] Compilar AAB final

### Preparación PlayStore
- [ ] Google Play Developer Account
- [ ] Información de app completa
- [ ] Screenshots de alta calidad
- [ ] Icono de app (512x512)
- [ ] Política de privacidad

### Firma Digital
- [ ] Generar keystore (.jks)
- [ ] Configurar signing en Gradle
- [ ] Guardar contraseña segura

### Compilación Final
- [ ] Build AAB firmado
- [ ] Verificar tamaño (debe ser <100MB)
- [ ] Verificar que abre correctamente

### PlayStore Upload
- [ ] Crear listing en Play Console
- [ ] Subir información de app
- [ ] Subir screenshots
- [ ] Subir icono
- [ ] Subir AAB
- [ ] Completar campos requeridos
- [ ] Enviar para revisión

### Post-Launch
- [ ] Esperar aprobación (24-48 hrs)
- [ ] Verificar aparece en PlayStore
- [ ] Aumentar rollout a 100%
- [ ] Publicar en redes sociales

---

## 📞 CONTACTOS ÚTILES

### Google Play Support
```
https://support.google.com/googleplay
Email: contact-us@google.com
```

### Flutter Documentation
```
https://flutter.dev/docs/deployment/android
Signing guide: https://flutter.dev/docs/deployment/android#signing-the-app
```

### Documentación de Privacidad
```
https://policies.google.com/privacy
```

---

## 🎯 TIMELINE ESTIMADO

```
Día 1-2: Testing en dispositivo
Día 3: Correcciones (si hay bugs)
Día 4: Preparación PlayStore
Día 5: Firma y compilación
Día 5-6: Upload a PlayStore
Día 7-8: Revisión de Google (24-48 hrs)
Día 9: LAUNCH ✅

Total: ~9 días desde hoy
```

---

## 🚀 SIGUIENTE PASO

**ACCIÓN**: Instalar APK en dispositivo y comenzar testing

```bash
cd c:\Users\Master\Desktop\Code\MiGanado\miganado
flutter install build/app/outputs/flutter-apk/app-release.apk
```

**Ver también**: 
- `INSTALACION_ANDROID.md` - Instrucciones detalladas
- `FASE_4.4_INFORME_FINAL.md` - Estado actual de la app

---

**Documento**: FASE 5 Plan de Escalado  
**Fecha**: 14 Enero 2026  
**Estado**: 📋 PRE-PRODUCCIÓN - Listo para testing en dispositivo  
**Próximo**: ⏭️ Testing en Android real
