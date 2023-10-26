import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class JBCard extends StatelessWidget {
  MaterialColor? color;
  String? urlIcon;
  String? rota;

  JBCard({super.key, this.color, this.urlIcon, this.rota});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(rota!),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.circular(10),
          //     boxShadow: [
          //       BoxShadow(
          //         offset: const Offset(0, 2),
          //         color: Theme.of(context).primaryColor.withOpacity(.9),
          //         spreadRadius: 3,
          //         blurRadius: 0.5,
          //       )
          //     ]
        ),
        child: Image.asset(
          urlIcon!,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
