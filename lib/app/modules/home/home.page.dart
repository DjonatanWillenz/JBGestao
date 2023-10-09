import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/modules/home/components/cards.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/modules/home/home.controller.dart';

class HomePage extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  HomePage({super.key}) {
    controller.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const JBText(lbl: "JB Gestão"),
      ),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              JBDashboardCard(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
