# MiGanado - App de Gestión de Ganado

Aplicación Flutter para registro y seguimiento de ganado con almacenamiento local.

## 🚀 Características

✅ **Registro de animales** - Crear, editar y eliminar registros de ganado
✅ **Pesajes** - Registrar peso de animales a lo largo del tiempo
✅ **Información económica** - Precios de compra/venta y costos extras
✅ **Historial** - Visualizar evolución de peso
✅ **Sin backend** - Datos almacenados localmente (SQLite)
✅ **Android y Web** - Compatible con múltiples plataformas
✅ **Extensible** - Fácil agregar campos nuevos

## 📱 Plataformas soportadas

- Android ✅
- Web ✅
- iOS (compatible con estructura)
- Windows (compatible con estructura)

## 🏗 Arquitectura

Arquitectura limpia con separación de capas:

```
lib/
├── main.dart                 # Punto de entrada
├── models/                   # Entidades de dominio
│   ├── animal.dart
│   ├── pesaje.dart
│   └── index.dart
├── data/
│   └── database/
│       ├── schema.dart       # Tablas de BD
│       ├── database.dart     # Clase principal DB (Drift)
│       └── database.g.dart   # Generado automáticamente
├── repositories/             # Capa de acceso a datos
│   ├── animal_repository.dart
│   └── pesaje_repository.dart
├── providers/                # State management (Riverpod)
│   ├── database_providers.dart
│   └── data_providers.dart
└── ui/
    ├── screens/              # Pantallas
    │   ├── lista_animales_screen.dart
    │   ├── agregar_animal_screen.dart
    │   ├── detalle_animal_screen.dart
    │   └── agregar_pesaje_screen.dart
    └── widgets/              # Componentes reutilizables
        └── custom_widgets.dart
```

## 🛠 Dependencias principales

- **flutter_riverpod**: State management
- **drift**: ORM para SQLite (compatible Android y Web)
- **uuid**: Identificadores únicos
- **path_provider**: Acceso a directorios del sistema

## 🚀 Cómo ejecutar

### Requisitos
- Flutter 3.2.2+ 
- Android SDK o Chrome (para Web)

### Instalación de dependencias
```bash
flutter pub get
dart run build_runner build
```

### Ejecutar en Android
```bash
flutter run
```

### Ejecutar en Web
```bash
flutter run -d chrome
```

## 📝 Modelos de datos

### Animal
- `id` (UUID)
- `numeroArete` (único, requerido)
- `tipo` (vaca, becerro, toro, novillo)
- `sexo` (macho, hembra)
- `raza` (requerido)
- `fechaNacimiento` (opcional)
- `notas` (requerido, puede estar vacío)
- `precioCompra` (opcional)
- `precioVenta` (opcional)
- `costosExtra` (Map<String, double> para costos adicionales)

### Pesaje
- `id` (UUID)
- `animalId` (referencia al animal)
- `pesoKg` (requerido)
- `fecha` (requerido)
- `notas` (opcional)

## 🎯 Pantallas

### 1. **Lista de Animales**
- Muestra todos los animales registrados
- Último peso de cada animal
- Botón flotante para agregar animal
- Toca un animal para ver detalles

### 2. **Agregar/Editar Animal**
- Formulario con todos los campos
- Validación de datos obligatorios
- Fecha de nacimiento con selector
- Campos económicos opcionales

### 3. **Detalle del Animal**
- Información básica del animal
- Información económica (si existe)
- Historial de pesajes
- Botones para editar/eliminar
- Botón para agregar pesaje

### 4. **Agregar/Editar Pesaje**
- Formulario simple (peso, fecha, notas)
- Validación del peso
- Selector de fecha
- Información del animal destacada

## 🔄 Flujo de datos

1. **UI → Repository** - Las pantallas piden datos a través de Riverpod
2. **Repository → Database** - El repositorio consulta la BD via Drift
3. **Database → SQLite** - Drift gestiona la BD local
4. **Database → Repository** - Los datos retornan mapeados a modelos
5. **Repository → UI** - Riverpod actualiza la UI automáticamente

## 🔐 Almacenamiento

Los datos se guardan en SQLite local:
- **Android**: `getApplicationDocumentsDirectory()` 
- **Web**: IndexedDB via Drift
- **Archivo DB**: `miganado.db`

## 🚀 Cómo extender

### Agregar un nuevo campo a Animal

1. **Editar modelo** (`lib/models/animal.dart`)
   ```dart
   final String? nuevoField;
   ```

2. **Actualizar BD** (`lib/data/database/schema.dart`)
   ```dart
   TextColumn get nuevoField => text().nullable()();
   ```

3. **Regenerar código Drift**
   ```bash
   dart run build_runner build
   ```

4. **Actualizar repositorio** (`lib/repositories/animal_repository.dart`)

5. **Usar en pantallas**

## ⚠️ Limitaciones conocidas

- Sin sincronización en la nube (offline-first)
- Sin autenticación de usuarios
- Sin backup automático (requiere acceso a archivo)
- Parseador JSON simple en costosExtra (considerar usar `dart:convert` si es necesario)

## 🐛 Debugging

Habilitar logs de Drift:
```dart
database.logStatements = true;
```

## 📄 Licencia

Proyecto de prueba/educativo

## 👨‍💻 Autor

Desarrollado con Flutter y Dart. Arquitectura limpia y lisura para producción.
