import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';
import 'package:miganado/core/exceptions/app_exception.dart';
import 'package:miganado/core/services/logger_service.dart';

// ===================== STREAM PROVIDERS - DATOS EN VIVO =====================

/// Stream of all animals - Updates automatically
final animalsStreamProvider = StreamProvider<List<Animal>>((ref) async* {
  try {
    LoggerService.startOperation('animalsStream', 'home_providers');
    final database = ref.watch(databaseProvider);
    final animalEntities = await database.getAllAnimales();
    final animals =
        animalEntities.map((entity) => Animal.fromEntity(entity)).toList();
    LoggerService.operationCompleted('animalsStream', 'home_providers');
    yield animals;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error en stream de animales', appEx, st, 'home_providers');
    throw DatabaseException(
      message: 'No se pudieron cargar los animales: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

/// Stream de conteo de animales por categoría
final animalStatsProvider = StreamProvider<AnimalStats>((ref) async* {
  try {
    LoggerService.startOperation('animalStats', 'home_providers');
    final animals = await ref.watch(animalsStreamProvider.future);

    int calfMales = 0;
    int calfFemales = 0;
    int heifers = 0;
    int steers = 0;
    int youngBulls = 0;
    int cows = 0;
    int bulls = 0;
    int colts = 0;
    int others = 0;

    for (var animal in animals) {
      switch (animal.lifeStage) {
        case LifeStage.calf:
          calfMales++;
        case LifeStage.calfMale:
          calfMales++;
        case LifeStage.calfFemale:
          calfFemales++;
        case LifeStage.heifer:
          heifers++;
        case LifeStage.steer:
          steers++;
        case LifeStage.youngBull:
          youngBulls++;
        case LifeStage.cow:
          cows++;
        case LifeStage.bull:
          bulls++;
        case LifeStage.colt:
          colts++;
        case LifeStage.filly:
        case LifeStage.horse:
        case LifeStage.mare:
        case LifeStage.donkey:
        case LifeStage.donkeyFemale:
        case LifeStage.mule:
          others++;
      }
    }

    final stats = AnimalStats(
      calfMales: calfMales,
      calfFemales: calfFemales,
      heifers: heifers,
      steers: steers,
      youngBulls: youngBulls,
      cows: cows,
      bulls: bulls,
      colts: colts,
      others: others,
      total: animals.length,
    );

    LoggerService.operationCompleted('animalStats', 'home_providers');
    yield stats;
  } catch (e, st) {
    final appEx = toAppException(e, st);
    LoggerService.error(
        'Error en estadísticas de animales', appEx, st, 'home_providers');
    throw DatabaseException(
      message: 'No se pudieron calcular las estadísticas: ${appEx.message}',
      originalError: e,
      stackTrace: st,
    );
  }
});

// ===================== MODELS =====================

class AnimalStats {
  final int calfMales;
  final int calfFemales;
  final int heifers;
  final int steers;
  final int youngBulls;
  final int cows;
  final int bulls;
  final int colts;
  final int others;
  final int total;

  AnimalStats({
    required this.calfMales,
    required this.calfFemales,
    required this.heifers,
    required this.steers,
    required this.youngBulls,
    required this.cows,
    required this.bulls,
    required this.colts,
    required this.others,
    required this.total,
  });
}
