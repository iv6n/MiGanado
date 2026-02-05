import 'package:miganado/data/database/isar_database.dart';
import 'package:miganado/features/calendar/data/models/evento_ganadero_entity.dart';
import 'package:miganado/features/calendar/domain/entities/event_types.dart';

/// Seed for calendar events with complete animal information
/// Creates events that show animal details in the calendar
class SeedEventosCalendarioAnimales {
  /// Calculates age in months from a birth date
  static int _calcularEdadMeses(DateTime fechaNacimiento) {
    final hoy = DateTime.now();
    var meses = (hoy.year - fechaNacimiento.year) * 12;
    meses += hoy.month - fechaNacimiento.month;
    if (hoy.day < fechaNacimiento.day) {
      meses--;
    }
    return meses.clamp(0, 9999);
  }

  /// Creates calendar events with complete animal information
  static Future<void> seedEventosConAnimales(MiGanadoDatabase database) async {
    print('🌱 Starting seed for calendar events with animal information...');

    // Get existing animals
    final animales = await database.getAllAnimales();
    if (animales.isEmpty) {
      print('❌ No animals in database. Run animal seed first.');
      return;
    }

    final eventos = <EventoGanaderoEntity>[];
    final hoy = DateTime.now();

    // ============ EVENTS WITH DETAILED ANIMAL INFORMATION ============

    // Buscar animales específicos para crear eventos relevantes
    final bessie = animales.firstWhere(
      (a) => a.customName == 'Bessie',
      orElse: () => animales.first,
    );

    final daisy = animales.length > 1 ? animales[1] : bessie;

    // EVENTO 1: Vacunación con detalles del animal
    eventos.add(EventoGanaderoEntity(
      uuid: 'evt-001-${DateTime.now().millisecondsSinceEpoch}',
      animalId: bessie.uuid,
      titulo: '💉 Vacunación Anual - ${bessie.customName}',
      descripcion: '''
INFORMACIÓN DEL ANIMAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 Nombre: ${bessie.customName}
🏷️  Arete: ${bessie.earTagNumber}
🐄 Especie: ${bessie.species.toString().split('.').last}
📊 Categoría: ${bessie.category.toString().split('.').last}
👩 Sexo: ${bessie.sex.toString().split('.').last}
🧬 Raza: ${bessie.breed}
📅 Fecha Nacimiento: ${_formatDate(bessie.birthDate)}
⏱️  Edad: ${_calcularEdadMeses(bessie.birthDate)} meses
💰 Precio: \$${bessie.purchasePrice ?? 0}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DETALLES DE LA VACUNACIÓN:
• Tipo: Fiebre Aftosa + Brucelosis + IBR
• Dosis: 5ml vía intramuscular
• Veterinario: Dr. Carlos López
• Próxima vacunación: En 12 meses

NOTAS: ${bessie.notes ?? 'Sin notas'}
''',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.vacunacion,
      prioridad: PrioridadEvento.alta,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 2, hours: 9)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
      responsable: 'Carlos López',
      costoAsociado: 85000.0,
      descripcionCosto: 'Vacunación + aplicación - 85000 COP',
      requiereSeguimiento: true,
      fechaSeguimiento: hoy.add(const Duration(days: 365)),
      descripcionSeguimiento: 'Próxima vacunación anual',
    ));

