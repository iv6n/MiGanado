import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/core/constants/app_strings.dart';
import 'package:miganado/features/ganadero/data/models/ganadero_entity.dart';
import 'package:miganado/features/ganadero/presentation/providers/ganadero_providers.dart';
import 'package:miganado/features/ganadero/presentation/widgets/ganadero_form_widget.dart';

/// Screen para ver y editar datos del ganadero/propietario
class MiGanadoScreen extends ConsumerStatefulWidget {
  const MiGanadoScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MiGanadoScreen> createState() => _MiGanadoScreenState();
}

class _MiGanadoScreenState extends ConsumerState<MiGanadoScreen> {
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    final ganaderoAsync = ref.watch(ganaderoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Datos'), // TODO: Mover a AppStrings y ARB
        backgroundColor: Colors.green.shade700,
        elevation: 0,
        actions: [
          if (!_isEditing)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                setState(() {
                  _isEditing = true;
                });
              },
            ),
        ],
      ),
      body: ganaderoAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('${AppStrings.errorTitle}: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:
                    const Text('Reintentar'), // TODO: Mover a AppStrings y ARB
              ),
            ],
          ),
        ),
        data: (ganadero) {
          if (ganadero == null) {
            return _buildCreateGanaderoScreen();
          }

          if (_isEditing) {
            return _buildEditScreen(ganadero);
          }

          return _buildViewScreen(ganadero);
        },
      ),
    );
  }

  /// Screen para crear un nuevo ganadero (primera vez)
  Widget _buildCreateGanaderoScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Icon(
              Icons.person_add,
              size: 80,
              color: Colors.green.shade700,
            ),
            const SizedBox(height: 24),
            Text(
              'Completa tus Datos', // TODO: Mover a AppStrings y ARB
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Necesitamos información sobre ti y tu operación ganadera', // TODO: Mover a AppStrings y ARB
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Consumer(
              builder: (context, ref, _) {
                return GanaderoFormWidget(
                  ganadero: GanaderoEntity(nombre: ''),
                  onSave: (ganadero) async {
                    try {
                      final database = ref.read(databaseProvider);
                      await database.saveGanadero(ganadero);
                      Navigator.pop(context);

                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('✓ Datos guardados correctamente'),
                            backgroundColor: Colors.green,
                          ),
                        );
                        setState(() {
                          _isEditing = false;
                        });
                      }
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error al guardar: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Screen para editar datos del ganadero
  Widget _buildEditScreen(GanaderoEntity ganadero) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Datos'),
        backgroundColor: Colors.green.shade700,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            setState(() {
              _isEditing = false;
            });
          },
        ),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          return GanaderoFormWidget(
            ganadero: ganadero,
            onSave: (updatedGanadero) async {
              try {
                final database = ref.read(databaseProvider);
                await database.saveGanadero(updatedGanadero);
                // Note: refresh removed due to type incompatibility

                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('✓ Datos actualizados correctamente'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  setState(() {
                    _isEditing = false;
                  });
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error al guardar: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
          );
        },
      ),
    );
  }

  /// Screen para ver datos del ganadero
  Widget _buildViewScreen(GanaderoEntity ganadero) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header con avatar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade700, Colors.green.shade500],
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  ganadero.nombre,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                if (ganadero.tipoProduccion != null)
                  Text(
                    ganadero.tipoProduccion!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
              ],
            ),
          ),

          // Información
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Teléfono
                if (ganadero.telefono != null)
                  _buildInfoCard(
                    icon: Icons.phone,
                    title: 'Teléfono',
                    value: ganadero.telefono!,
                  ),

                // Email
                if (ganadero.email != null)
                  _buildInfoCard(
                    icon: Icons.email,
                    title: 'Email',
                    value: ganadero.email!,
                  ),

                // Ubicación
                if (ganadero.ubicacion != null)
                  _buildInfoCard(
                    icon: Icons.location_on,
                    title: 'Ubicación',
                    value: ganadero.ubicacion!,
                  ),

                // Cantidad de Animales
                if (ganadero.cantidadAnimales != null)
                  _buildInfoCard(
                    icon: Icons.pets,
                    title: 'Cantidad de Animales',
                    value: ganadero.cantidadAnimales.toString(),
                  ),

                // Notas
                if (ganadero.notas != null && ganadero.notas!.isNotEmpty)
                  _buildInfoCard(
                    icon: Icons.note,
                    title: 'Notas',
                    value: ganadero.notas!,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Widget para mostrar información en tarjeta
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green.shade700),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
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
