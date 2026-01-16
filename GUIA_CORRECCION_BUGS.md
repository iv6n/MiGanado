# 🐛 GUÍA DE CORRECCIÓN RÁPIDA DE BUGS

**Si encuentras un problema en tu dispositivo Android, sigue esta guía.**

---

## 🚨 ANTES DE TODO

### Recopila información
Cuando encuentres un bug, documenta:

1. **¿Qué pantalla?** (Home, Lista, Detalles, etc)
2. **¿Qué hiciste?** (taponeaste X, scrolleaste, etc)
3. **¿Qué esperabas?** (debería mostrar...)
4. **¿Qué pasó en cambio?** (mostró error, se freezó, etc)

**Ejemplo:**
```
Pantalla: Home
Acción: Toqié botón "+" para agregar animal
Esperado: Abre pantalla de agregar
Real: La app se cierra
```

---

## 🔧 PASOS PARA CORREGIR

### 1️⃣ DIAGNOSTICAR (si es posible)

**Opción A: Leer logs en tiempo real**
```bash
cd "c:\Users\Master\Desktop\Code\MiGanado\miganado"
flutter logs
```

Observa qué error aparece cuando se presenta el bug.

**Opción B: Revisar código**
```
Abre VS Code
Navega a pantalla problemática
Busca el código relacionado
Lee el error en los logs
```

---

### 2️⃣ UBICAR EL BUG EN CÓDIGO

Dependiendo de dónde esté el problema:

**Si es en una pantalla:**
```
lib/ui/screens/[nombre]_screen.dart
```

**Si es en un widget:**
```
lib/ui/widgets/[nombre]_widget.dart
```

**Si es en un provider:**
```
lib/providers/[nombre]_provider.dart
```

**Si es en datos:**
```
lib/data/repositories/[nombre]_repository.dart
```

---

### 3️⃣ EJEMPLOS DE BUGS COMUNES Y SOLUCIONES

#### 🔴 Bug: App se cierra al abrir una pantalla

**Posible causa:** Null pointer exception o widget inválido

**Cómo arreglarlo:**
1. Abre la pantalla en VS Code
2. Busca `null` o valores sin inicializar
3. Añade `??` o `.when()` para manejar null
4. Recompila

**Ejemplo:**
```dart
// ❌ MALO (causa crash si es null)
Text(animal.nombre)

// ✅ BIEN (maneja null)
Text(animal?.nombre ?? 'Sin nombre')

// ✅ MEJOR (con Riverpod)
animal.when(
  data: (a) => Text(a.nombre),
  loading: () => LoadingState(),
  error: (e, st) => ErrorState(),
)
```

---

#### 🔴 Bug: Datos no se muestran

**Posible causa:** Provider no está actualizando o data vacía

**Cómo arreglarlo:**
1. Verifica que el provider esté siendo usado correctamente
2. Asegúrate de que los datos existen en la base de datos
3. Añade logs para debuggear
4. Recompila

**Ejemplo:**
```dart
// ❌ MALO (puede no mostrar datos)
final animals = ref.watch(animalsProvider);
return ListView(children: animals);

// ✅ BIEN (maneja todos los estados)
final animals = ref.watch(animalsProvider);
return animals.when(
  data: (list) => list.isEmpty 
    ? EmptyState() 
    : ListView(children: list),
  loading: () => LoadingState(),
  error: (e, st) => ErrorState(),
);
```

---

#### 🔴 Bug: UI se ve roto o desalineado

**Posible causa:** Padding/spacing incorrecto o overflow

**Cómo arreglarlo:**
1. Abre `widget_test.dart` para ver espaciado correcto
2. Revisa el padding de containers
3. Ajusta SizedBox heights
4. Recompila

**Ejemplo:**
```dart
// ❌ MALO (puede causar overflow)
Column(
  children: [
    Text('Titulo'),
    Image.network(url), // puede ser muy grande
  ],
)

// ✅ BIEN (limita el tamaño)
Column(
  children: [
    Text('Titulo'),
    ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: Image.network(url),
    ),
  ],
)
```

---

#### 🔴 Bug: El formulario de agregar animal no guarda

**Posible causa:** Validación fallando o repository no guardando

**Cómo arreglarlo:**
1. Verifica validaciones en `add_animal_screen.dart`
2. Revisa que el repository esté llamándose
3. Comprueba que Hive tenga permisos
4. Recompila

**Ejemplo:**
```dart
// ❌ MALO (no valida antes de guardar)
onPressed: () {
  repository.createAnimal(animal);
}

// ✅ BIEN (valida primero)
onPressed: () {
  if (formKey.currentState!.validate()) {
    repository.createAnimal(animal);
    Navigator.pop(context);
  }
}
```

---

### 4️⃣ RECOMPILAR DESPUÉS DE CAMBIOS

```bash
# Opción A: Cambios pequeños (hot reload)
# En VS Code: Ctrl+S (VS Code detecta cambios automáticamente)

# Opción B: Cambios grandes (hot restart)
# En terminal Flutter: R (presiona R en terminal donde corre flutter run)

# Opción C: Recompilación completa
flutter clean
flutter build apk --release
flutter install build/app/outputs/flutter-apk/app-release.apk
```

---

### 5️⃣ VERIFICAR QUE FUNCIONE

