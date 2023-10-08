import 'package:flutter/material.dart';

class DwTextClick extends StatelessWidget {
  final String? lbl;
  final double? fontSize;
  final Color? cor;
  final Function? fun;

  const DwTextClick({super.key, this.lbl, this.fontSize, this.cor, this.fun});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => fun!(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            lbl!,
            style: TextStyle(
              fontSize: fontSize,
              color: cor,
            ),
          ),
        ),
      ),
    );
  }
}
