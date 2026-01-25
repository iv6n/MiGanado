import 'package:flutter/material.dart';
import 'package:miganado/core/utils/asset_mapper.dart';
import 'package:miganado/features/animals/data/models/animal_entity.dart';

/// Widget reutilizable para mostrar tarjetas de animales con imágenes
class AnimalImageCard extends StatelessWidget {
  /// Ruta de la imagen
  final String imagePath;

  /// Etiqueta principal (nombre, etapa, etc)
  final String label;

  /// Subtítulo opcional (ej: cantidad, estado)
  final String? subtitle;

  /// Color de acento
  final Color color;

  /// Tamaño de la tarjeta
  final AnimalCardSize size;

  /// Callback cuando se toca la tarjeta
  final VoidCallback? onTap;

  /// Mostrar un badge con número
  final int? badge;

  const AnimalImageCard({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.color,
    this.subtitle,
    this.size = AnimalCardSize.medium,
    this.onTap,
    this.badge,
  }) : super(key: key);

  /// Constructor para etapa de vida
  factory AnimalImageCard.fromEtapa({
    required String etapa,
    required int count,
    Color? color,
    VoidCallback? onTap,
  }) {
    return AnimalImageCard(
      imagePath: AssetMapper.getImageForEtapa(etapa),
      label: etapa,
      badge: count,
      color: color ?? Colors.blue,
      onTap: onTap,
      size: AnimalCardSize.small,
    );
  }

  /// Constructor para categoría
  factory AnimalImageCard.fromCategoria({
    required String categoria,
    Color? color,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    return AnimalImageCard(
      imagePath: AssetMapper.getImageForCategoria(categoria),
      label: categoria,
      subtitle: subtitle,
      color: color ?? Colors.green,
      onTap: onTap,
      size: AnimalCardSize.large,
    );
  }

  /// Constructor para enum EtapaVida
  factory AnimalImageCard.fromEtapaEnum({
    required EtapaVida etapa,
    required int count,
    Color? color,
    VoidCallback? onTap,
  }) {
    final etapaStr = etapa.toString().split('.').last;
    return AnimalImageCard.fromEtapa(
      etapa: etapaStr,
      count: count,
      color: color,
      onTap: onTap,
    );
  }

  /// Constructor para enum Categoria
  factory AnimalImageCard.fromCategoriaEnum({
    required Categoria categoria,
    Color? color,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    final categoriaStr = categoria.toString().split('.').last;
    return AnimalImageCard.fromCategoria(
      categoria: categoriaStr,
      color: color,
      subtitle: subtitle,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final (imageSize, _, containerPadding) = _getSizeValues();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 95,
        width: 65,
        padding: containerPadding,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            if (badge != null)
              Positioned(
                right: -.01,
                top: -.01,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$badge',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Imagen con badge
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: imageSize,
                        height: imageSize,
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.image_not_supported,
                          color: color,
                          size: imageSize * 0.4,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 6),
                // Etiqueta
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Retorna (imageSize, containerWidth, padding) según el tamaño
  (double imageSize, double containerWidth, EdgeInsets padding)
      _getSizeValues() {
    switch (size) {
      case AnimalCardSize.small:
        return (35, 95, const EdgeInsets.all(8));
      case AnimalCardSize.medium:
        return (50, 110, const EdgeInsets.all(10));
      case AnimalCardSize.large:
        return (70, 130, const EdgeInsets.all(12));
    }
  }
}

/// Enumeración para tamaños de tarjeta
enum AnimalCardSize {
  small, // 95x95
  medium, // 110x110
  large, // 130x130
}