Después de corregir:
1. Borra y reinstala la app
2. Prueba el escenario problemático de nuevo
3. ¿Funciona? ✅ → Sigue probando otras cosas
4. ¿Sigue fallando? ❌ → Revisa los logs de nuevo

---

## 📝 CHECKLIST DE CORRECCIÓN

- [ ] Documenté el bug claramente
- [ ] Revisé los logs de error
- [ ] Identifiqué el archivo problemático
- [ ] Hice los cambios necesarios
- [ ] Recompilé correctamente
- [ ] Reinstalé la app
- [ ] Probé que el fix funciona
- [ ] Probé que no rompí nada más

---

## 🆘 CASOS ESPECIALES

### Problema: "The method '.where' was called on null"

**Significa:** Estás accediendo a un valor que es null

**Solución:**
```dart
// ❌ MALO
animals.where((a) => a.tipo == 'vaca')

// ✅ BIEN
(animals ?? []).where((a) => a.tipo == 'vaca')
```

---

### Problema: "Unhandled Exception: Instance of 'StateError'"

**Significa:** El estado del widget no es válido

**Solución:**
Generalmente necesitas usar `.when()` para manejar estados:
```dart
asyncValue.when(
  data: (value) => /* muestra datos */,
  loading: () => /* muestra loading */,
  error: (error, stack) => /* muestra error */,
)
```

---

### Problema: "Build failed with an exception"

**Significa:** Error de compilación

**Solución:**
```bash
flutter clean
flutter pub get
flutter pub upgrade
flutter build apk --release
```

---

### Problema: App se cuelga/freezea

**Significa:** Operación pesada en main thread

**Solución:**
```dart
// ❌ MALO (bloquea UI)
var resultado = operacionPesada();

// ✅ BIEN (en background)
var resultado = await Future.microtask(() => operacionPesada());

// ✅ MÁS SEGURO (compute)
var resultado = await compute(operacionPesada, argumento);
```

---

## 🔍 DEBUGGING AVANZADO

### Ver logs detallados
```bash
flutter logs --verbose
```

### Profiler de performance
```bash
flutter run --profile
# Luego abre DevTools
```

### Revisar base de datos
La base de datos Hive se guarda en:
```
Android: /data/data/com.example.miganado/
```

---

## 📊 TESTING DESPUÉS DE FIX

Después de cada corrección, prueba:

1. **Funcionalidad específica arreglada** ✓
2. **Navegar a/desde esa pantalla** ✓
3. **Volver a la pantalla problemática** ✓
4. **Cerrar y abrir app** ✓
5. **Rotación de pantalla** ✓
6. **Con muchos datos** ✓

---

## 🎯 WORKFLOW TÍPICO DE BUG FIX

```
1. Encuentra bug en dispositivo
   ↓
2. Documenta: pantalla, acción, resultado
   ↓
3. Lee logs (flutter logs)
   ↓
4. Identifica archivo problemático
   ↓
5. Hace cambios en código
   ↓
6. Recompila (flutter build apk --release)
   ↓
7. Reinstala (flutter install)
   ↓
8. Prueba bug específico
   ↓
9. Prueba todo lo demás (smoke test)
   ↓
10. ¿OK? → Sigue probando
    ¿Sigue fallando? → Vuelve a paso 3
```

---

## 🚀 CUANDO TODO ESTÉ OK

Una vez que hayas:
- ✅ Probado todas las pantallas
- ✅ Corregido todos los bugs
- ✅ Verificado que no hay crashes
- ✅ Confirmado que la data se guarda
- ✅ Chequeado performance

**Estás listo para escalar a PlayStore**

Sigue: `FASE_5_ESCALADO_PLAYSTORE.md`

---

## 📞 PREGUNTAS FRECUENTES

**P: ¿Pierdo datos si corrijo un bug?**  
R: No, los datos se guardan en la BD local. Reinstalar app no los borra.

**P: ¿Tengo que hacer `flutter clean` cada vez?**  
R: No siempre. Intenta Ctrl+S primero (hot reload), luego hot restart (R), luego clean si nada funciona.

**P: ¿Y si el bug está en la base de datos?**  
R: Abre `lib/data/database/` y revisa los métodos Hive. Usa `flutter logs` para ver qué falla.

**P: ¿Debo hacer build APK nueva completa cada vez?**  
R: No, solo durante desarrollo en emulador. Para dispositivo use `flutter install` con mismo APK.

---

## 🛠️ COMANDOS ÚTILES

| Comando | Qué hace |
|---------|----------|
| `flutter logs` | Ver logs en tiempo real |
| `flutter logs --verbose` | Logs detallados |
| `flutter devices` | Listar dispositivos conectados |
| `flutter analyze` | Revisar código por errores |
| `flutter test` | Ejecutar tests |
| `flutter clean` | Limpiar build |
| `flutter pub get` | Obtener dependencias |

---

## ✅ CONCLUSIÓN

Si encuentras un bug:
1. **Documenta** claramente
2. **Busca** en logs
3. **Localiza** el código
4. **Arregla** el problema
5. **Prueba** el fix
6. **Verifica** que no rompiste nada
7. **Continúa** probando

**¡Cuando todo esté listo, a escalar!**

---

**Documento**: Guía de Corrección de Bugs  
**Fecha**: 14 Enero 2026  
**Estado**: Listo para usar  
**Próximo Paso**: Detectar y corregir bugs en dispositivo
