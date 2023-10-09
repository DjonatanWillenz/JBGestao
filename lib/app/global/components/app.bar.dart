import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/text.dart';

class JBAppBar extends StatelessWidget {
  const JBAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      title: const JBText(lbl: "JB Gestão"),
    );
  }
}
