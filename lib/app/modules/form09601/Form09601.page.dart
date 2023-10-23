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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            JBText(text: "JB Gestão"),
            Icon(Icons.notifications),
          ],
        ),
      ),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisSpacing: 40,
          mainAxisSpacing: 30,
          crossAxisCount: 2,
          children: [...cards()],
        ),
      ),
    );
  }

  List<JBCard> cards() {
    return [
      JBCard(
        rota: AppRoutes.recibos,
        icon: Icons.attach_money,
      ),
      JBCard(
        rota: AppRoutes.informes,
        icon: Icons.add_card_rounded,
      ),
      JBCard(
        rota: AppRoutes.ferias,
        icon: Icons.free_cancellation_sharp,
      ),
      JBCard(
        rota: AppRoutes.ponto,
        icon: Icons.access_time_rounded,
      ),
    ];
  }
}
