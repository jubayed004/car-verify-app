import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class VehicleDamageReportDownloadScreen extends StatelessWidget {
  VehicleDamageReportDownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vehicle Damage Report')),
      body: Column(
        children: [
          Expanded(
            child: PdfPreview(
              build: (format) => generatePDF(), // ✅ Generate the PDF
            ),
          ),
        ],
      ),
    );
  }

  // Load image from assets
  Future<List<pw.ImageProvider>> _loadImages() async {

    // Load images asynchronously from the assets
    final ByteData data1 = await rootBundle.load('assets/images/fontbamper.png');
    final List<int> bytes1 = data1.buffer.asUint8List();
    final img1 = pw.MemoryImage(Uint8List.fromList(bytes1));

    final ByteData data2 = await rootBundle.load('assets/images/disci.png');
    final List<int> bytes2 = data2.buffer.asUint8List();
    final img2 = pw.MemoryImage(Uint8List.fromList(bytes2));

    final ByteData data3 = await rootBundle.load('assets/images/carverifygreenlogo.png');
    final List<int> bytes3 = data3.buffer.asUint8List();
    final img3 = pw.MemoryImage(Uint8List.fromList(bytes3));

    return [img1, img2, img3]; // Return a list of images
  }

  final PdfColor blue = PdfColor.fromInt(0xff0077CC); // ✅ Blue Header
  final PdfColor appColor = PdfColor.fromInt(0xff0077CC); // ✅ Blue Header
  final PdfColor containerColor = PdfColor.fromInt(0xffE5F4FF);
  final PdfColor textColor = PdfColor.fromInt(0xff7A7A7A);
  final PdfColor n2 = PdfColor.fromInt(0xff6F6F6F);

  /// ✅ Generates the static PDF File with structured information
  Future<Uint8List> generatePDF() async {
    final pdf = pw.Document();

    final PdfPageFormat pageFormat = PdfPageFormat.a4;

    // Load images asynchronously
    final images = await _loadImages(); // List of images



    // Add pages with vehicle details table
    pdf.addPage(
      pw.MultiPage(
        margin: pw.EdgeInsets.only(top: 6,left: 2),
        pageFormat: pageFormat,
        build: (pw.Context context) => [
          pw.Column(
              children: [
                pw.Container(
                    padding: pw.EdgeInsets.only(left: 20,right: 20),
                    color: containerColor,
                    child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Image(images[2], width: 90,),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Row(
                                    children: [
                                      pw.Text("Report Id :",style: pw.TextStyle(color: n2,fontSize: 10          )),
                                      pw.SizedBox(width: 4),
                                      pw.Text("12355000",style: pw.TextStyle(color: n2,fontSize: 10)),
                                    ]
                                ),
                                pw.SizedBox(height: 2),
                                pw.Row(
                                    children: [
                                      pw.Text("Date:",style: pw.TextStyle(color: n2,fontSize: 10)),
                                      pw.SizedBox(width: 4),
                                      pw.Text("25/05/2025",style: pw.TextStyle(color: n2,fontSize: 10)),

                                    ]
                                )
                              ]
                          )
                        ]
                    )
                ),
                pw.SizedBox(height: 24),
                pw.Center(
                  child: pw.Text(
                    'Vehicle Damage Report',
                    style: pw.TextStyle(
                      fontSize: 20,
                      fontWeight: pw.FontWeight.bold,
                      color: blue,
                    ),
                  ),
                ),
                pw.SizedBox(height: 24),
                pw.Padding(padding: pw.EdgeInsets.only(left: 36,right: 36),
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Registration no : ',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                '12545206',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: blue,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 6),
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Model : ',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                'Land cruiser',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 6),
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Vehicle year : ',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                '2022',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 6),
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Make :',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                'Toyota',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 6),
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Owner :',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                'Mr. Jubayed',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 6),
                        pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                'Inspected by :',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                'Mr. Jubayed',
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.normal,
                                  color: blue,
                                ),
                              ),
                            ]),
                        pw.SizedBox(height: 24),
                        pw.Text(
                          "Inspection Details",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                              fontSize: 14),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Container(
                            padding: pw.EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: pw.BoxDecoration(
                                borderRadius: pw.BorderRadius.circular(5), color: appColor),
                            child: pw.Row(
                              // mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                                children: [
                                  pw.Expanded(
                                    child: pw.Text("Part",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                  ),
                                  pw.Expanded(
                                    child: pw.Text("Before inspection",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                  ),
                                  pw.Text("After inspection",
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.white,
                                          fontSize: 14)),
                                ])),
                        pw.SizedBox(height: 8),

                        // Inspection Images
                        pw.Column(
                          children: List.generate(5, (int index) {
                            return pw.Padding(
                                padding: pw.EdgeInsets.only(bottom: 6),
                                child: pw.Row(
                                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text("Before inspection",
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black,
                                              fontSize: 16)),
                                      pw.Stack(
                                        alignment: pw.Alignment.center,
                                        children: [
                                          pw.Center(
                                            child: pw.ClipRRect(
                                                child: pw.Image(images[0],
                                                    width: 80, height: 80),
                                                horizontalRadius: 10,
                                                verticalRadius: 10),
                                          ),
                                          pw.Text("+2 image",
                                              style: pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  color: PdfColors.white,
                                                  fontSize: 14))
                                        ],
                                      ),
                                      pw.Stack(
                                        alignment: pw.Alignment.center,
                                        children: [
                                          pw.Center(
                                            child: pw.ClipRRect(
                                                child: pw.Image(images[0],
                                                    width: 80, height: 80),
                                                horizontalRadius: 10,
                                                verticalRadius: 10),
                                          ),
                                          pw.Text("+2 image",
                                              style: pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  color: PdfColors.white,
                                                  fontSize: 14))
                                        ],
                                      ),
                                    ]));
                          }),
                        ),
                      ]
                  ),
                ),


                pw.Padding(padding: pw.EdgeInsets.only(left: 36,right: 36),
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [

                          pw.SizedBox(height: 24),
                          pw.Text(
                            " Detailed Damage Report",
                            style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black,
                                fontSize: 14),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Container(
                              padding: pw.EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: pw.BoxDecoration(
                                  borderRadius: pw.BorderRadius.circular(5), color: appColor),
                              child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Text("Part",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                    pw.Text("Before Condition",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                    pw.Text("After Condition",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                    pw.Text("Damage Image",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.white,
                                            fontSize: 14)),
                                  ])),
                          pw.SizedBox(height: 8),
                          // Inspection Images
                          pw.Column(
                            children: List.generate(6, (int index) {
                              return pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 16),
                                  child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text("Front Bumper",
                                            style: pw.TextStyle(
                                                fontWeight: pw.FontWeight.normal,
                                                color: PdfColors.black,
                                                fontSize: 14)),
                                        pw.Text("No Damage",
                                            style: pw.TextStyle(
                                                fontWeight: pw.FontWeight.normal,
                                                color: PdfColors.black,
                                                fontSize: 14)),
                                        pw.Text("Scratched & Dented",
                                            style: pw.TextStyle(
                                                fontWeight: pw.FontWeight.normal,
                                                color: PdfColors.black,
                                                fontSize: 14)),
                                        pw.Stack(
                                          alignment: pw.Alignment.center,
                                          children: [
                                            pw.Center(
                                              child: pw.ClipRRect(
                                                  child: pw.Image(images[0],
                                                      width: 54, height: 54),
                                                  horizontalRadius: 10,
                                                  verticalRadius: 10),
                                            ),
                                            pw.Text("+2 image",
                                                style: pw.TextStyle(
                                                    fontWeight: pw.FontWeight.normal,
                                                    color: PdfColors.white,
                                                    fontSize: 12))
                                          ],
                                        ),
                                      ]));
                            }),
                          ),
                          pw.SizedBox(height: 80),
                          pw.Container(
                              padding: pw.EdgeInsets.all(10),
                              decoration: pw.BoxDecoration(
                                  borderRadius: pw.BorderRadius.circular(4),
                                  color: containerColor),
                              child: pw.Row(children: [
                                pw.Text("Disclaimer",
                                    style: pw.TextStyle(
                                        fontSize: 12,
                                        fontWeight: pw.FontWeight.bold,
                                        color: appColor)),
                                pw.SizedBox(width: 8.h),
                                pw.Image(images[1], width: 14.w, height: 14.h   ),
                                pw.SizedBox(height: 6.h),
                              ])),
                          pw.SizedBox(height: 10.w),
                          pw.Text(
                              "This damage report is based on the vehicle inspection at the time of recording. While efforts are made to ensure accuracy, CarVerify is not liable for errors or disputes regarding the information presented. The vehicle owner or relevant parties are responsible for verifying the reported damages.",
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.normal,
                                  fontSize: 12.sp,
                                  color: textColor)
                          )
                        ]
                    )
                )
              ]),
        ],
      ),
    );

    return pdf.save();
  }
}
