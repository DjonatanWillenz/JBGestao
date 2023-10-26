import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/icon.button.dart';

enum HttpTipo { get, post, put, delete }

enum AcaoTipo { cadastrar, consultar, deletar, visualizar }

class JBButtonGrid extends StatefulWidget {
  final HttpTipo? metodo;
  final AcaoTipo? acao;
  final IconData? icone;
  final String? url;

  const JBButtonGrid({
    super.key,
    this.metodo,
    this.icone,
    this.acao,
    this.url,
  });

  onPressed() {
    switch (metodo) {
      case HttpTipo.get:
        break;
      default:
    }
  }

  IconData getIcon() {
    if (icone != null) {
      return icone!;
    }
    switch (acao) {
      case AcaoTipo.cadastrar:
        return Icons.new_label;
      default:
    }
    return Icons.new_label;
  }

  @override
  State<JBButtonGrid> createState() => _JBButtonGridState();
}

class _JBButtonGridState extends State<JBButtonGrid> {
  @override
  Widget build(BuildContext context) {
    return JBIconButton(
      icon: widget.getIcon(),
      sizeIcon: 25,
      corIcon: Colors.red,
      onPressed: widget.onPressed,
    );
  }
}
