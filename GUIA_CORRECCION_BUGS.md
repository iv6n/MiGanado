# 🐛 GUÍA DE CORRECCIÓN DE BUGS

Guía para diagnosticar y corregir problemas en MiGanado.

## 🚨 Recolectar Información del Bug

Cuando encuentres un problema, documenta:

1. **Pantalla donde ocurre**: Home, Lista, Detalles, etc.
2. **Acción que hiciste**: Presionaste qué botón, scrolleaste, etc.
3. **Resultado esperado**: ¿Qué debería pasar?
4. **Resultado real**: ¿Qué pasó en cambio?
5. **Error en consola**: Si tienes acceso a logs

### Ejemplo de reporte completo:
```
Pantalla: Detalles del Animal
Acción: Presionar botón "Editar"
Esperado: Abre formulario de edición
Real: Aplicación cierra sin aviso
Error: null pointer exception en main.dart
```

## 🔧 Pasos para Corregir

### 1. Debugging Local

```bash
cd miganado
flutter run -v  # Verbose mode para ver logs
```

En la terminal verás logs detallados. Busca mensajes de error.

### 2. DevTools

```bash
flutter pub global activate devtools
devtools
```

Abre browser en `localhost:9100` y conecta tu app.

Permite inspeccionar:
- Performance
- Memory
- Network
- Logs en tiempo real

### 3. Agregar Logs Temporales

En el código donde creas que está el problema:

```dart
print('DEBUG: Variable x = $x');
print('DEBUG: Entrando en función calcularEtapa()');
```

Ejecuta `flutter run` y busca tu mensaje en la terminal.

## 🔍 Problemas Comunes y Soluciones

### Problema: App crashea al abrir

**Posibles causas**:
- Error al leer base de datos Isar
- Problema en main.dart
- Dependencia faltante

**Solución**:
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run -v
```

Ver mensaje de error en la terminal.

### Problema: Pantalla no se carga / se congela

**Posibles causas**:
- Consulta a base de datos muy lenta
- Bucle infinito en build
- Problema de state management (Riverpod)

**Solución**:
1. Abrir DevTools (Performance tab)
2. Ver si hay UI bloqueada
3. Revisar logs de Riverpod:
   ```dart
   // En main.dart, agregar:
   logger: ConsoleLogger(),
   ```

### Problema: Datos no se guardan en base de datos

**Posibles causas**:
- Isar no está inicializado
- Modelo no tiene @Collection
- Build runner no ejecutado después de cambios

**Solución**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

### Problema: Error de compilación "Field required..."

**Posible causa**:
- Modificaste un modelo pero no ejecutaste build runner

**Solución**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Problema: Flutter analyze reporta errores

**Solución**:
```bash
flutter analyze --suggestions --no-pub
```

Ver qué errores aparecen (no son críticos si solo son lints).

## 🐛 Debugging por Feature

### Problema en Gestión de Animales

Revisar:
- [animal_entity.dart](miganado/lib/features/animals/data/models/animal_entity.dart) - Modelo
- [animal_repository.dart](miganado/lib/features/animals/data/repositories/) - Acceso a datos
- [animal_providers.dart](miganado/lib/providers/) - State

### Problema en Vacunación / Desparasitación

Revisar:
- [vacuna_entity.dart](miganado/lib/features/mantenimiento/data/models/vacuna_entity.dart)
- [tratamiento_entity.dart](miganado/lib/features/mantenimiento/data/models/tratamiento_entity.dart)

### Problema en Reproducción

Revisar:
- [evento_reproductivo_entity.dart](miganado/lib/features/animals/data/models/evento_reproductivo_entity.dart)

### Problema en UI / Pantallas

Revisar:
- Widgets en `lib/ui/screens/`
- Widgets reutilizables en `lib/ui/widgets/`
- Verificar que no haya errores de layout

## ✅ Checklist para Resolver Bugs

- [ ] Recopilar información del bug
- [ ] Reproducir en desarrollo
- [ ] Ejecutar `flutter analyze`
- [ ] Ver logs con `flutter run -v`
- [ ] Revisar código relacionado
- [ ] Hacer cambio
- [ ] `flutter clean && flutter pub get`
- [ ] `flutter pub run build_runner build --delete-conflicting-outputs`
- [ ] Probar cambio localmente
- [ ] Probar en dispositivo
- [ ] Verificar que no rompiste otra cosa
- [ ] Commit con mensaje claro

## 📝 Ejemplo de Sesión de Debugging

```bash
# 1. Entrar al proyecto
cd miganado

# 2. Limpiar y obtener dependencias
flutter clean
flutter pub get

# 3. Regenerar código
flutter pub run build_runner build --delete-conflicting-outputs

# 4. Ejecutar en modo verbose
flutter run -v

# 5. Abrir DevTools (en otra terminal)
devtools
# Luego conectar en localhost:9100

# 6. Reproducir bug en la app
# 7. Ver logs en terminal y DevTools

# 8. Hacer cambios en código
# 9. Hot reload (presionar 'r' en terminal)

# 10. Si hot reload no funciona:
# Presionar 'R' para full restart

# 11. Cuando esté arreglado:
flutter analyze  # Verificar no hay errores
```

## 📞 Cuando No Sabes Cómo Arreglarlo

1. **Buscar en el código**: Usa Ctrl+Shift+F para buscar palabras clave
2. **Revisar commits anteriores**: Ver qué cambió
3. **Stack Overflow**: Buscar el error exacto
4. **Flutter Docs**: https://flutter.dev/docs
5. **Dart Docs**: https://dart.dev/guides
6. **Isar Docs**: https://isar.dev/ (para problemas de BD)
7. **Riverpod Docs**: https://riverpod.dev/ (para state)

---

**Última actualización**: Enero 2026
