# 🚀 ROADMAP FASE 2: Implementación de Lógica de Negocio

**Fase:** 2 de 4  
**Objetivo:** Implementar Use Cases con cálculos automáticos  
**Duración Estimada:** 2-3 horas  
**Dependencias:** ✅ FASE 1 completada  

---

## 📋 Tareas Principales (5)

### TAREA 1: CalcularCategoriaAutomatica Use Case
**Archivo:** `lib/features/animals/domain/usecases/calcular_categoria_automatica.dart`

```dart
class CalcularCategoriaAutomatica {
  /// Calcula automáticamente la categoría según sexo + edad
  /// 
  /// REGLAS:
  /// - Becerro/Becerra: < 12 meses
  /// - Novillo/Vaquilla: 12-36 meses  
  /// - Torete/Vaca: > 36 meses
  /// - Todos comparten icono "novillo"
  
  String call(Sexo sexo, int edadMeses) {
    if (edadMeses < 12) {
      return sexo == Sexo.macho ? 'Becerro' : 'Becerra';
    } else if (edadMeses < 36) {
      return sexo == Sexo.macho ? 'Novillo' : 'Vaquilla';
    } else {
      return sexo == Sexo.macho ? 'Toro' : 'Vaca';
    }
  }
}
```

**Tests Esperados:**
```dart
test('Becerro: macho < 12m', () {
  expect(useCase.call(Sexo.macho, 8), 'Becerro');
});

test('Vaquilla: hembra 12-36m', () {
  expect(useCase.call(Sexo.hembra, 24), 'Vaquilla');
});

test('Vaca: hembra > 36m', () {
  expect(useCase.call(Sexo.hembra, 60), 'Vaca');
});
```

---

### TAREA 2: CalcularEdad Use Case
**Archivo:** `lib/features/animals/domain/usecases/calcular_edad.dart`

```dart
class CalcularEdad {
  /// Calcula edad en meses según el método seleccionado
  /// 
  /// MÉTODOS:
  /// 1. exacta_por_fecha_nacimiento: Usa DateTime actual - fechaNacimiento
  /// 2. simulada_por_categoria: Usa DateTime actual - fechaInicioEtapa
  /// 3. estimada_por_peso: [Futuro] Usar tablas de peso por edad
  
  int call({
    required MetodoEdad metodo,
    DateTime? fechaNacimiento,
    required DateTime fechaInicioEtapa,
  }) {
    switch (metodo) {
      case MetodoEdad.exacta_por_fecha_nacimiento:
        if (fechaNacimiento == null) return 0;
        return calculateMonthsDifference(fechaNacimiento, DateTime.now());
        
      case MetodoEdad.simulada_por_categoria:
        return calculateMonthsDifference(fechaInicioEtapa, DateTime.now());
        
      case MetodoEdad.estimada_por_peso:
        throw UnimplementedError('Método estimada_por_peso en desarrollo');
    }
  }
  
  int calculateMonthsDifference(DateTime from, DateTime to) {
    int months = to.month - from.month;
    months += 12 * (to.year - from.year);
    if (to.day < from.day) months--;
    return months.clamp(0, 999);
  }
}
```

**Tests Esperados:**
```dart
test('Exacta: 10 meses', () {
  final fecha = DateTime.now().subtract(Duration(days: 300));
  expect(useCase.call(
    metodo: MetodoEdad.exacta_por_fecha_nacimiento,
    fechaNacimiento: fecha,
    fechaInicioEtapa: DateTime.now(),
  ), 10);
});

test('Simulada: sin fecha', () {
  final inicio = DateTime.now().subtract(Duration(days: 600));
  expect(useCase.call(
    metodo: MetodoEdad.simulada_por_categoria,
    fechaNacimiento: null,
    fechaInicioEtapa: inicio,
  ), 20);
});
```

---

### TAREA 3: CalcularCostoTotal Use Case
**Archivo:** `lib/features/costs/domain/usecases/calcular_costo_total.dart`

```dart
class CalcularCostoTotal {
  /// Suma todos los costos de un animal
  /// Total = costoCompraInicial + sum(CostoRegistro.monto)
  
  final CostoRepository repository;
  
  Future<double> call(String animalId, double? costoCompraInicial) async {
    final costos = await repository.getCostosByAnimalId(animalId);
    final suma = costos.fold<double>(0, (sum, costo) => sum + costo.monto);
    return (costoCompraInicial ?? 0) + suma;
  }
}
```

**Tests Esperados:**
```dart
test('Total: compra + costos', () async {
  final total = await useCase.call('animal-1', 500000);
  // Simula: compra(500k) + vacuna(150k) + alimento(200k) = 850k
  expect(total, 850000);
});
```

---

### TAREA 4: DeducirAlertasSanitarias Use Case
**Archivo:** `lib/features/animals/domain/usecases/deducir_alertas_sanitarias.dart`

