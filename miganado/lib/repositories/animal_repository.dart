import 'package:miganado/data/database/database.dart';
import 'package:miganado/models/animal.dart';

class AnimalRepository {
  final MiGanadoDatabase _database;

  AnimalRepository(this._database);

  /// Obtiene todos los animales
  Future<List<Animal>> getAllAnimales() => _database.getAllAnimales();

  /// Obtiene un animal por ID
  Future<Animal?> getAnimalById(String id) => _database.getAnimalById(id);

  /// Obtiene un animal por número de arete
  Future<Animal?> getAnimalByArete(String numeroArete) =>
      _database.getAnimalByArete(numeroArete);

  /// Crea un nuevo animal
  Future<void> createAnimal(Animal animal) => _database.insertAnimal(animal);

  /// Actualiza un animal
  Future<void> updateAnimal(Animal animal) => _database.updateAnimal(animal);

  /// Elimina un animal
  Future<void> deleteAnimal(String id) => _database.deleteAnimal(id);

  /// Obtiene animales por tipo
  Future<List<Animal>> getAnimalesByTipo(String tipo) =>
      _database.getAnimalesByTipo(tipo);

  /// Busca animales por número de arete (búsqueda parcial)
  Future<List<Animal>> searchByArete(String query) async {
    final animales = await _database.getAllAnimales();
    return animales
        .where((a) =>
            a.numeroArete.toLowerCase().contains(query.toLowerCase()) ||
            a.raza.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
