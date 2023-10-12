import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/text.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/modules/form09601/Form09601.controller.dart';
import 'package:mobile/app/routes/app_pages.dart';

class JBCardItem {
  final String? title;
  final IconData? icon;
  final String? router;

  JBCardItem({
    required this.title,
    this.icon,
    this.router,
  });
}

class Form09601Page extends GetView<Form09601Controller> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Form09601Page({super.key}) {
    controller.onInit();
  }

  @override
  Widget build(BuildContext context) {
    List<JBCardItem> cards = getCards();
    return Scaffold(
      appBar: AppBar(
        title: const JBText(text: "JB Gestão"),
      ),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      key: _scaffoldKey,
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () => Get.toNamed(cards[i].router!),
          child: Card(
            margin: EdgeInsetsGeometry.lerp(
                const EdgeInsets.all(2), const EdgeInsets.all(2.3), 10),
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Icon(
                        cards[i].icon,
                        size: 60,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                    Center(
                      child: Text(
                        cards[i].title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  getCards() {
    List<JBCardItem> itens = [];
    itens.add(
      JBCardItem(
        title: "Recibos pagamento",
        icon: Icons.device_thermostat_sharp,
        router: AppRoutes.recibos,
      ),
    );

    itens.add(
      JBCardItem(
        title: "Informe rendimentos",
        icon: Icons.cloud_circle_outlined,
        router: AppRoutes.informes,
      ),
    );

    itens.add(
      JBCardItem(
          title: "Férias",
          icon: Icons.warning_amber_rounded,
          router: AppRoutes.ferias),
    );

    itens.add(
      JBCardItem(
        title: "Ponto",
        icon: Icons.pending_actions_sharp,
        router: AppRoutes.ponto,
      ),
    );
    return itens;
  }
}
