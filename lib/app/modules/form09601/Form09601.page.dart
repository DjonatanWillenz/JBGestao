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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(200))),
          child: Column(
            children: [
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  JBCard(
                    descricao: "Recibos",
                    icon: Icons.device_thermostat_sharp,
                    rota: AppRoutes.recibos,
                  ),
                  JBCard(
                    descricao: "Informe",
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
            ],
          ),
        ),
      ),
    );
  }
}
