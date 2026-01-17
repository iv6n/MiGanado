# ▶️ PRÓXIMOS PASOS

Guía para continuar con el desarrollo de MiGanado.

## 📊 Estado Actual

- ✅ Estructura limpia de proyecto
- ✅ Base de datos Isar funcionando
- ✅ Modelos actualizados (etapa se calcula automáticamente)
- ✅ Build runner sin errores
- ✅ Flutter analyze: 0 errores críticos

## 🎯 Tareas Inmediatas

### 1. Validar en dispositivo

```bash
cd miganado
flutter run
```

Verificar que:
- [ ] App inicia sin errores
- [ ] Dashboard muestra 7 animales de prueba
- [ ] Bessie (48 meses) muestra "vaca" (no "becerra")
- [ ] Navegación funciona (Animales, Mantenimiento, Reproducción, etc.)

### 2. Corregir Lints (Opcional pero Recomendado)

```bash
flutter analyze
```

Se mostrarán ~580 lints informativos. Los principales son:
- `prefer_const_constructors` - Usar constructores const
- `unused_element` - Elementos no utilizados
- `avoid_print` - Statements de print en código de producción

**Recomendación**: No es crítico, pero ayuda a mantener código limpio.

### 3. Ejecutar Tests

```bash
flutter test
```

Verificar que todos los tests pasen.

## 🔄 Workflow de Desarrollo

### Cuando agregues un nuevo modelo

1. Crear archivo en `lib/features/*/data/models/`
2. Decorar con `@Collection()`
3. Ejecutar:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Verificar con `flutter analyze`

### Cuando agregues un nuevo provider

1. Crear en `lib/providers/` o dentro de feature
2. Usar `@riverpod` annotation
3. El código se genera automáticamente con build_runner

### Cuando modifiques la UI

```bash
# Hot reload durante flutter run
r  # Recarga caliente

# Si hot reload no funciona
R  # Full restart
```

## 📝 Mejoras Pendientes

### Alto Prioridad

- [ ] Validación de formularios en registro de animales
- [ ] Mejora de UI en pantalla de detalles del animal
- [ ] Búsqueda y filtrado en listas
- [ ] Exportación de reportes a PDF

### Medio Prioridad

- [ ] Sincronización con servidor (si aplica)
- [ ] Backup de base de datos
- [ ] Notificaciones de eventos próximos
- [ ] Gráficas de evolución de pesos

### Bajo Prioridad

- [ ] Traducción de idiomas
- [ ] Tema oscuro
- [ ] Importación de datos desde Excel
- [ ] API REST para datos

## 🐛 Si Encuentras Bugs

1. **Recolectar información**:
   - Pasos exactos para reproducir
   - Mensaje de error completo
   - Screenshots

2. **Debugging**:
   - Ver [GUIA_CORRECCION_BUGS.md](./GUIA_CORRECCION_BUGS.md)
   - Usar DevTools: `flutter pub global activate devtools && devtools`

3. **Documentar**:
   - Crear issue con detalles
   - Incluir error log

## 📚 Documentación

Antes de hacer cambios, revisa:

- [README.md](./README.md) - Visión general
- [REFERENCIA_RAPIDA.md](./REFERENCIA_RAPIDA.md) - Comandos frecuentes
- [GUIA_CORRECCION_BUGS.md](./GUIA_CORRECCION_BUGS.md) - Debugging
- [INSTALACION_ANDROID.md](./INSTALACION_ANDROID.md) - Instalación
- [RECOMENDACIONES_FEATURES.md](./RECOMENDACIONES_FEATURES.md) - Nuevas features

## 🚀 Build para Android

Cuando estés listo para compilar:

```bash
flutter build apk --release
```

Archivo: `build/app/outputs/flutter-apk/app-release.apk`

Para instalar en dispositivo:

```bash
flutter install build/app/outputs/flutter-apk/app-release.apk
```

## ✅ Checklist Antes de Cada Commit

- [ ] `flutter analyze` sin errores críticos
- [ ] `flutter test` pasando
- [ ] `flutter pub run build_runner build --delete-conflicting-outputs` ejecutado
- [ ] Cambios documentados en código
- [ ] No hay print statements de debug
- [ ] Commit message es claro y descriptivo

## 📞 Ayuda Rápida

| Problema | Solución |
|----------|----------|
| Build error | `flutter clean && flutter pub get` |
| Port ocupado | `flutter run --port 5038` |
| Cambios no se ven | Presionar `R` en terminal (full restart) |
| Isar no generado | `flutter pub run build_runner build --delete-conflicting-outputs` |
| Tests fallan | `flutter test --verbose` |

---

**Última actualización**: Enero 2026  
**Versión**: 1.0.0
