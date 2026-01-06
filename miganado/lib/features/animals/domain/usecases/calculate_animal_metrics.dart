import 'package:miganado/features/animals/data/models/animal_model.dart';
import 'package:miganado/features/costs/data/models/costo_model.dart';

/// Métricas calculadas de un animal
class AnimalMetrics {
  final String animalId;
  final int edadEnDias;
  final int edadEnAnios;
  final double costoTotal;
  final double gananciaPotencial;
  final double rocRatio; // Return on Cost
  final bool requiereVacunacion;
  final bool requiereDesparasitacion;
  final bool requiereVitaminas;
  final bool requiereRevision;
  final int diasSinVacunar;
  final int diasSinDesparasitar;
  final int diasSinVitaminas;

  AnimalMetrics({
    required this.animalId,
    required this.edadEnDias,
    required this.edadEnAnios,
    required this.costoTotal,
    required this.gananciaPotencial,
    required this.rocRatio,
    required this.requiereVacunacion,
    required this.requiereDesparasitacion,
    required this.requiereVitaminas,
    required this.requiereRevision,
    required this.diasSinVacunar,
    required this.diasSinDesparasitar,
    required this.diasSinVitaminas,
  });

  bool get tieneAlertas =>
      requiereVacunacion ||
      requiereDesparasitacion ||
      requiereVitaminas ||
      requiereRevision;
}

/// Use case para calcular métricas de animales
class CalculateAnimalMetrics {
  /// Calcula las métricas de un animal
  AnimalMetrics call({
    required AnimalModel animal,
    required List<CostoModel> costos,
  }) {
    // Calcular edad
    DateTime ahora = DateTime.now();
    DateTime? fechaNacimiento = animal.fechaNacimiento;

    int edadEnDias = 0;
    if (fechaNacimiento != null) {
      edadEnDias = ahora.difference(fechaNacimiento).inDays;
    }

    int edadEnAnios = edadEnDias ~/ 365;

    // Calcular costos
    double costoTotal = animal.costoTotal;
    for (var costo in costos) {
      costoTotal += costo.monto;
    }

    double precioVenta = animal.precioVenta ?? 0;
    double gananciaPotencial = precioVenta - costoTotal;

    // ROC: Return on Cost
    double rocRatio = costoTotal > 0 ? gananciaPotencial / costoTotal : 0;

    // Calcular necesidades de mantenimiento
    bool requiereVacunacion = !animal.vacunado;
    int diasSinVacunar = 0;

    if (animal.fechaUltimaVacuna != null && animal.vacunado) {
      diasSinVacunar = ahora.difference(animal.fechaUltimaVacuna!).inDays;
      // Revisar cada año aprox
      requiereVacunacion = diasSinVacunar > 365;
    }

    bool requiereDesparasitacion = !animal.desparasitado;
    int diasSinDesparasitar = 0;

    if (animal.fechaUltimoDesparasitante != null && animal.desparasitado) {
      diasSinDesparasitar =
          ahora.difference(animal.fechaUltimoDesparasitante!).inDays;
      // Cada 6 meses aprox
      requiereDesparasitacion = diasSinDesparasitar > 180;
    }

    bool requiereVitaminas = !animal.tieneVitaminas;
    int diasSinVitaminas = 0;

    if (animal.fechaVitaminas != null && animal.tieneVitaminas) {
      diasSinVitaminas = ahora.difference(animal.fechaVitaminas!).inDays;
      // Cada 3 meses aprox
      requiereVitaminas = diasSinVitaminas > 90;
    }

    // Revisar cada año
    bool requiereRevision = edadEnAnios > 0 && edadEnDias % 365 == 0;

    return AnimalMetrics(
      animalId: animal.id,
      edadEnDias: edadEnDias,
      edadEnAnios: edadEnAnios,
      costoTotal: costoTotal,
      gananciaPotencial: gananciaPotencial,
      rocRatio: rocRatio,
      requiereVacunacion: requiereVacunacion,
      requiereDesparasitacion: requiereDesparasitacion,
      requiereVitaminas: requiereVitaminas,
      requiereRevision: requiereRevision,
      diasSinVacunar: diasSinVacunar,
      diasSinDesparasitar: diasSinDesparasitar,
      diasSinVitaminas: diasSinVitaminas,
    );
  }
}
