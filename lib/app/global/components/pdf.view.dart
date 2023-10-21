import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class JBPdfView extends StatelessWidget {
  const JBPdfView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: PDFView());
  }
}
