import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/modules/form09602/form09602.controller.dart';

class Form09602Page extends GetView<Form09602Controller> {
  const Form09602Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Recibos de pagamentos",
      onPesquisa: controller.onPesquisa,
    );
  }
}
