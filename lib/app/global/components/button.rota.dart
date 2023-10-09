import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JBButtonRota extends StatelessWidget {
  final Color? corButton;
  final String? label;
  final Color? labelCor;
  final String? rotaOnPress;
  final bool? isAnimation;
  final IconData? icon;
  final Color? corIcon;

  const JBButtonRota({
    super.key,
    this.corButton,
    this.label,
    this.labelCor,
    this.rotaOnPress,
    this.isAnimation,
    this.icon,
    this.corIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Get.toNamed(rotaOnPress!),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: corButton,
            borderRadius: BorderRadius.circular(
              32,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: corIcon, size: 30),
                const SizedBox(width: 10),
                Text(
                  label!,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: labelCor ?? Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
