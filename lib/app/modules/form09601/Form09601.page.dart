import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/card.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/global/singleton/system.dart';
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
        elevation: 0,
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
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    "Olá ${AppSession.getInstancia().getUsuario().getPessoa().getNome()}",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [...cards()],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  List<JBCard> cards() {
    return [
      JBCard(
        rota: AppRoutes.recibos,
        urlIcon: "assets/recibo_pagamento.png",
      ),
      JBCard(
        rota: AppRoutes.informes,
        urlIcon: "",
      ),
      JBCard(
        rota: AppRoutes.ferias,
        urlIcon: "",
      ),
      JBCard(
        rota: AppRoutes.ponto,
        urlIcon: "",
      ),
    ];
  }
}
