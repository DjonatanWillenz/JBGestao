import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/text.dart';

// ignore: must_be_immutable
class JBCard extends StatelessWidget {
  String? descricao;
  MaterialColor? color;
  IconData? icon;
  String? rota;

  JBCard({super.key, this.descricao, this.color, this.icon, this.rota});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(rota!),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeData().cardTheme.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(height: 8),
            JBText(
              text: descricao,
              fontSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
