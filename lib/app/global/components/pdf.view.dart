import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile/app/data/providers/http.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class JBPdfView extends StatelessWidget {
  final String? urlRequest;

  const JBPdfView({super.key, required this.urlRequest});

  requisitarBase64() async {
    var req = await JBHttp().getInstancia().get(urlRequest!);
    if (req.statusCode == 200) {
      return req.data['base64'];
    } else {
      return "";
    }
  }

  Widget montar() {
    final String base = requisitarBase64();
    if (base.isNotEmpty) {
      return SfPdfViewer.memory(
        base64.decode(base),
      );
    } else {
      return const Center(
        child: JBText(
          text: "Não foi possivel gerar o pdf solicitado.",
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: montar()),
    );
  }
}
