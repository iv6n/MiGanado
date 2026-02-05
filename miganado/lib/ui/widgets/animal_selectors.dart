// DEPRECATED: This file uses old enum classes (Categoria, Especie, EtapaVida)
// that no longer exist in the current codebase. 
// Use new enum classes instead: Category, LotSpecies, LifeStage
// This file is kept for reference only and should not be used.

/*
import 'package:flutter/material.dart';
import 'package:miganado/core/utils/asset_mapper.dart';

/// Widget para seleccionar categoría de animal con interfaz visual
class CategoriaSelector extends StatefulWidget {
  /// Categoría seleccionada actualmente
  final Categoria? selectedCategoria;

  /// Callback cuando se selecciona una categoría
  final Function(Categoria) onSelected;

  /// Especies a mostrar
  final List<Especie> especies;

  const CategoriaSelector({
    Key? key,
    required this.selectedCategoria,
    required this.onSelected,
    this.especies = const [Especie.bovino, Especie.equino],
  }) : super(key: key);

  @override
  State<CategoriaSelector> createState() => _CategoriaSelectorState();
}

class _CategoriaSelectorState extends State<CategoriaSelector> {
  late Especie _selectedEspecie;

  @override
  void initState() {
    super.initState();
    // Inicializar especie basada en categoría seleccionada
    _selectedEspecie = _getEspecieFromCategoria(widget.selectedCategoria) ??
        widget.especies.first;
  }

  Especie? _getEspecieFromCategoria(Categoria? categoria) {
    if (categoria == null) return null;
    switch (categoria) {
      case Categoria.vaca:
        return Especie.bovino;
      case Categoria.caballo:
      case Categoria.burro:
      case Categoria.mula:
        return Especie.equino;
    }
  }

  List<Categoria> _getCategoriasByEspecie(Especie especie) {
    switch (especie) {
      case Especie.bovino:
        return [Categoria.vaca];
      case Especie.equino:
        return [Categoria.caballo, Categoria.burro, Categoria.mula];
    }
  }

  Color _getColorForCategoria(Categoria categoria) {
    const colorMap = {
      Categoria.vaca: Color(0xFF4CAF50),
      Categoria.caballo: Color(0xFF8B7355),
      Categoria.burro: Color(0xFFA5A5A5),
      Categoria.mula: Color(0xFF795548),
    };
    return colorMap[categoria] ?? Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    final categoriasDisponibles = _getCategoriasByEspecie(_selectedEspecie);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Selector de especie (tabs)
        if (widget.especies.length > 1) ...[
          const Text(
            'Especie',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final especie in widget.especies)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(
                        especie.toString().split('.').last.toUpperCase(),
                      ),
                      selected: _selectedEspecie == especie,
                      onSelected: (selected) {
                        if (selected) {
                          setState(() => _selectedEspecie = especie);
                        }
                      },
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.green,
                      labelStyle: TextStyle(
                        color: _selectedEspecie == especie
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],

        // Selector de categoría (grid visual)
        const Text(
          'Categoría',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.0,
          children: [
            for (final categoria in categoriasDisponibles)
              _CategoriaCard(
                categoria: categoria,
                isSelected: widget.selectedCategoria == categoria,
                color: _getColorForCategoria(categoria),
                onTap: () => widget.onSelected(categoria),
              ),
          ],
        ),
      ],
    );
  }
}

/// Tarjeta individual para seleccionar categoría
class _CategoriaCard extends StatelessWidget {
  final Categoria categoria;
  final bool isSelected;
  final Color color;
  final VoidCallback onTap;

  const _CategoriaCard({
    required this.categoria,
    required this.isSelected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final categoriaStr = categoria.toString().split('.').last;
    final imagePath = AssetMapper.getImageForCategoria(categoriaStr);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.2) : Colors.grey[100],
          border: Border.all(
            color: isSelected ? color : Colors.grey[300]!,
            width: isSelected ? 2.5 : 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.image_not_supported,
                        color: Colors.grey[400],
                        size: 40,
                      );
                    },
                  ),
                ),
              ),
            ),
            // Nombre y checkmark
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      categoriaStr.toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: isSelected ? color : Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isSelected)
                    Icon(
                      Icons.check_circle,
                      color: color,
                      size: 16,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget para seleccionar etapa de vida con interfaz visual
class EtapaSelector extends StatefulWidget {
  /// Etapa seleccionada actualmente
  final EtapaVida? selectedEtapa;

  /// Callback cuando se selecciona una etapa
  final Function(EtapaVida) onSelected;

  /// Especificar qué etapas mostrar (si null, muestra todas)
  final List<EtapaVida>? availableEtapas;

  const EtapaSelector({
    Key? key,
    required this.selectedEtapa,
    required this.onSelected,
    this.availableEtapas,
  }) : super(key: key);

  @override
  State<EtapaSelector> createState() => _EtapaSelectorState();
}

class _EtapaSelectorState extends State<EtapaSelector> {
  Color _getColorForEtapa(EtapaVida etapa) {
    final etapaStr = etapa.toString().split('.').last;
    const colorMap = {
      'becerro': Color(0xFF2196F3),
      'becerra': Color(0xFFEC407A),
      'vaquilla': Color(0xFF00BCD4),
      'novillo': Color(0xFF795548),
      'torete': Color(0xFFF44336),
      'vaca': Color(0xFF4CAF50),
      'toro': Color(0xFFFF9800),
      'potro': Color(0xFF009688),
      'potranca': Color(0xFF00897B),
      'caballo': Color(0xFF5C6BC0),
      'yegua': Color(0xFF9C27B0),
      'burro': Color(0xFF455A64),
      'burra': Color(0xFF37474F),
      'mula': Color(0xFF8BC34A),
    };
    return colorMap[etapaStr] ?? Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final etapas = widget.availableEtapas ?? EtapaVida.values;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Etapa de Vida',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.0,
          children: [
            for (final etapa in etapas)
              _EtapaCard(
                etapa: etapa,
                isSelected: widget.selectedEtapa == etapa,
                color: _getColorForEtapa(etapa),
                onTap: () => widget.onSelected(etapa),
              ),
          ],
        ),
      ],
    );
  }
}

/// Tarjeta individual para seleccionar etapa
class _EtapaCard extends StatelessWidget {
  final EtapaVida etapa;
  final bool isSelected;
  final Color color;
  final VoidCallback onTap;

  const _EtapaCard({
    required this.etapa,
    required this.isSelected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final etapaStr = etapa.toString().split('.').last;
    final imagePath = AssetMapper.getImageForEtapa(etapaStr);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.2) : Colors.grey[100],
          border: Border.all(
            color: isSelected ? color : Colors.grey[300]!,
            width: isSelected ? 2.5 : 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.image_not_supported,
                        color: Colors.grey[400],
                        size: 40,
                      );
                    },
                  ),
                ),
              ),
            ),
            // Nombre y checkmark
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      etapaStr.toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: isSelected ? color : Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isSelected)
                    Icon(
                      Icons.check_circle,
                      color: color,
                      size: 16,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
