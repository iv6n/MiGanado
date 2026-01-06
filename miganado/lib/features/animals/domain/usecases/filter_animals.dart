import 'package:miganado/features/animals/data/models/animal_model.dart';

/// Use case para filtrar animales
class FilterAnimals {
  /// Filtra una lista de animales según criterios
  List<AnimalModel> call({
    required List<AnimalModel> animales,
    String? numeroArete,
    String? nombrePersonalizado,
    TipoGanado? tipo,
    Sexo? sexo,
    bool? soloVacunados,
    bool? soloDesparasitados,
    bool? conAlertas,
  }) {
    List<AnimalModel> resultado = List.from(animales);

    // Filtrar por número de arete
    if (numeroArete != null && numeroArete.isNotEmpty) {
      resultado = resultado
          .where((a) =>
              a.numeroArete.toLowerCase().contains(numeroArete.toLowerCase()))
          .toList();
    }

    // Filtrar por nombre personalizado
    if (nombrePersonalizado != null && nombrePersonalizado.isNotEmpty) {
      resultado = resultado
          .where((a) =>
              a.nombrePersonalizado != null &&
              a.nombrePersonalizado!
                  .toLowerCase()
                  .contains(nombrePersonalizado.toLowerCase()))
          .toList();
    }

    // Filtrar por tipo
    if (tipo != null) {
      resultado = resultado.where((a) => a.tipo == tipo).toList();
    }

    // Filtrar por sexo
    if (sexo != null) {
      resultado = resultado.where((a) => a.sexo == sexo).toList();
    }

    // Filtrar por estado de vacunación
    if (soloVacunados == true) {
      resultado = resultado.where((a) => a.vacunado).toList();
    } else if (soloVacunados == false) {
      resultado = resultado.where((a) => !a.vacunado).toList();
    }

    // Filtrar por estado de desparasitación
    if (soloDesparasitados == true) {
      resultado = resultado.where((a) => a.desparasitado).toList();
    } else if (soloDesparasitados == false) {
      resultado = resultado.where((a) => !a.desparasitado).toList();
    }

    // Filtrar por alertas
    if (conAlertas == true) {
      DateTime ahora = DateTime.now();
      resultado = resultado.where((a) {
        bool tieneAlertas = false;

        // Sin vacunar
        if (!a.vacunado) {
          tieneAlertas = true;
        } else if (a.fechaUltimaVacuna != null) {
          int dias = ahora.difference(a.fechaUltimaVacuna!).inDays;
          if (dias > 365) tieneAlertas = true;
        }

        // Sin desparasitar
        if (!tieneAlertas && !a.desparasitado) {
          tieneAlertas = true;
        } else if (!tieneAlertas && a.fechaUltimoDesparasitante != null) {
          int dias = ahora.difference(a.fechaUltimoDesparasitante!).inDays;
          if (dias > 180) tieneAlertas = true;
        }

        // Sin vitaminas
        if (!tieneAlertas && !a.tieneVitaminas) {
          tieneAlertas = true;
        } else if (!tieneAlertas && a.fechaVitaminas != null) {
          int dias = ahora.difference(a.fechaVitaminas!).inDays;
          if (dias > 90) tieneAlertas = true;
        }

        return tieneAlertas;
      }).toList();
    }

    return resultado;
  }
}
