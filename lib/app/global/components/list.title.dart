import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/icon.button.dart';
import 'package:mobile/app/global/components/text.dart';

class JBListTile extends StatefulWidget {
  final String? title;
  final String? leading;
  final String? subtitle;
  final Function? onDelete;
  final bool? visualizado;

  const JBListTile({
    super.key,
    this.title,
    this.leading,
    this.subtitle,
    this.onDelete,
    this.visualizado,
  });

  @override
  _JBListTileState createState() => _JBListTileState();
}

class _JBListTileState extends State<JBListTile> {
  updateList() {
    setState(() {
      Navigator.of(context).pop();
      if (widget.onDelete!()) {
        Get.snackbar("Registro deletado com sucesso!!", "");
      } else {
        Get.snackbar("Registro não deletado!!", "");
      }
      Get.reload();
    });
  }

  deletarRegistro() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          clipBehavior: Clip.none,
          title: const Text("Alerta"),
          content: Text(
              'Confirmar a exclusão do registro "${widget.title.toString()}"'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton.icon(
                    onPressed: updateList(),
                    icon: const Icon(Icons.delete_forever_outlined),
                    label: const JBText(lbl: 'Confirmar')),
                TextButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.exit_to_app_rounded),
                  label: const JBText(lbl: 'Cancelar'),
                )
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title!),
      subtitle: Text(widget.subtitle!),
      trailing: JBIconButton(
        icon: Icons.delete_forever,
        sizeIcon: 25,
        corIcon: Colors.red,
        onPressed: () => deletarRegistro(),
      ),
    );
  }
}
