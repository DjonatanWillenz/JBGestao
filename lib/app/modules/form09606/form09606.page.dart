import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/modules/form09606/form09606.controller.dart';

class Form09606Page extends GetView<Form09606Controller> {
  const Form09606Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Agendamentos",
      onPesquisa: controller.buscarListaAgendamentos,
    );
  }
}
