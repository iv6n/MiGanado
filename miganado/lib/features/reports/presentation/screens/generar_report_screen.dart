import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miganado/features/animals/domain/entities/animal.dart';
import 'package:miganado/features/reports/services/report_service.dart';
import 'package:miganado/data/database/isar_database.dart';

class GenerarReportScreen extends ConsumerStatefulWidget {
  final String animalUuid;
  final Animal animal;

  const GenerarReportScreen({
    required this.animalUuid,
    required this.animal,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<GenerarReportScreen> createState() =>
      _GenerarReportScreenState();
}

class _GenerarReportScreenState extends ConsumerState<GenerarReportScreen> {
  bool isLoading = false;

  Future<void> _generarReporte(String tipo) async {
    setState(() => isLoading = true);

    try {
      final db = MiGanadoDatabase();

      // Obtener datos
      final vacunas = await db.getVacunasByAnimal(widget.animalUuid);
      final tratamientos = await db.getTratamientosByAnimal(widget.animalUuid);
      final nutricion = await db.getNutricionByAnimal(widget.animalUuid);
      final reproductivo = await db.getReproductivoByAnimal(widget.animalUuid);

      final reportData = ReportData(
        animal: widget.animal,
        vacunas: vacunas,
        tratamientos: tratamientos,
        nutricion: nutricion,
        reproductivo: reproductivo,
      );

      String contenido = '';

      if (tipo == 'csv') {
        contenido = ReportService.generateCSV(reportData);
      } else if (tipo == 'txt') {
        contenido = ReportService.generatePlainText(reportData);
      } else if (tipo == 'resumen') {
        contenido = ReportService.generateCostSummary(reportData);
      }

      // Compartir o copiar al portapapeles
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Reporte Generado'),
          content: SizedBox(
            height: 300,
            child: SingleChildScrollView(
              child: Text(contenido, style: TextStyle(fontSize: 11)),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cerrar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Copiar al portapapeles
                // Para simplificar, solo mostramos el mensaje
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Reporte preparado para compartir')),
                );
              },
              child: Text('Aceptar'),
            ),
          ],
        ),
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Reporte $tipo generado exitosamente')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generar Reporte - ${widget.animal.numeroArete}'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.description, size: 48, color: Colors.blue),
                    SizedBox(height: 16),
                    Text(
                      'Generar Reporte de Salud',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Descarga un reporte completo con el historial de vacunas, tratamientos, nutrición y datos reproductivos.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Selecciona el formato:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _ReporteTile(
              titulo: 'Reporte Completo (Texto)',
              descripcion: 'Formato legible con toda la información',
              icono: Icons.file_present,
              color: Colors.blue,
              onTap: isLoading ? null : () => _generarReporte('txt'),
            ),
            SizedBox(height: 12),
            _ReporteTile(
              titulo: 'Reporte CSV',
              descripcion: 'Para importar a hojas de cálculo',
              icono: Icons.table_chart,
              color: Colors.green,
              onTap: isLoading ? null : () => _generarReporte('csv'),
            ),
            SizedBox(height: 12),
            _ReporteTile(
              titulo: 'Resumen de Costos',
              descripcion: 'Resumen financiero del animal',
              icono: Icons.attach_money,
              color: Colors.orange,
              onTap: isLoading ? null : () => _generarReporte('resumen'),
            ),
            SizedBox(height: 32),
            if (isLoading)
              Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}

class _ReporteTile extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color color;
  final VoidCallback? onTap;

  const _ReporteTile({
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icono, color: color, size: 32),
        title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(descripcion),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
        enabled: onTap != null,
      ),
    );
  }
}
