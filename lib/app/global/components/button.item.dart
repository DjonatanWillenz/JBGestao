import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/icon.button.dart';

enum ActionType { deletar, visualizar }

class JBButtonGrid extends StatefulWidget {
  final Function? onPress;
  final ActionType? action;

  const JBButtonGrid({
    super.key,
    this.onPress,
    this.action,
  });

  @override
  State<JBButtonGrid> createState() => _JBButtonGridState();
}

class _JBButtonGridState extends State<JBButtonGrid> {
  @override
  Widget build(BuildContext context) {
    return JBIconButton(
      icon: getIcon(),
      sizeIcon: 25,
      corIcon: Colors.red,
      onPressed: () => widget.onPress,
    );
  }

  getIcon() {
    switch (widget.action) {
      case ActionType.deletar:
        {
          return const Icon(Icons.delete_forever);
        }
      case ActionType.visualizar:
        {
          return const Icon(Icons.delete_forever);
        }
      default:
        {}
    }
  }

  updateList() {
    setState(() {
      Navigator.of(context).pop();
      if (widget.onPress!()) {
        Get.snackbar("Registro deletado com sucesso!!", "");
      } else {
        Get.snackbar("Registro não deletado!!", "");
      }
      Get.reload();
    });
  }

  // deletarRegistro() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         clipBehavior: Clip.none,
  //         title: const Text("Alerta"),
  //         content: Text(
  //             'Confirmar a exclusão do registro "${widget.title.toString()}"'),
  //         actions: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               TextButton.icon(
  //                   onPressed: updateList(),
  //                   icon: const Icon(Icons.delete_forever_outlined),
  //                   label: const JBText(text: 'Confirmar')),
  //               TextButton.icon(
  //                 onPressed: () => Navigator.of(context).pop(),
  //                 icon: const Icon(Icons.exit_to_app_rounded),
  //                 label: const JBText(text: 'Cancelar'),
  //               )
  //             ],
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
