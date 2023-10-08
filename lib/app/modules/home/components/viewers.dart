import 'package:flutter/material.dart';
import 'package:mobile/app/global/constants/constants.dart';

class Viewers extends StatelessWidget {
  const Viewers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Viewers',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
