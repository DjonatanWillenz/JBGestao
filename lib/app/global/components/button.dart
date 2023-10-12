import 'package:flutter/material.dart';

class JBButton extends StatelessWidget {
  final String? caption;
  final Function()? onTap;

  const JBButton({
    super.key,
    required this.onTap,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 500,
        height: 60,
        // padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            caption!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: AutofillHints.birthday,
            ),
          ),
        ),
      ),
    );
  }
}
