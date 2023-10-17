import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/card.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/modules/form09601/Form09601.controller.dart';
import 'package:mobile/app/routes/app_pages.dart';

class Form09601Page extends GetView<Form09601Controller> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  Form09601Page({super.key}) {
    controller.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const JBText(text: "JB Gestão"),
        ),
        drawer: JBDrawer(scaffoldKey: _scaffoldKey),
        key: _scaffoldKey,
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            JBCard(
              descricao: "Recibos",
              color: Colors.green,
              rota: AppRoutes.recibos,
              icon: Icons.access_alarms_outlined,
            ),
            JBCard(
              descricao: "Informes",
              color: Colors.green,
              rota: AppRoutes.informes,
              icon: Icons.access_alarms_outlined,
            ),
            JBCard(
              descricao: "Ferias",
              color: Colors.green,
              rota: AppRoutes.ferias,
              icon: Icons.access_alarms_outlined,
            ),
            JBCard(
              descricao: "Ponto",
              color: Colors.green,
              rota: AppRoutes.ponto,
              icon: Icons.access_alarms_outlined,
            ),
          ],
        ));
  }
}
