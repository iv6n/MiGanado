import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

/// Mapeo centralizado de etapas de vida y categorías a sus imágenes correspondientes
class AssetMapper {
  /// Mapeo de etapas de vida a rutas de imágenes
  static const Map<String, String> etapaImageMap = {
    'becerro': 'assets/images/becerro.png',
    'becerra': 'assets/images/becerro.png', // Usa imagen de becerro
    'vaquilla': 'assets/images/vaquilla.png',
    'torete': 'assets/images/novillo.png',
    'novillo': 'assets/images/novillo.png',
    'vaca': 'assets/images/vaca.png',
    'toro': 'assets/images/toro.png',
    'potro': 'assets/images/caballo.png',
    'potranca': 'assets/images/caballo.png',
    'caballo': 'assets/images/caballo.png',
    'yegua': 'assets/images/caballo.png',
    'burro': 'assets/images/burro.png',
    'burra': 'assets/images/burro.png',
    'mula': 'assets/images/mula.png',
  };

  /// Mapeo de categorías a rutas de imágenes
  static const Map<String, String> categoriaImageMap = {
    'vaca': 'assets/images/vaca.png',
    'caballo': 'assets/images/caballo.png',
    'burro': 'assets/images/burro.png',
    'mula': 'assets/images/mula.png',
  };

  /// Obtener imagen para una etapa de vida
  /// Recibe la etapa como String (sin el enum prefix)
  static String getImageForEtapa(String etapa) {
    final etapaLower = etapa.toLowerCase();
    return etapaImageMap[etapaLower] ?? 'assets/images/vaca.png';
  }

  /// Obtener imagen para una categoría
  static String getImageForCategoria(String categoria) {
    final categoriaLower = categoria.toLowerCase();
    return categoriaImageMap[categoriaLower] ?? 'assets/images/vaca.png';
  }

  /// Obtener imagen basada en el enum LifeStage
  static String getImageFromEtapaEnum(LifeStage etapa) {
    return getImageForEtapa(etapa.toString().split('.').last);
  }

  /// Obtener imagen basada en el enum Category
  static String getImageFromCategoriaEnum(Category categoria) {
    return getImageForCategoria(categoria.toString().split('.').last);
  }

  /// Imagen por defecto (logo o animal genérico)
  static const String defaultImage = 'assets/images/vaca.png';

  /// Logo de la aplicación
  static const String appLogo = 'assets/images/logoxd.png';

  /// Imágenes de acciones/mantenimiento
  static const String iconVacuna = 'assets/images/vacuna.png';
  static const String iconDesparasitar = 'assets/images/desparasitar.png';
  static const String iconVitaminas = 'assets/images/vitaminas.png';
  static const String iconDirectorio = 'assets/images/directorio.png';
  static const String iconUbicaciones = 'assets/images/ubicaciones.png';
  static const String iconPerfil = 'assets/images/perfil.png';
}
