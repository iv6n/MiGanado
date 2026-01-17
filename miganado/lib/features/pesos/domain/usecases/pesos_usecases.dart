import 'package:miganado/features/pesos/domain/entities/pesaje.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:uuid/uuid.dart';

/// Excepción para operaciones de pesos
class PesajeException implements Exception {
  final String message;
  PesajeException(this.message);

  @override
  String toString() => 'PesajeException: $message';
}

/// Use case para registrar un pesaje
class RegistrarPesajeUseCase {
  final MiGanadoDatabase _database;

  RegistrarPesajeUseCase(this._database);

  Future<Pesaje> call({
    required String animalUuid,
    required double peso,
    required String unidad,
    required DateTime fecha,
    String? notas,
  }) async {
    try {
      // Validar que el animal existe
      final animal = await _database.getAnimalByUuid(animalUuid);
      if (animal == null) {
        throw PesajeException('Animal no encontrado');
      }

      // Validar que la fecha no sea futura
      if (fecha.isAfter(DateTime.now())) {
        throw PesajeException('La fecha no puede ser futura');
      }

      // Validar peso positivo
      if (peso <= 0) {
        throw PesajeException('El peso debe ser mayor a 0');
      }

      // Validar unidad
      if (unidad != 'kg' && unidad != 'lb') {
        throw PesajeException('Unidad debe ser kg o lb');
      }

      // Crear el pesaje
      final uuid = const Uuid().v4();
      final ahora = DateTime.now();

      final pesaje = Pesaje(
        uuid: uuid,
        animalUuid: animalUuid,
        peso: peso,
        unidad: unidad,
        fecha: fecha,
        notas: notas?.trim(),
        fechaCreacion: ahora,
        fechaActualizacion: ahora,
      );

      // Persistir en Isar
      final pesajeEntity = pesaje.toEntity();
      await _database.savePesaje(pesajeEntity);

      return pesaje;
    } catch (e) {
      if (e is PesajeException) rethrow;
      throw PesajeException('Error al registrar pesaje: $e');
    }
  }
}

/// Use case para obtener historial de pesajes
class ObtenerHistorialPesosUseCase {
  final MiGanadoDatabase _database;

  ObtenerHistorialPesosUseCase(this._database);

  Future<List<Pesaje>> call(String animalUuid) async {
    try {
      final pesajesEntities =
          await _database.getPesajesByAnimalUuid(animalUuid);
      final pesajes = pesajesEntities
          .map((entity) => Pesaje.fromEntity(entity))
          .toList()
        ..sort((a, b) => b.fecha.compareTo(a.fecha)); // Descendente
      return pesajes;
    } catch (e) {
      throw PesajeException('Error al obtener historial de pesos: $e');
    }
  }
}

/// Use case para obtener análisis de pesos
class ObtenerAnalisisPesosUseCase {
  final MiGanadoDatabase _database;

  ObtenerAnalisisPesosUseCase(this._database);

  Future<AnalisisPesos> call(String animalUuid) async {
    try {
      final pesajesEntities =
          await _database.getPesajesByAnimalUuid(animalUuid);

      if (pesajesEntities.isEmpty) {
        final ahora = DateTime.now();
        return AnalisisPesos(
          animalUuid: animalUuid,
          pesoActual: 0,
          totalPesajes: 0,
          desde: ahora,
          hasta: ahora,
        );
      }

      final pesajes = pesajesEntities
          .map((entity) => Pesaje.fromEntity(entity))
          .toList()
        ..sort(
            (a, b) => a.fecha.compareTo(b.fecha)); // Ascendente para análisis

      final pesoActual = pesajes.last.peso;
      final pesoAnterior =
          pesajes.length > 1 ? pesajes[pesajes.length - 2].peso : null;
      final ganancia = pesoAnterior != null ? pesoActual - pesoAnterior : null;

      // Calcular ganancia promedio
      double? gananciaPromedioDiaria;
      double? gananciaPromedioSemanal;
      String? tendencia;

      if (pesajes.length >= 2) {
        final primerPesaje = pesajes.first;
        final ultimoPesaje = pesajes.last;
        final diasTranscurridos =
            ultimoPesaje.fecha.difference(primerPesaje.fecha).inDays;

        if (diasTranscurridos > 0) {
          final gananciaTotalDias = ultimoPesaje.peso - primerPesaje.peso;
          gananciaPromedioDiaria = gananciaTotalDias / diasTranscurridos;
          gananciaPromedioSemanal = gananciaPromedioDiaria * 7;

          // Determinar tendencia
          if (gananciaPromedioDiaria > 0) {
            tendencia = 'Ascendente';
          } else if (gananciaPromedioDiaria < 0) {
            tendencia = 'Descendente';
          } else {
            tendencia = 'Estable';
          }
        }
      }

      // Proyectar peso al mes
      double? pesoProyectadoMes;
      if (gananciaPromedioDiaria != null) {
        pesoProyectadoMes = pesoActual + (gananciaPromedioDiaria * 30);
      }

      return AnalisisPesos(
        animalUuid: animalUuid,
        pesoActual: pesoActual,
        pesoAnterior: pesoAnterior,
        ganancia: ganancia,
        gananciaPromedioDiaria: gananciaPromedioDiaria,
        gananciaPromedioSemanal: gananciaPromedioSemanal,
        totalPesajes: pesajes.length,
        desde: pesajes.first.fecha,
        hasta: pesajes.last.fecha,
        tendencia: tendencia,
        pesoProyectadoMes: pesoProyectadoMes,
      );
    } catch (e) {
      throw PesajeException('Error al obtener análisis de pesos: $e');
    }
  }
}

/// Use case para obtener últimos pesajes (para gráfico)
class ObtenerUltimosPesosUseCase {
  final MiGanadoDatabase _database;

  ObtenerUltimosPesosUseCase(this._database);

  Future<List<Pesaje>> call(String animalUuid, {int limite = 30}) async {
    try {
      final pesajesEntities =
          await _database.getPesajesByAnimalUuid(animalUuid);
      final pesajes = pesajesEntities
          .map((entity) => Pesaje.fromEntity(entity))
          .toList()
        ..sort((a, b) => a.fecha.compareTo(b.fecha)); // Ascendente para gráfico

      // Retornar últimos N pesajes
      final inicio = pesajes.length > limite ? pesajes.length - limite : 0;
      return pesajes.sublist(inicio);
    } catch (e) {
      throw PesajeException('Error al obtener últimos pesos: $e');
    }
  }
}
