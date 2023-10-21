import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile/app/modules/form09602/teste.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class JBPdfView extends StatelessWidget {
  const JBPdfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FutureBuilder<String>(
          future: renderPdfFromBase64(),
          builder: (ctx, snp) {
            if (snp.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snp.hasError) {
              return Text("Erro: ${snp.error}");
            } else {
              return PdfViewer.openFile(snp.data!);
            }
          },
        ),
      ),
    );
  }

  Future<String> renderPdfFromBase64() async {
    final List<int> pdfData = base64.decode(pdfBase64);

    final directory = (await getApplicationDocumentsDirectory()).path;
    final filePath = '$directory/temp.pdf';

    final File file = File(filePath);
    await file.writeAsBytes(pdfData);

    return file.path;
  }
}
