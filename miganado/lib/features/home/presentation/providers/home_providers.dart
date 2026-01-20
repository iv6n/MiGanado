import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/presentation/providers/animals_providers.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';

// ===================== STREAM PROVIDERS - DATOS EN VIVO =====================

/// Stream de todos los animales - Se actualiza automáticamente
final animalsStreamProvider = StreamProvider<List<AnimalEntity>>((ref) async* {
  final database = ref.watch(databaseProvider);
  yield await database.getAllAnimales();
});

/// Stream de conteo de animales por categoría
final animalStatsProvider = StreamProvider<AnimalStats>((ref) async* {
  final animals = await ref.watch(animalsStreamProvider.future);

  int becerros = 0;
  int becerras = 0;
  int vaquillas = 0;
  int novillos = 0;
  int toretes = 0;
  int vacas = 0;
  int toros = 0;
  int potros = 0;
  int otros = 0;

  for (var animal in animals) {
    switch (animal.etapa) {
      case EtapaVida.becerro:
        becerros++;
      case EtapaVida.becerra:
        becerras++;
      case EtapaVida.vaquilla:
        vaquillas++;
      case EtapaVida.novillo:
        novillos++;
      case EtapaVida.torete:
        toretes++;
      case EtapaVida.vaca:
        vacas++;
      case EtapaVida.toro:
        toros++;
      case EtapaVida.potro:
        potros++;
      case EtapaVida.adulto:
        otros++;
    }
  }

  yield AnimalStats(
    becerros: becerros,
    becerras: becerras,
    vaquillas: vaquillas,
    novillos: novillos,
    toretes: toretes,
    vacas: vacas,
    toros: toros,
    potros: potros,
    otros: otros,
    total: animals.length,
  );
});

// ===================== MODELS =====================

class AnimalStats {
  final int becerros;
  final int becerras;
  final int vaquillas;
  final int novillos;
  final int toretes;
  final int vacas;
  final int toros;
  final int potros;
  final int otros;
  final int total;

  AnimalStats({
    required this.becerros,
    required this.becerras,
    required this.vaquillas,
    required this.novillos,
    required this.toretes,
    required this.vacas,
    required this.toros,
    required this.potros,
    required this.otros,
    required this.total,
  });
}
