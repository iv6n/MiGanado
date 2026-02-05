import 'package:miganado/features/mantenimiento/data/models/vacuna_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/tratamiento_entity.dart';
import 'package:miganado/features/mantenimiento/data/models/nutricion_entity.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:intl/intl.dart';

class ReportData {
  final Animal animal;
  final List<VacunaEntity> vacunas;
  final List<TratamientoEntity> tratamientos;
  final List<NutricionEntity> nutricion;
  // final ReproductivEntity? reproductivo; // TODO: Add when reproductive feature is implemented

  ReportData({
    required this.animal,
    required this.vacunas,
    required this.tratamientos,
    required this.nutricion,
    // this.reproductivo,
  });
}

class ReportService {
  /// Generar reporte en formato CSV
  static String generateCSV(ReportData data) {
    final buffer = StringBuffer();
    final dateFormat = DateFormat('dd/MM/yyyy');

    // Encabezado general
    buffer.writeln(
        'REPORTE DE SALUD - ${data.animal.nombrePersonalizado ?? data.animal.numeroArete}');
    buffer.writeln('Arete,${data.animal.numeroArete}');
    buffer.writeln('Especie,${data.animal.especie.descripcion}');
    buffer.writeln('Categoría,${data.animal.categoria.descripcion}');
    buffer.writeln('Etapa,${data.animal.etapa.descripcion}');
    buffer.writeln('Raza,${data.animal.raza}');
    buffer.writeln('Sexo,${data.animal.sexo.name}');
    buffer.writeln(
        'Fecha Nacimiento,${dateFormat.format(data.animal.fechaNacimiento)}');
    buffer.writeln('');
    buffer.writeln('');

    // Vacunas
    buffer.writeln('VACUNAS APLICADAS');
    buffer.writeln(
        'Tipo,Enfermedad,Producto,Fecha,Proxima Dosis,Intervalo (dias),Costo');
    for (final vacuna in data.vacunas) {
      buffer.writeln(
        '${vacuna.tipo},${vacuna.enfermedad},${vacuna.producto ?? 'N/A'},${dateFormat.format(vacuna.fecha)},${vacuna.proximaFecha != null ? dateFormat.format(vacuna.proximaFecha!) : 'N/A'},${vacuna.diasIntervalo},${vacuna.costo ?? 0}',
      );
    }
    buffer.writeln('');
    buffer.writeln('');

    // Tratamientos
    buffer.writeln('TRATAMIENTOS');
    buffer.writeln(
        'Motivo,Medicamento,Fecha Inicio,Fecha Fin,Duracion (dias),Resultado,Costo Total');
    for (final tratamiento in data.tratamientos) {
      buffer.writeln(
        '${tratamiento.motivo},${tratamiento.medicamento},${dateFormat.format(tratamiento.fechaInicio)},${tratamiento.fechaFin != null ? dateFormat.format(tratamiento.fechaFin!) : 'En curso'},${tratamiento.duracionDias},${tratamiento.resultado ?? 'Pendiente'},${tratamiento.costoTotal ?? 0}',
      );
    }
    buffer.writeln('');
    buffer.writeln('');

    // Nutrición
    buffer.writeln('HISTORIAL NUTRICIONAL');
    buffer.writeln('Tipo,Alimento Principal,Inicio,Fin,Costo Diario,Activo');
    for (final nutr in data.nutricion) {
      buffer.writeln(
        '${nutr.tipoAlimentacion},${nutr.alimentoPrincipal},${dateFormat.format(nutr.fechaInicio)},${nutr.fechaFin != null ? dateFormat.format(nutr.fechaFin!) : 'En curso'},${nutr.costoPorDia ?? 0},${nutr.activo ? 'Si' : 'No'}',
      );
    }
    buffer.writeln('');
    buffer.writeln('');

    // Reproductivo (si aplica) - TODO: Implement when reproductive tracking is added
    // if (data.reproductivo != null) {
    //   final repro = data.reproductivo!;
    //   buffer.writeln('DATOS REPRODUCTIVOS');
    //   buffer.writeln('Estado,${repro.estado}');
    //   buffer.writeln('Total Partos,${repro.totalPartos}');
    //   buffer.writeln('Total Crias,${repro.totalCrias}');
    //   if (repro.primerParto != null) {
    //     buffer.writeln('Primer Parto,${dateFormat.format(repro.primerParto!)}');
    //   }
    //   if (repro.ultimoParto != null) {
    //     buffer.writeln('Ultimo Parto,${dateFormat.format(repro.ultimoParto!)}');
    //   }
    // }

    return buffer.toString();
  }

