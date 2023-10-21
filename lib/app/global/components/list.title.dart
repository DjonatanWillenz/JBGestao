import 'package:flutter/material.dart';
import 'package:mobile/app/global/components/button.item.dart';

class JBListTile extends StatefulWidget {
  final String? title;
  final String? leading;
  final String? subtitle;
  final List<JBButtonGrid>? buttons;

  const JBListTile({
    super.key,
    this.title,
    this.leading,
    this.subtitle,
    this.buttons,
  });

  @override
  _JBListTileState createState() => _JBListTileState();
}

class _JBListTileState extends State<JBListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title!),
      subtitle: Text(widget.subtitle!),
      trailing: const Row(
        children: [],
      ),
    );
  }
}
