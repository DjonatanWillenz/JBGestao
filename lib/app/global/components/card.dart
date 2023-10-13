import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/text.dart';

// ignore: must_be_immutable
class JBCard extends StatelessWidget {
  String? descricao;
  MaterialColor? cor;
  IconData? icon;
  String? rota;

  JBCard({super.key, this.descricao, this.cor, this.icon, this.rota});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(rota!),
      child: Card(
        elevation: 6,
        margin: EdgeInsetsGeometry.lerp(
            const EdgeInsets.all(2), const EdgeInsets.all(2.3), 10),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Icon(
                    icon,
                    size: 60,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                Center(
                  child: JBText(
                    text: descricao,
                    fontSize: 18,
                    cor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