  /// Generar reporte en formato texto plano (para PDF)
  static String generatePlainText(ReportData data) {
    final buffer = StringBuffer();
    final dateFormat = DateFormat('dd/MM/yyyy');

    // Encabezado
    buffer.writeln('=' * 80);
    buffer.writeln('REPORTE DE HISTORIAL DE SALUD ANIMAL');
    buffer.writeln('=' * 80);
    buffer.writeln('');

    // Datos del animal
    buffer.writeln('INFORMACIÓN DEL ANIMAL');
    buffer.writeln('-' * 80);
    buffer
        .writeln('Nombre: ${data.animal.nombrePersonalizado ?? 'Sin nombre'}');
    buffer.writeln('Arete: ${data.animal.numeroArete}');
    buffer.writeln('Especie: ${data.animal.especie.descripcion}');
    buffer.writeln('Categoría: ${data.animal.categoria.descripcion}');
    buffer.writeln('Etapa: ${data.animal.etapa.descripcion}');
    buffer.writeln('Raza: ${data.animal.raza}');
    buffer.writeln('Sexo: ${data.animal.sexo.name}');
    buffer.writeln(
        'Fecha de Nacimiento: ${dateFormat.format(data.animal.fechaNacimiento)}');
    buffer.writeln('');

    // Historial de vacunaciones
    buffer.writeln('HISTORIAL DE VACUNACIONES');
    buffer.writeln('-' * 80);
    if (data.vacunas.isEmpty) {
      buffer.writeln('Sin registros de vacunación');
    } else {
      for (int i = 0; i < data.vacunas.length; i++) {
        final vacuna = data.vacunas[i];
        buffer.writeln('${i + 1}. ${vacuna.tipo} contra ${vacuna.enfermedad}');
        buffer.writeln('   Producto: ${vacuna.producto ?? 'N/A'}');
        buffer.writeln('   Fecha: ${dateFormat.format(vacuna.fecha)}');
        if (vacuna.proximaFecha != null) {
          buffer.writeln(
              '   Proxima dosis: ${dateFormat.format(vacuna.proximaFecha!)}');
        }
        if (vacuna.costo != null && vacuna.costo! > 0) {
          buffer.writeln('   Costo: \$${vacuna.costo}');
        }
        buffer.writeln('');
      }
    }

    // Tratamientos
    buffer.writeln('HISTORIAL DE TRATAMIENTOS');
    buffer.writeln('-' * 80);
    if (data.tratamientos.isEmpty) {
      buffer.writeln('Sin registros de tratamiento');
    } else {
      for (int i = 0; i < data.tratamientos.length; i++) {
        final trat = data.tratamientos[i];
        buffer.writeln('${i + 1}. ${trat.motivo}');
        buffer.writeln('   Medicamento: ${trat.medicamento}');
        buffer.writeln(
            '   Período: ${dateFormat.format(trat.fechaInicio)} - ${trat.fechaFin != null ? dateFormat.format(trat.fechaFin!) : 'En curso'}');
        if (trat.diagnosticoPrevio != null) {
          buffer.writeln('   Diagnóstico: ${trat.diagnosticoPrevio}');
        }
        if (trat.resultado != null) {
          buffer.writeln('   Resultado: ${trat.resultado}');
        }
        if (trat.costoTotal != null && trat.costoTotal! > 0) {
          buffer.writeln('   Costo Total: \$${trat.costoTotal}');
        }
        buffer.writeln('');
      }
    }

    // Nutrición
    buffer.writeln('HISTORIAL NUTRICIONAL');
    buffer.writeln('-' * 80);
    if (data.nutricion.isEmpty) {
      buffer.writeln('Sin registros nutricionales');
    } else {
      for (int i = 0; i < data.nutricion.length; i++) {
        final nutr = data.nutricion[i];
        buffer.writeln('${i + 1}. ${nutr.tipoAlimentacion}');
        buffer.writeln('   Alimento Principal: ${nutr.alimentoPrincipal}');
        if (nutr.suplementos.isNotEmpty) {
          buffer.writeln('   Suplementos: ${nutr.suplementos.join(', ')}');
        }
        buffer.writeln(
            '   Período: ${dateFormat.format(nutr.fechaInicio)} - ${nutr.fechaFin != null ? dateFormat.format(nutr.fechaFin!) : 'En curso'}');
        buffer.writeln('   Costo por día: \$${nutr.costoPorDia ?? 0}');
        buffer.writeln('');
      }
    }

    // Datos reproductivos - TODO: Implement when reproductive tracking is added
    // if (data.reproductivo != null) {
    //   final repro = data.reproductivo!;
    //   buffer.writeln('INFORMACIÓN REPRODUCTIVA');
    //   buffer.writeln('-' * 80);
    //   buffer.writeln('Estado: ${repro.estado}');
    //   buffer.writeln('Total de Partos: ${repro.totalPartos}');
    //   buffer.writeln('Total de Crías: ${repro.totalCrias}');
    //   if (repro.primerParto != null) {
    //     buffer
    //         .writeln('Primer Parto: ${dateFormat.format(repro.primerParto!)}');
    //   }
    //   if (repro.ultimoParto != null) {
    //     buffer
    //         .writeln('Último Parto: ${dateFormat.format(repro.ultimoParto!)}');
    //   }
    //   if (repro.estado == 'Gestante' && repro.fechaPartoEstimada != null) {
    //     final diasFalta =
    //         repro.fechaPartoEstimada!.difference(DateTime.now()).inDays;
    //     buffer.writeln(
    //         'Parto Estimado: ${dateFormat.format(repro.fechaPartoEstimada!)} (Faltan $diasFalta días)');
    //   }
    // }
    buffer.writeln('');

    // Pie de página
    buffer.writeln('=' * 80);
    buffer.writeln('Reporte generado: ${dateFormat.format(DateTime.now())}');
    buffer.writeln('=' * 80);

    return buffer.toString();
  }

  /// Generar resumen de costos
  static String generateCostSummary(ReportData data) {
    double totalVacunas = 0;
    double totalTratamientos = 0;
    double totalNutricion = 0;

    for (final vacuna in data.vacunas) {
      totalVacunas += vacuna.costo ?? 0;
    }

    for (final trat in data.tratamientos) {
      totalTratamientos += trat.costoTotal ?? 0;
    }

    for (final nutr in data.nutricion) {
      totalNutricion += nutr.costoTotal ?? 0;
    }

    final total = totalVacunas + totalTratamientos + totalNutricion;

    return '''
RESUMEN DE COSTOS - ${data.animal.nombrePersonalizado ?? data.animal.numeroArete}

Vacunas: \$$totalVacunas
Tratamientos: \$$totalTratamientos
Nutrición: \$$totalNutricion
---------------------
TOTAL: \$$total
''';
  }
}