```dart
class DeducirAlertasSanitarias {
  /// Analiza historial de mantenimientos y deduce alertas
  /// 
  /// ALERTAS:
  /// - Rojo (VENCIDO): proximaFecha < hoy
  /// - Amarillo (PRÓXIMO): proximaFecha en próximos 30 días
  /// - Verde (OK): No hay alertas
  
  List<String> call(List<MantenimientoRegistro> mantenimientos) {
    final alertas = <String>[];
    
    for (final mant in mantenimientos) {
      if (mant.estaVencido()) {
        alertas.add(
          '🔴 ${mant.tipo.nombreEspanol} VENCIDA (${_format(mant.proximaFechaRecomendada!)})'
        );
      } else if (mant.estaProximo()) {
        alertas.add(
          '🟡 ${mant.tipo.nombreEspanol} próxima (${_format(mant.proximaFechaRecomendada!)})'
        );
      }
    }
    
    return alertas;
  }
  
  String _format(DateTime date) => '${date.day}/${date.month}/${date.year}';
}
```

**Tests Esperados:**
```dart
test('Vacunación vencida', () {
  final mant = MantenimientoRegistro(
    ...
    proximaFechaRecomendada: DateTime.now().subtract(Duration(days: 10)),
  );
  expect(useCase.call([mant]), contains('VENCIDA'));
});

test('Sin alertas para futuros', () {
  final mant = MantenimientoRegistro(
    ...
    proximaFechaRecomendada: DateTime.now().add(Duration(days: 60)),
  );
  expect(useCase.call([mant]), isEmpty);
});
```

---

### TAREA 5: CrearMantenimientoConAutoCosto Use Case
**Archivo:** `lib/features/animals/domain/usecases/crear_mantenimiento_con_auto_costo.dart`

```dart
class CrearMantenimientoConAutoCosto {
  /// Crea un mantenimiento y automáticamente genera CostoRegistro si tiene costo
  /// 
  /// FLUJO:
  /// 1. Valida datos del mantenimiento
  /// 2. Calcula proximaFechaRecomendada según tipo
  /// 3. Guarda MantenimientoRegistro
  /// 4. SI tiene costo > 0:
  ///    - Crea CostoRegistro
  ///    - Actualiza mantenimiento.costoRegistroId
  
  final MantenimientoRepository mantRepository;
  final CostoRepository costoRepository;
  
  Future<CrearMantenimientoOutput> call(CrearMantenimientoInput input) async {
    // 1. Crear MantenimientoRegistro
    final proximaFecha = _calcularProximaFecha(
      input.tipo,
      input.fecha,
    );
    
    final mantenimiento = MantenimientoRegistro(
      id: uuid.v4(),
      animalId: input.animalId,
      tipo: input.tipo,
      descripcion: input.descripcion,
      fecha: input.fecha,
      proximaFechaRecomendada: proximaFecha,
      costo: input.costo,
    );
    
    await mantRepository.save(mantenimiento);
    
    // 2. SI hay costo, crear CostoRegistro
    String? costoRegistroId;
    if ((input.costo ?? 0) > 0) {
      final costoRegistro = CostoRegistro(
        id: uuid.v4(),
        animalId: input.animalId,
        tipo: _mapearTipoCosto(input.tipo),
        descripcion: 'Costo: ${input.tipo.nombreEspanol}',
        monto: input.costo!,
        fecha: input.fecha,
        mantenimientoRelacionadoId: mantenimiento.id,  // ⭐ LINK
      );
      
      await costoRepository.save(costoRegistro);
      costoRegistroId = costoRegistro.id;
      
      // 3. Actualizar mantenimiento con costoRegistroId
      await mantRepository.save(
        mantenimiento.copyWith(costoRegistroId: costoRegistroId)
      );
    }
    
    return CrearMantenimientoOutput(
      mantenimiento: mantenimiento,
      costoRegistroId: costoRegistroId,
    );
  }
  
  DateTime _calcularProximaFecha(
    TipoMantenimiento tipo,
    DateTime fechaActual,
  ) {
    final ciclos = tipo.cicloMesesRecomendado;
    return fechaActual.add(Duration(days: ciclos * 30));
  }
  
  TipoCosto _mapearTipoCosto(TipoMantenimiento tipo) {
    switch (tipo) {
      case TipoMantenimiento.vacunacion:
      case TipoMantenimiento.revision_clinica:
      case TipoMantenimiento.curacion:
        return TipoCosto.veterinario;
      case TipoMantenimiento.desparasitante:
      case TipoMantenimiento.vitaminas:
        return TipoCosto.medicamento;
      default:
        return TipoCosto.otro;
    }
  }
}

// DTOs
class CrearMantenimientoInput {
  final String animalId;
  final TipoMantenimiento tipo;
  final String? descripcion;
  final DateTime fecha;
  final double? costo;
}

class CrearMantenimientoOutput {
  final MantenimientoRegistro mantenimiento;
  final String? costoRegistroId;
}
```

