# MiGanado - Aplicación Flutter

Aplicación de gestión ganadera construida con Flutter y Dart.

## 🚀 Inicio Rápido

### Ejecutar la aplicación

```bash
flutter run
```

### Compilar para Android

```bash
flutter build apk
```

### Compilar para iOS

```bash
flutter build ios
```

## 📦 Configuración de Desarrollo

### Instalar dependencias

```bash
flutter pub get
```

### Ejecutar Code Generator (Isar, JSON serialization, etc.)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Análisis de código

```bash
flutter analyze
```

### Ejecutar tests

```bash
flutter test
```

## 📁 Estructura de Carpetas

- **lib/main.dart** - Punto de entrada de la aplicación
- **lib/core/** - Configuración central y constantes
- **lib/data/** - Modelos de datos y acceso a base de datos
- **lib/domain/** - Lógica de negocio (entidades y casos de uso)
- **lib/features/** - Características principales de la app
- **lib/providers/** - State management con Riverpod
- **lib/services/** - Servicios auxiliares
- **lib/ui/** - Interfaz de usuario (screens y widgets)
- **lib/theme/** - Configuración de estilos y temas
- **test/** - Pruebas unitarias

## 🔑 Características Principales

### Animales
- Registro detallado de bovinos y equinos
- Cálculo automático de etapas de vida
- Gestión de categorías y razas

### Mantenimiento
- Vacunación y desparasitación
- Tratamientos personalizados
- Historial completo de eventos

### Reproducción
- Seguimiento de ciclos reproductivos
- Registro de pariciones
- Historial de eventos reproductivos

### Pesos
- Registro periódico de pesos
- Gráficas de evolución
- Análisis de crecimiento

### Costos
- Gestión de gastos por animal
- Análisis de rentabilidad
- Reportes de costos

### Ubicaciones
- Organización de corrales
- Asignación de animales a ubicaciones

### Reportes
- Generación de análisis
- Exportación de datos

## 🔧 Configuración de Base de Datos

La aplicación usa **Isar** como base de datos local. Los modelos se encuentran en:
- `lib/features/animals/data/models/`
- `lib/features/mantenimiento/data/models/`
- `lib/features/locations/data/models/`
- etc.

Después de modificar modelos, ejecutar:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## 📊 State Management

Se utiliza **Riverpod** para gestionar el estado. Los providers se encuentran en `lib/providers/`.

## 🐛 Debugging

### Ver logs en la consola

```bash
flutter run
```

### Conectar DevTools

```bash
flutter pub global activate devtools
devtools
```

## 📝 Convenciones de Código

- Archivos: `snake_case`
- Clases: `PascalCase`
- Métodos/variables: `camelCase`
- Constantes: `lowerCamelCase`

## ✅ Checklist antes de Commit

- [ ] `flutter analyze` sin errores
- [ ] `flutter test` pasando
- [ ] Code generator ejecutado
- [ ] Cambios documentados
- [ ] No hay archivos de depuración (print statements, TODO comments)

## 📞 Soporte

Para reportar problemas, abrir un issue con:
- Descripción clara
- Pasos para reproducir
- Versión de Flutter
- Tipo de dispositivo

---

**Versión**: 1.0.0 | **Última actualización**: Enero 2026
