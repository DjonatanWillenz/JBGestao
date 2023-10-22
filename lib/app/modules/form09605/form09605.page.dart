import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/modules/form09605/form09605.controller.dart';

class Form09605Page extends GetView<Form09605Controller> {
  const Form09605Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Ponto",
      onPesquisa: controller.onPesquisa,
    );
  }
}