**Tests Esperados:**
```dart
test('Crear mantenimiento sin costo', () async {
  final input = CrearMantenimientoInput(
    animalId: 'animal-1',
    tipo: TipoMantenimiento.revision_clinica,
    fecha: DateTime.now(),
  );
  
  final output = await useCase.call(input);
  
  expect(output.mantenimiento, isNotNull);
  expect(output.costoRegistroId, isNull);
});

test('Crear mantenimiento CON costo auto-genera CostoRegistro', () async {
  final input = CrearMantenimientoInput(
    animalId: 'animal-1',
    tipo: TipoMantenimiento.vacunacion,
    descripcion: 'Rabia + Aftosa',
    fecha: DateTime.now(),
    costo: 150000,
  );
  
  final output = await useCase.call(input);
  
  expect(output.mantenimiento, isNotNull);
  expect(output.costoRegistroId, isNotNull);
  
  // Verificar que CostoRegistro fue creado
  final costo = await costoRepository.getById(output.costoRegistroId!);
  expect(costo.monto, 150000);
  expect(costo.mantenimientoRelacionadoId, output.mantenimiento.id);
});
```

---

## 📁 Estructura de Carpetas a Crear

```
lib/features/
├── animals/domain/
│   ├── repositories/
│   │   └── mantenimiento_repository.dart
│   └── usecases/
│       ├── calcular_categoria_automatica.dart
│       ├── calcular_edad.dart
│       ├── deducir_alertas_sanitarias.dart
│       └── crear_mantenimiento_con_auto_costo.dart
│
└── costs/domain/
    ├── repositories/
    │   └── costo_repository.dart
    └── usecases/
        ├── calcular_costo_total.dart
        └── crear_costo_registro.dart
```

---

## 🔗 Interfaces/Abstractions Necesarias

### MantenimientoRepository
```dart
abstract class MantenimientoRepository {
  Future<MantenimientoRegistro> getById(String id);
  Future<List<MantenimientoRegistro>> getByAnimalId(String animalId);
  Future<void> save(MantenimientoRegistro mantenimiento);
  Future<void> delete(String id);
}
```

### CostoRepository
```dart
abstract class CostoRepository {
  Future<CostoRegistro> getById(String id);
  Future<List<CostoRegistro>> getByAnimalId(String animalId);
  Future<double> getTotalByAnimalId(String animalId);
  Future<List<CostoRegistro>> getByCosto(String costoId);
  Future<void> save(CostoRegistro costo);
  Future<void> delete(String id);
}
```

---

## ✅ Checklist de FASE 2

- [ ] Crear carpetas domain/usecases y domain/repositories
- [ ] Implementar CalcularCategoriaAutomatica
- [ ] Implementar CalcularEdad
- [ ] Implementar CalcularCostoTotal
- [ ] Implementar DeducirAlertasSanitarias
- [ ] Implementar CrearMantenimientoConAutoCosto
- [ ] Implementar MantenimientoRepository
- [ ] Implementar CostoRepository
- [ ] Tests unitarios para cada Use Case
- [ ] Validar compilación (`flutter analyze`)
- [ ] Documentación de cada Use Case

---

## 🎯 Success Criteria

- ✅ Todos los 5 use cases implementados
- ✅ Cada use case tiene tests unitarios
- ✅ `flutter analyze` sin errores
- ✅ Código documentado (docstrings)
- ✅ Reglas de negocio correctamente implementadas
- ✅ Listo para FASE 3 (Providers)

---

## 📞 Comandos Útiles

```bash
# Crear carpetas
mkdir -p lib/features/animals/domain/usecases
mkdir -p lib/features/animals/domain/repositories
mkdir -p lib/features/costs/domain/usecases

# Verificar compilación
flutter analyze

# Ejecutar tests
flutter test test/features/animals/domain/usecases/

# Ver cambios
git diff
```

---

## 🔄 Flujo de Implementación Sugerido

1. **Primero:** CalcularCategoriaAutomatica (simple, sin dependencias)
2. **Segundo:** CalcularEdad (simple, cálculos)
3. **Tercero:** CalcularCostoTotal (requiere repository)
4. **Cuarto:** DeducirAlertasSanitarias (analiza listas)
5. **Quinto:** CrearMantenimientoConAutoCosto (integra todo)

---

## 📌 Notas Importantes

- **Use Cases son pure functions** - Sin efectos secundarios
- **Repositories son abstractions** - Implementar después en data layer
- **Tests primero** - TDD helps catch edge cases
- **Documentación es crítica** - Cada regla de negocio debe estar documentada
- **Sin breaking changes** - FASE 2 no debe afectar FASE 1

---

**Proxima acción:** Cuando estés listo, ejecuta:
```
"Continuar FASE 2"
```

El agente iniciará la implementación de los 5 Use Cases con tests completos.
