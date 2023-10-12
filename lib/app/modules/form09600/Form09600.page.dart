import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/modules/form09601/Form09601.controller.dart';

class Form09600Page extends GetView<Form09601Controller> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Form09600Page({super.key}) {
    controller.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const JBText(text: "Configurações"),
      ),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
