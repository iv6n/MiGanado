# MiGanado - Gestión Integral de Ganado

Aplicación móvil desarrollada en **Flutter** para la gestión completa de explotaciones ganaderas.

## 🚀 Descripción General

MiGanado es un sistema de información ganadera que permite a los ganaderos:

- 📋 **Registro de Animales**: Gestionar bovinos y equinos con datos detallados
- 📊 **Seguimiento Reproductivo**: Control de ciclos reproductivos y pariciones
- 💉 **Vacunación y Desparasitación**: Programación y registro de tratamientos
- ⚖️ **Registro de Pesos**: Seguimiento del crecimiento de los animales
- 💰 **Gestión de Costos**: Control de gastos y rentabilidad
- 📍 **Ubicaciones**: Organización de corrales y espacios
- 📈 **Reportes**: Generación de análisis y reportes

## 📁 Estructura del Proyecto

```
miganado/
├── lib/
│   ├── main.dart                 # Punto de entrada
│   ├── core/                     # Configuración central
│   ├── data/                     # Capa de datos (Isar, APIs)
│   ├── domain/                   # Lógica de negocio
│   ├── features/                 # Características principales
│   │   ├── animals/              # Gestión de animales
│   │   ├── mantenimiento/        # Vacunas, desparasitación
│   │   ├── reproductivo/         # Ciclos reproductivos
│   │   ├── pesos/                # Registro de pesos
│   │   ├── costos/               # Gestión de costos
│   │   ├── locations/            # Ubicaciones
│   │   └── reports/              # Reportes
│   ├── providers/                # State management (Riverpod)
│   ├── ui/                       # Interfaz de usuario
│   ├── theme/                    # Estilos y temas
│   └── services/                 # Servicios auxiliares
├── test/                         # Pruebas unitarias
└── pubspec.yaml                  # Dependencias
```

## 🛠️ Stack Tecnológico

- **Framework**: Flutter 3.x
- **Base de Datos**: Isar (NoSQL local)
- **State Management**: Riverpod
- **Arquitetura**: Clean Architecture (Domain-Driven)
- **Lenguaje**: Dart

## ⚙️ Requisitos Previos

- Flutter 3.0+
- Dart 3.0+
- Android SDK (para desarrollo Android)
- Xcode (para desarrollo iOS)

## 📦 Instalación

### 1. Clonar repositorio

```bash
git clone <repo_url>
cd miganado
```

### 2. Obtener dependencias

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Ejecutar en emulador

```bash
flutter run
```

## 🔧 Configuración de Desarrollo

### Build Runner (Isar & Riverpod)

Después de modificar modelos o providers, ejecutar:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Análisis de código

```bash
flutter analyze
```

## 📝 Convenciones de Código

- **Nombres de archivos**: `snake_case` (ej: `animal_entity.dart`)
- **Clases**: `PascalCase` (ej: `AnimalEntity`)
- **Variables/funciones**: `camelCase` (ej: `calcularEtapa()`)
- **Constantes**: `lowerCamelCase` (ej: `maxAnimalsPerUser`)

## 🔄 Flujo de Cambios

1. Crear rama: `git checkout -b feature/nombre-feature`
2. Implementar cambios
3. Ejecutar tests: `flutter test`
4. Ejecutar análisis: `flutter analyze`
5. Commit: `git commit -m "feat: descripción"`
6. Push: `git push origin feature/nombre-feature`
7. Abrir Pull Request

## 📚 Documentación Adicional

- [REFERENCIA_RAPIDA.md](./REFERENCIA_RAPIDA.md) - Comandos y referencias útiles
- [GUIA_CORRECCION_BUGS.md](./GUIA_CORRECCION_BUGS.md) - Guía de debugging
- [RECOMENDACIONES_FEATURES.md](./RECOMENDACIONES_FEATURES.md) - Próximas mejoras

## 🐛 Reporte de Bugs

Para reportar bugs, abrir un issue con:
- Descripción clara del problema
- Pasos para reproducir
- Versión de Flutter/Dart
- Dispositivo/emulador

## 📋 Próximas Funcionalidades

Ver [PROXIMOS_PASOS.md](./PROXIMOS_PASOS.md) para el roadmap completo.

## 📄 Licencia

Proyecto privado - Todos los derechos reservados

---

**Última actualización**: Enero 2026
**Versión**: 1.0.0
