/*
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';

class PdfReportScreen extends StatelessWidget {
  const PdfReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Damage Report'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _createAndOpenPdf,
          child: Text('Generate PDF'),
        ),
      ),
    );
  }

  // Function to create the PDF and open it
  Future<void> _createAndOpenPdf() async {
    final pdf = pw.Document();

    // Add the header
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
              children: [
                pw.SizedBox(width: 10),
                pw.Text(
                  'Vehicle Damage Report',
                  style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
                ),
              ],
            ),
            pw.SizedBox(height: 20),
            pw.Text('Registration no: 12545206'),
            pw.Text('Model: Land cruiser'),
            pw.Text('Vehicle year: 2022'),
            pw.Text('Make: Toyota'),
            pw.Text('Owner: Mr. Fahad'),
            pw.Text('Inspected by: Mr.Fahad'),
            pw.SizedBox(height: 20),
            pw.Divider(),
            pw.SizedBox(height: 20),
            pw.Text('Inspection Details', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            // Inspection details table
            _buildInspectionTable(),
            pw.SizedBox(height: 20),
            pw.Text('Page 1/2', textAlign: pw.TextAlign.right),
          ],
        );
      },
    ));

    // Save and open the generated PDF
    final output = await _getOutputFile();
    final file = File(output.path);
    await file.writeAsBytes(await pdf.save());

    // Open the PDF
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PdfViewerScreen(filePath: file.path),
      ),
    );
  }

  // Function to generate the inspection details table
  pw.Widget _buildInspectionTable() {
    return pw.Table.fromTextArray(
      border: pw.TableBorder.all(width: 1),
      headers: ['Part', 'Before Inspection', 'After Inspection'],
      data: [
        ['Front bumper Right', 'Image +2', 'Image +2'],
        ['Rear bumper', 'Image +2', 'Image +2'],
        ['Right Side', 'Image +2', 'Image +2'],
        ['Left Side', 'Image +2', 'Image +2'],
      ],
    );
  }

  // Function to get the logo image as byte data
  Future<ByteData> _getLogoImage() async {
    final ByteData data = await rootBundle.load('assets/images/car_logo.png');
    return data;
  }

  // Function to get the file output location
  Future<File> _getOutputFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/vehicle_damage_report.pdf';
    return File(filePath);
  }
}

class PdfViewerScreen extends StatelessWidget {
  final String filePath;

  const PdfViewerScreen({Key? key, required this.filePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View PDF'),
      ),
      body: PDFView(
        filePath: filePath,
      ),
    );
  }
}
*/
