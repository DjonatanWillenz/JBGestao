import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/modules/form09603/form09603.controller.dart';

class Form09603Page extends GetView<Form09603Controller> {
  const Form09603Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Informes de rendimentos",
      onPesquisa: controller.buscarInformesRendimentos,
    );
  }
}
