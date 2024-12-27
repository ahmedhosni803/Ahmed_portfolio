import 'package:flutter/material.dart';
import 'package:internet_file/internet_file.dart';
import 'package:pdfx/pdfx.dart';
import 'package:portfolio/core/const/app_const.dart';
import "dart:html" as html;

import '../../../../core/theme/app_colors.dart';

class MyPdfView extends StatefulWidget {
  const MyPdfView({super.key});

  @override
  State<MyPdfView> createState() => _MyPdfViewState();

  static void downLoadCV() {
    const url = AppConstants.cv;
    html.AnchorElement(href: url)
      ..setAttribute("download", "amr mustafa flutter developer.pdf")
      ..click();
  }
}

class _MyPdfViewState extends State<MyPdfView> {
  final PdfController pdfController = PdfController(
    document: PdfDocument.openData(
      InternetFile.get(
        AppConstants.cv,
      ),
    ),
    viewportFraction: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.darkBlue,
        onPressed: MyPdfView.downLoadCV,
        child: const Icon(
          Icons.download,
          color: Colors.white,
        ),
      ),
      body: PdfView(

        pageSnapping: false,
        controller: pdfController,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
