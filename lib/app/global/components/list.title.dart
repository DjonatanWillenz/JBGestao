import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/button.item.dart';

class JBListTile extends StatelessWidget {
  final String? title;
  final String? leading;
  final String? subtitle;
  final List<JBButtonGrid>? buttons;

  const JBListTile({
    super.key,
    required this.title,
    this.leading,
    required this.subtitle,
    this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("teste", style: TextStyle(fontSize: 12)),
      //subtitle: Text(subtitle!),
      trailing: Row(
        children: [],
      ),
    );
  }
}
