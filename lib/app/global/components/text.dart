import 'package:flutter/material.dart';

class JBText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? cor;

  const JBText({super.key, this.text, this.fontSize, this.cor});

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
          ),
        ),
      ),
    );
  }
}
