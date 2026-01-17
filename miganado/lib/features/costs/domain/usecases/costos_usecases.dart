import 'package:miganado/features/costs/domain/entities/costo.dart';
import 'package:miganado/data/database/isar_database.dart';
import 'package:uuid/uuid.dart';

/// Excepción para operaciones de costos
class CostoException implements Exception {
  final String message;
  CostoException(this.message);

  @override
  String toString() => 'CostoException: $message';
}

/// Usar registrar un costo para un animal
class RegistrarCostoUseCase {
  final MiGanadoDatabase _database;

  RegistrarCostoUseCase(this._database);

  Future<Costo> call({
    required String animalUuid,
    required String concepto,
    required double monto,
    required String moneda,
    required DateTime fecha,
    String? categoria,
    String? eventoMantenimientoUuid,
    String? descripcion,
    String? proveedor,
  }) async {
    try {
      // Validar que el animal existe
      final animal = await _database.getAnimalByUuid(animalUuid);
      if (animal == null) {
        throw CostoException('Animal no encontrado');
      }

      // Validar que la fecha no sea futura
      if (fecha.isAfter(DateTime.now())) {
        throw CostoException('La fecha no puede ser futura');
      }

      // Validar que el concepto no esté vacío
      if (concepto.trim().isEmpty) {
        throw CostoException('El concepto es requerido');
      }

      // Validar monto positivo
      if (monto <= 0) {
        throw CostoException('El monto debe ser mayor a 0');
      }

      // Crear el costo
      final uuid = const Uuid().v4();
      final ahora = DateTime.now();

      final costo = Costo(
        uuid: uuid,
        animalUuid: animalUuid,
        descripcion: concepto.trim(),
        monto: monto,
        fecha: fecha,
        detalles: descripcion?.trim(),
        responsable: proveedor?.trim(),
        fechaCreacion: ahora,
        fechaActualizacion: ahora,
      );

      // Persistir en Isar
      final costoEntity = costo.toEntity();
      await _database.saveCosto(costoEntity);

      return costo;
    } catch (e) {
      if (e is CostoException) rethrow;
      throw CostoException('Error al registrar costo: $e');
    }
  }
}

/// Usar para obtener historial de costos de un animal
class ObtenerHistorialCostosUseCase {
  final MiGanadoDatabase _database;

  ObtenerHistorialCostosUseCase(this._database);

  Future<List<Costo>> call(String animalUuid) async {
    try {
      final costosEntities = await _database.getCostosByAnimalUuid(animalUuid);
      final costos = costosEntities
          .map((entity) => Costo.fromEntity(entity))
          .toList()
        ..sort((a, b) =>
            b.fecha.compareTo(a.fecha)); // Descendente (más reciente primero)
      return costos;
    } catch (e) {
      throw CostoException('Error al obtener historial de costos: $e');
    }
  }
}

/// Usar para obtener resumen financiero de un animal
class ObtenerResumenFinancieroUseCase {
  final MiGanadoDatabase _database;

  ObtenerResumenFinancieroUseCase(this._database);

  Future<ResumenFinanciero> call(String animalUuid) async {
    try {
      final costosEntities = await _database.getCostosByAnimalUuid(animalUuid);
      final costos =
          costosEntities.map((entity) => Costo.fromEntity(entity)).toList();

      double costoTotal = 0;

      for (final costo in costos) {
        costoTotal += costo.monto;
      }

      final fechas = costos.map((c) => c.fecha).toList();
      final desde = fechas.isNotEmpty
          ? fechas.reduce((a, b) => a.isBefore(b) ? a : b)
          : DateTime.now();
      final hasta = fechas.isNotEmpty
          ? fechas.reduce((a, b) => a.isAfter(b) ? a : b)
          : DateTime.now();

      return ResumenFinanciero(
        animalUuid: animalUuid,
        costoTotal: costoTotal,
        totalEventos: costos.length,
        desde: desde,
        hasta: hasta,
      );
    } catch (e) {
      throw CostoException('Error al obtener resumen financiero: $e');
    }
  }
}
