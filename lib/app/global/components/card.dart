import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JBCard extends StatefulWidget {
  String? title;
  String? count;
  MaterialColor? color;

  JBCard({super.key, this.title, this.count, this.color});

  @override
  State<JBCard> createState() => _DwCardState();
}

class _DwCardState extends State<JBCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.title!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.count!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
