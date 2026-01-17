import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:miganado/features/animals/domain/entities/foto.dart';
import 'package:miganado/features/animals/presentation/providers/fotos_providers.dart';

class GaleriaFotosWidget extends ConsumerWidget {
  final String animalUuid;
  final String registradoPor;

  const GaleriaFotosWidget({
    required this.animalUuid,
    required this.registradoPor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fotosAsync = ref.watch(fotosByAnimalProvider(animalUuid));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Galería de Fotos',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ElevatedButton.icon(
                onPressed: () => _capturarFoto(context, ref),
                icon: Icon(Icons.camera_alt),
                label: Text('Capturar'),
              ),
            ],
          ),
        ),
        Expanded(
          child: fotosAsync.when(
            data: (fotos) => fotos.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image_not_supported, size: 48),
                        SizedBox(height: 16),
                        Text('Sin fotos aún'),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: fotos.length,
                    itemBuilder: (context, index) {
                      return FotoCardWidget(
                        foto: fotos[index],
                        onDelete: () =>
                            _eliminarFoto(context, ref, fotos[index]),
                        onEdit: () => _editarFoto(context, ref, fotos[index]),
                      );
                    },
                  ),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (err, st) => Center(child: Text('Error: $err')),
          ),
        ),
      ],
    );
  }

  void _capturarFoto(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Cámara'),
              onTap: () {
                Navigator.pop(context);
                _pickFoto(context, ref, ImageSource.camera);
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Galería'),
              onTap: () {
                Navigator.pop(context);
                _pickFoto(context, ref, ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickFoto(
    BuildContext context,
    WidgetRef ref,
    ImageSource source,
  ) async {
    try {
      ref.read(capturandoFotoProvider.notifier).state = true;

      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        final useCase = ref.read(capturarFotoUseCaseProvider);
        await useCase(
          animalUuid: animalUuid,
          rutaFoto: pickedFile.path,
          registradoPor: registradoPor,
          tituloFoto: 'Foto ${DateTime.now().toIso8601String()}',
        );

        // Refrescar fotos
        await ref.refresh(fotosByAnimalProvider(animalUuid));

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Foto capturada exitosamente')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      ref.read(capturandoFotoProvider.notifier).state = false;
    }
  }

  Future<void> _eliminarFoto(
    BuildContext context,
    WidgetRef ref,
    Foto foto,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Eliminar Foto'),
        content: Text('¿Está seguro de que desea eliminar esta foto?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text('Eliminar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        final useCase = ref.read(eliminarFotoUseCaseProvider);
        await useCase(fotoUuid: foto.uuid);

        // Refrescar fotos
        await ref.refresh(fotosByAnimalProvider(animalUuid));

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Foto eliminada')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  void _editarFoto(BuildContext context, WidgetRef ref, Foto foto) {
    final titleController = TextEditingController(text: foto.tituloFoto);
    final descController = TextEditingController(text: foto.descripcion);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Editar Foto'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Título'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: descController,
                decoration: InputDecoration(labelText: 'Descripción'),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () async {
              try {
                final useCase = ref.read(actualizarFotoUseCaseProvider);
                await useCase(
                  fotoUuid: foto.uuid,
                  tituloFoto: titleController.text,
                  descripcion: descController.text,
                );

                // Refrescar fotos
                await ref.refresh(fotosByAnimalProvider(animalUuid));

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Foto actualizada')),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            },
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}

class FotoCardWidget extends StatelessWidget {
  final Foto foto;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const FotoCardWidget({
    required this.foto,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');

    return Card(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen
          Image.file(
            File(foto.rutaLocal),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[300],
                child: Icon(Icons.broken_image),
              );
            },
          ),

          // Gradiente oscuro en la parte inferior
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                ),
              ),
            ),
          ),

          // Información y acciones
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (foto.tituloFoto != null)
                  Text(
                    foto.tituloFoto!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                SizedBox(height: 4),
                Text(
                  dateFormat.format(foto.fechaCaptura),
                  style: TextStyle(color: Colors.white70, fontSize: 10),
                ),
              ],
            ),
          ),

          // Botones de acción
          Positioned(
            top: 8,
            right: 8,
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.edit, size: 18),
                      SizedBox(width: 8),
                      Text('Editar')
                    ],
                  ),
                  onTap: onEdit,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.delete, size: 18, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Eliminar', style: TextStyle(color: Colors.red))
                    ],
                  ),
                  onTap: onDelete,
                ),
              ],
              icon: Icon(Icons.more_vert, color: Colors.white),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
