import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/entities/animal_detail.dart';
import 'package:miganado/features/animals/presentation/providers/animal_detail_provider.dart';
import 'package:miganado/features/animals/presentation/widgets/animal_detail_widgets.dart';
import 'package:miganado/features/costs/presentation/screens/costos_screen.dart';
import 'package:miganado/features/pesos/presentation/screens/pesos_screen.dart';
import 'package:miganado/features/mantenimiento/presentation/widgets/registro_dialogs.dart';
import 'package:miganado/features/animals/presentation/screens/vacunas_historial_screen.dart';
import 'package:miganado/features/animals/presentation/screens/tratamientos_historial_screen.dart';
import 'package:miganado/features/animals/presentation/screens/nutricion_historial_screen.dart';
import 'package:miganado/features/animals/presentation/screens/desparasitaciones_historial_screen.dart';
import 'package:miganado/features/animals/presentation/screens/reproductivo_historial_screen.dart';
import 'package:miganado/features/reports/presentation/screens/generar_report_screen.dart';

/// Pantalla de detalles del animal
/// Muestra información completa con tabs para Información e Historial
class AnimalDetailScreen extends ConsumerStatefulWidget {
  final String animalUuid;

  const AnimalDetailScreen({required this.animalUuid, super.key});

  @override
  ConsumerState<AnimalDetailScreen> createState() => _AnimalDetailScreenState();
}

class _AnimalDetailScreenState extends ConsumerState<AnimalDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animalDetailAsync =
        ref.watch(animalDetailProvider(widget.animalUuid));
    final observaciones = ref.watch(observacionesProvider(widget.animalUuid));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Animal'),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: animalDetailAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Volver'),
              ),
            ],
          ),
        ),
        data: (animalDetail) => NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: AnimalDetailHeader(animal: animalDetail.animal),
            ),
          ],
          body: Column(
            children: [
              TabBar(
                controller: _tabController,
                labelColor: Colors.green.shade700,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.green.shade700,
                tabs: const [
                  Tab(text: 'Información'),
                  Tab(text: 'Historial'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // TAB 1: INFORMACIÓN
                    _TabInformacion(
                      animalDetail: animalDetail,
                      observacionesState: observaciones,
                      onGuardarObservaciones: () async {
                        final notifier = ref.read(
                          observacionesProvider(widget.animalUuid).notifier,
                        );
                        await notifier.guardar();
                      },
                    ),
                    // TAB 2: HISTORIAL
                    _TabHistorial(
                      eventos: animalDetail.eventos,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// TAB 1: INFORMACIÓN
// ============================================================================

class _TabInformacion extends ConsumerWidget {
  final dynamic animalDetail;
  final ObservacionesState observacionesState;
  final VoidCallback onGuardarObservaciones;

  const _TabInformacion({
    required this.animalDetail,
    required this.observacionesState,
    required this.onGuardarObservaciones,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Datos Generales
          DatosGeneralesCard(animal: animalDetail.animal),

          // Ubicación
          UbicacionCard(
            ubicacion: animalDetail.ubicacionActual,
            onCambiarUbicacion: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cambiar ubicación - FASE 3'),
                ),
              );
            },
          ),

          // Observaciones
          ObservacionesCard(
            observaciones: observacionesState.observaciones,
            isLoading: observacionesState.isLoading,
            onChanged: (value) {
              ref
                  .read(
                    observacionesProvider(animalDetail.animal.uuid).notifier,
                  )
                  .updateObservaciones(value);
            },
            onEditingComplete: onGuardarObservaciones,
          ),

          // Acciones Rápidas
          AccionesRapidasCard(
            onPesaje: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AnimalPesosScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onMantenimiento: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Registrar Mantenimiento - FASE 4'),
                ),
              );
            },
            onCosto: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AnimalCostosScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onFoto: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tomar Foto - FASE 7')),
              );
            },
            onVacuna: () {
              showDialog(
                context: context,
                builder: (context) => RegistroVacunaDialog(
                  animalUuid: animalDetail.animal.uuid,
                  registradoPor: animalDetail.animal.nombrePersonalizado ??
                      animalDetail.animal.numeroArete,
                ),
              );
            },
            onTratamiento: () {
              showDialog(
                context: context,
                builder: (context) => RegistroTratamientoDialog(
                  animalUuid: animalDetail.animal.uuid,
                  registradoPor: animalDetail.animal.nombrePersonalizado ??
                      animalDetail.animal.numeroArete,
                ),
              );
            },
            onNutricion: () {
              showDialog(
                context: context,
                builder: (context) => RegistroNutricionDialog(
                  animalUuid: animalDetail.animal.uuid,
                  registradoPor: animalDetail.animal.nombrePersonalizado ??
                      animalDetail.animal.numeroArete,
                ),
              );
            },
            onHistorialVacunas: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VacunasHistorialScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onHistorialTratamientos: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TratamientosHistorialScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onHistorialNutricion: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NutricionHistorialScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onHistorialDesparasitaciones: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DesparasitacionesHistorialScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onEmpadre: () {
              showDialog(
                context: context,
                builder: (context) => RegistroEmpadreDialog(
                  animalUuid: animalDetail.animal.uuid,
                  registradoPor: animalDetail.animal.nombrePersonalizado ??
                      animalDetail.animal.numeroArete,
                ),
              );
            },
            onParto: () {
              showDialog(
                context: context,
                builder: (context) => RegistroPartoDialog(
                  animalUuid: animalDetail.animal.uuid,
                  registradoPor: animalDetail.animal.nombrePersonalizado ??
                      animalDetail.animal.numeroArete,
                ),
              );
            },
            onHistorialReproductivo: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ReproductivHistorialScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animalNombre: animalDetail.animal.nombrePersonalizado ??
                        animalDetail.animal.numeroArete,
                  ),
                ),
              );
            },
            onGenerarReporte: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GenerarReportScreen(
                    animalUuid: animalDetail.animal.uuid,
                    animal: animalDetail.animal,
                  ),
                ),
              );
            },
          ),

          // Espaciado final
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

// ============================================================================
// TAB 2: HISTORIAL
// ============================================================================

class _TabHistorial extends StatelessWidget {
  final List<EventoHistorico> eventos;

  const _TabHistorial({required this.eventos});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HistoricoEventosCard(eventos: eventos),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
