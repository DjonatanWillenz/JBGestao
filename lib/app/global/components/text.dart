import 'package:flutter/material.dart';

class JBText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? cor;
  final FontStyle? fontStyle;

  const JBText({super.key, this.text, this.fontSize, this.cor, this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: cor,
            fontStyle: fontStyle,
          ),
        ),
      ),
    );
  }
}
