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
      appBar: AppBar(
        title: const JBText(text: "JB Gestão"),
      ),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      key: _scaffoldKey,
      body: Column(
        children: [
          JBCard(
            descricao: "Recibos pagamento",
            icon: Icons.device_thermostat_sharp,
            rota: AppRoutes.recibos,
          ),
          JBCard(
            descricao: "Informe rendimentos",
            icon: Icons.cloud_circle_outlined,
            rota: AppRoutes.informes,
          ),
          JBCard(
              descricao: "Férias",
              icon: Icons.warning_amber_rounded,
              rota: AppRoutes.ferias),
          JBCard(
            descricao: "Ponto",
            icon: Icons.pending_actions_sharp,
            rota: AppRoutes.ponto,
          ),
        ],
      ),
    );
  }
}