    // EVENTO 2: Pesaje con historial del animal
    eventos.add(EventoGanaderoEntity(
      uuid: 'evt-002-${DateTime.now().millisecondsSinceEpoch}',
      animalId: bessie.uuid,
      titulo: '⚖️ Pesaje Mensual - ${bessie.customName}',
      descripcion: '''
INFORMACIÓN DEL ANIMAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 Nombre: ${bessie.customName}
🏷️  Arete: ${bessie.earTagNumber}
🐄 Especie: ${bessie.species.toString().split('.').last}
🧬 Raza: ${bessie.breed}
⏱️  Edad: ${_calcularEdadMeses(bessie.birthDate)} meses
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

HISTORIAL DE PESAJES:
• Peso Anterior (30d): 658.5 kg
• Peso Actual (Esperado): 670.0 kg
• Ganancia: +11.5 kg en 30 días
• Ganancia Diaria: +0.38 kg/día
• Meta: +0.5 kg/día ✓ En seguimiento

EVALUACIÓN:
✓ Buen estado de nutrición
✓ Producción lechera normal
✓ Comportamiento: Normal
✓ Salud general: Excelente

PRÓXIMAS ACCIONES:
→ Ajustar concentrado si ganancia <0.3kg/día
→ Revisar calidad de forraje
→ Chequeo veterinario si hay cambios anormales
''',
      categoria: CategoriaEvento.productiva,
      tipoProductivo: EventoProductivo.pesaje,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 5, hours: 14)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
      responsable: 'Juan González',
    ));

    // EVENTO 3: Detección de celo con información reproductiva
    eventos.add(EventoGanaderoEntity(
      uuid: 'evt-003-${DateTime.now().millisecondsSinceEpoch}',
      animalId: daisy.uuid,
      titulo: '🔴 Detección de Celo - ${daisy.customName}',
      descripcion: '''
INFORMACIÓN DEL ANIMAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 Nombre: ${daisy.customName}
🏷️  Arete: ${daisy.earTagNumber}
🐄 Especie: ${daisy.species.toString().split('.').last}
🧬 Raza: ${daisy.breed}
⏱️  Edad: ${_calcularEdadMeses(daisy.birthDate)} meses
👩 Sexo: ${daisy.sex.toString().split('.').last}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ESTADO REPRODUCTIVO:
• Ciclo Actual: En celo
• Duración Esperada: 12-24 horas
• Signos de Celo:
  ✓ Inquietud y vocalización
  ✓ Moquillo genital
  ✓ Acepta monta
  ✓ Vulva congestionada

PLAN DE INSEMINACIÓN:
→ IA hoy a las 18:00 hrs
→ Semental: Reproductor de IA #42
→ Toro de Cubrición: Alternativa si IA no fecunda
→ Próximo celo esperado: 21 días

ADVERTENCIAS:
⚠️  Confirmar celo antes de IA
⚠️  Revisar historial de fecundación anterior
⚠️  Registrar resultado de inseminación
''',
      categoria: CategoriaEvento.reproductiva,
      tipoReproductivo: EventoReproductivo.deteccionCelo,
      prioridad: PrioridadEvento.critica,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 8, hours: 6)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
      responsable: 'Dr. Veterinario',
      requiereSeguimiento: true,
      fechaSeguimiento: hoy.add(const Duration(days: 21)),
      descripcionSeguimiento: 'Próximo celo esperado en 21 días',
    ));

    // EVENTO 4: Revisión Veterinaria con checklist del animal
    eventos.add(EventoGanaderoEntity(
      uuid: 'evt-004-${DateTime.now().millisecondsSinceEpoch}',
      animalId: bessie.uuid,
      titulo: '👨‍⚕️ Revisión Veterinaria Completa - ${bessie.customName}',
      descripcion: '''
INFORMACIÓN DEL ANIMAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 Nombre: ${bessie.customName}
🏷️  Arete: ${bessie.earTagNumber}
🐄 Especie: ${bessie.species.toString().split('.').last}
⏱️  Edad: ${_calcularEdadMeses(bessie.birthDate)} meses
🧬 Raza: ${bessie.breed}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CHECKLIST DE REVISIÓN VETERINARIA:
┌─────────────────────────────────────────────┐
│ EXAMEN GENERAL                              │
├─────────────────────────────────────────────┤
☐ Temperatura corporal (38.5°C)
☐ Frecuencia Cardiaca (60-80 lpm)
☐ Frecuencia Respiratoria (15-30 rpm)
☐ Estado de Hidratación
☐ Mucosas y Conjuntivas

│ SISTEMA LOCOMOTOR                           │
├─────────────────────────────────────────────┤
☐ Cascos (descorne, lesiones)
☐ Articulaciones (hinchazón, rigidez)
☐ Movimiento (cojera, anormalidades)
☐ Piel y Pelaje

│ SISTEMA DIGESTIVO                           │
├─────────────────────────────────────────────┤
☐ Apetito
☐ Ruidos ruminales
☐ Consistencia heces
☐ Abdominal (dolorimiento, distensión)

│ SISTEMA REPRODUCTIVO                        │
├─────────────────────────────────────────────┤
☐ Vulva (descarga, anomalías)
☐ Úter (consistencia, simetría)
☐ Ovarios (cuerpo lúteo, quistes)
☐ Ubre (mastitis, trauma)
└─────────────────────────────────────────────┘

VACUNAS VIGENTES: Sí ✓
DESPARASITADO: Sí ✓
SUPLEMENTOS: Vitaminas A, D, E

RECOMENDACIONES:
→ Continuar programa de nutrición
→ Próxima revisión: 60 días
→ Monitoreo especial si hay cambios
''',
      categoria: CategoriaEvento.sanitaria,
      tipoSanitario: EventoSanitario.revisionVeterinaria,
      prioridad: PrioridadEvento.alta,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 10, hours: 8)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
      responsable: 'Dr. Carlos López',
      costoAsociado: 150000.0,
      descripcionCosto: 'Revisión veterinaria completa - 150000 COP',
      requiereSeguimiento: true,
      fechaSeguimiento: hoy.add(const Duration(days: 60)),
      descripcionSeguimiento: 'Próxima revisión veterinaria',
    ));

    // EVENTO 5: Control ambiental con información del lote
    if (animales.length > 2) {
      final lote = animales.take(3).toList();
      eventos.add(EventoGanaderoEntity(
        uuid: 'evt-005-${DateTime.now().millisecondsSinceEpoch}',
        titulo: '🏠 Control Ambiental - Sala de Ordeño',
        descripcion: '''
INFORMACIÓN DEL LOTE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🐄 Animales en Sala: ${lote.length}
${lote.map((a) => '  • ${a.customName} (${a.earTagNumber})').join('\n')}

PARÁMETROS AMBIENTALES A REVISAR:
┌──────────────────────────────────────────┐
│ TEMPERATURA Y HUMEDAD                    │
├──────────────────────────────────────────┤
Temperatura: 18-22°C (Óptimo: 15-18°C)
Humedad: 60-70% (Crítica: >80%)
Ventilación: Adecuada / Necesita mejora

│ HIGIENE                                  │
├──────────────────────────────────────────┤
☐ Pisos: Limpios, sin humedad
☐ Paredes: Sin moho, sucias
☐ Equipos ordeño: Desinfectados
☐ Bebederos: Limpios y funcionales

│ BIOSEGURIDAD                             │
├──────────────────────────────────────────┤
☐ Entrada restringida
☐ Pediluvios activos
☐ Ropa de personal: Limpia
☐ Equipos: Sanitizados
└──────────────────────────────────────────┘

ACCIONES NECESARIAS:
→ Desinfección profunda hoy
→ Revisión de drenaje
→ Mantenimiento de ventiladores
→ Cambio de agua bebederos

FRECUENCIA DE LIMPIEZA:
• Diaria: Pisos y equipos de ordeño
• Semanal: Paredes y banquetas
• Mensual: Desinfección profunda
• Trimestral: Mantenimiento general
''',
        categoria: CategoriaEvento.ambiental,
        tipoAmbiental: EventoAmbiental.desinfeccion,
        prioridad: PrioridadEvento.media,
        estado: EstadoEvento.pendiente,
        fechaProgramada: hoy.add(const Duration(days: 3, hours: 16)),
        fechaCreacion: DateTime.now(),
        fechaActualizacion: DateTime.now(),
        responsable: 'Encargado de Limpieza',
        costoAsociado: 120000.0,
        descripcionCosto: 'Desinfección profunda - 120000 COP',
      ));
    }

    // EVENTO 6: Cambio de alimentación con detalles nutricionales
    eventos.add(EventoGanaderoEntity(
      uuid: 'evt-006-${DateTime.now().millisecondsSinceEpoch}',
      animalId: bessie.uuid,
      titulo: '🌾 Ajuste de Alimentación - ${bessie.customName}',
      descripcion: '''
INFORMACIÓN DEL ANIMAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 Nombre: ${bessie.customName}
🏷️  Arete: ${bessie.earTagNumber}
⏱️  Edad: ${_calcularEdadMeses(bessie.birthDate)} meses
💪 Peso: 670 kg (Esperado: 680-700 kg)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PROGRAMA ACTUAL DE ALIMENTACIÓN:
┌──────────────────────────────────────────┐
│ DIETA ACTUAL                             │
├──────────────────────────────────────────┤
Forraje (Pastos): 60% del total
  • Pasto alemán: 8 kg/día
  • Ensilaje: 12 kg/día
  
Concentrado (Granos): 40% del total
  • Concentrado premium: 8 kg/día
  • Melaza: 1 kg/día
  
Suplementos:
  • Sales mineralizadas: 100 g/día
  • Vitamina A, D, E: Diariamente
└──────────────────────────────────────────┘

NUEVO PROGRAMA (Invierno):
┌──────────────────────────────────────────┐
│ CAMBIOS A REALIZAR                       │
├──────────────────────────────────────────┤
Ensilaje: 12 kg/día → 15 kg/día (+25%)
Concentrado: 8 kg/día → 7 kg/día (-12%)
Melaza: 1 kg/día → 1.5 kg/día (energía)

ENERGÍA ESPERADA:
• Actual: 11.5 Mcal/día
• Nueva: 12.0 Mcal/día
• Meta: 12.5 Mcal/día

OBJETIVO:
→ Mantener producción lechera (25 L/día)
→ Mejorar estado corporal
→ Reducir costo de concentrado
→ Adaptar a disponibilidad de forraje
└──────────────────────────────────────────┘

IMPLEMENTACIÓN:
Día 1-2: Transición gradual (20% nuevo)
Día 3-4: Transición (50% nuevo)
Día 5+: Completamente nuevo programa

MONITOREO:
⚠️  Revisar producción lechera diaria
⚠️  Evaluar consistencia heces
⚠️  Peso: Próximo pesaje en 15 días
⚠️  Comportamiento: Consumo y rumiación
''',
      categoria: CategoriaEvento.productiva,
      tipoProductivo: EventoProductivo.cambioAlimentacion,
      prioridad: PrioridadEvento.media,
      estado: EstadoEvento.pendiente,
      fechaProgramada: hoy.add(const Duration(days: 7, hours: 7)),
      fechaCreacion: DateTime.now(),
      fechaActualizacion: DateTime.now(),
      responsable: 'Nutricionista',
      requiereSeguimiento: true,
      fechaSeguimiento: hoy.add(const Duration(days: 15)),
      descripcionSeguimiento: 'Evaluar respuesta al cambio de alimentación',
    ));

    // Guardar todos los eventos
    for (var evento in eventos) {
      await database.saveEventoGanadero(evento);
    }

    print(
        '✅ ${eventos.length} EVENTOS con información completa del animal creados');
    print('\n📋 EVENTOS CREADOS:');
    for (int i = 0; i < eventos.length; i++) {
      print('  ${i + 1}. ${eventos[i].titulo}');
    }
    print(
        '\n✨ Los eventos incluyen información detallada para visualización en calendario');
  }

  /// Formatea una fecha al formato dd/MM/yyyy
  static String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}
