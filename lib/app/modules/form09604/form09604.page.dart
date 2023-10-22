import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/scaffold.list.dart';
import 'package:mobile/app/modules/form09604/form09604.controller.dart';

class Form09604Page extends GetView<Form09604Controller> {
  const Form09604Page({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldList(
      title: "Férias",
      onPesquisa: controller.onPesquisa,
    );
  }
}
