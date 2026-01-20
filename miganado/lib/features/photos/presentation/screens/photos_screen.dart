import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:intl/intl.dart';

/// Pantalla para capturar y gestionar fotos de animales
class AnimalPhotosScreen extends StatefulWidget {
  final String animalUuid;
  final String animalNombre;

  const AnimalPhotosScreen({
    required this.animalUuid,
    required this.animalNombre,
    Key? key,
  }) : super(key: key);

  @override
  State<AnimalPhotosScreen> createState() => _AnimalPhotosScreenState();
}

class _AnimalPhotosScreenState extends State<AnimalPhotosScreen> {
  final ImagePicker _picker = ImagePicker();
  List<String> _photoUrls = []; // En el futuro, esto vendrá de la BD
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadPhotos();
  }

  /// Cargar fotos del animal (placeholder para integración con BD)
  Future<void> _loadPhotos() async {
    setState(() => _isLoading = true);
    try {
      // TODO: Cargar fotos de la BD
      // Por ahora, mostramos una lista vacía
      await Future.delayed(const Duration(milliseconds: 500));
    } finally {
      setState(() => _isLoading = false);
    }
  }

  /// Capturar foto desde la cámara
  Future<void> _capturePhoto() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
      );

      if (photo != null) {
        if (!mounted) return;
        _showPhotoPreview(File(photo.path));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al capturar foto: $e')),
        );
      }
    }
  }

  /// Seleccionar foto desde galería
  Future<void> _selectPhotoFromGallery() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (photo != null) {
        if (!mounted) return;
        _showPhotoPreview(File(photo.path));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al seleccionar foto: $e')),
        );
      }
    }
  }

  /// Mostrar diálogo de vista previa y guardar foto
  void _showPhotoPreview(File photoFile) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Imagen
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.file(
                photoFile,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            // Descripción (opcional)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Guardar foto',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Descripción (opcional)',
                      hintText: 'ej: Vista frontal, primer plano...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Fecha: ${DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now())}',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            // Botones
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _savePhoto(photoFile);
                    },
                    child: const Text('Guardar Foto'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Guardar foto en el sistema de archivos y BD
  Future<void> _savePhoto(File photoFile) async {
    setState(() => _isLoading = true);
    try {
      // TODO: Implementar guardado real en BD
      // Por ahora, simulamos el guardado
      await Future.delayed(const Duration(milliseconds: 500));

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Foto guardada exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
        // Recargar lista de fotos
        await _loadPhotos();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al guardar foto: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Fotos'),
            Text(
              widget.animalNombre,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: _isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Cargando...'),
                ],
              ),
            )
          : _photoUrls.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_not_supported,
                        size: 64,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Sin fotos registradas',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Toca uno de los botones para agregar tu primera foto',
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: _photoUrls.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // TODO: Mostrar zoom de la foto
                      },
                      child: Card(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              _photoUrls[index],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                color: Colors.grey.shade200,
                                child: Icon(Icons.broken_image),
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 16,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.close,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    // TODO: Eliminar foto
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Función de eliminar próximamente')),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: _selectPhotoFromGallery,
            icon: Icon(Icons.photo_library),
            label: Text('Galería'),
            heroTag: 'gallery',
          ),
          SizedBox(height: 16),
          FloatingActionButton.extended(
            onPressed: _capturePhoto,
            icon: Icon(Icons.camera_alt),
            label: Text('Cámara'),
            heroTag: 'camera',
          ),
        ],
      ),
    );
  }
}
