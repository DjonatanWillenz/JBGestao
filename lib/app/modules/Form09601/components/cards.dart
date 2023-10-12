import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/constants/constants.dart';
import 'package:mobile/app/global/constants/responsive.dart';
import 'package:mobile/app/modules/Form09601/Form09601.controller.dart';
import 'package:mobile/app/routes/app_pages.dart';

class JBCardItem {
  final String? title;
  final RxString value;
  final Color? color;
  final IconData? icon;
  final String? router;

  JBCardItem({
    required this.title,
    required this.value,
    required this.color,
    this.icon,
    this.router,
  });
}

class JBDashboardCard extends StatefulWidget {
  final Form09601Controller controller;

  const JBDashboardCard({Key? key, required this.controller}) : super(key: key);

  @override
  State<JBDashboardCard> createState() => _JBDashboardCardState();
}

class _JBDashboardCardState extends State<JBDashboardCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: JBGridViewCards(
        controller: widget.controller,
        crossAxisCount: size.width < 650 ? 2 : 4,
        childAspectRatio: size.width < 650 ? 2 : 1.5,
      ),
      tablet: JBGridViewCards(controller: widget.controller),
      desktop: JBGridViewCards(
        childAspectRatio: size.width < 1400 ? 1.5 : 2.1,
        controller: widget.controller,
      ),
    );
  }
}

// ignore: must_be_immutable
class JBGridViewCards extends StatelessWidget {
  Form09601Controller controller;
  List<JBCardItem> itens = [];
  JBGridViewCards({
    Key? key,
    this.crossAxisCount = 1,
    this.childAspectRatio = 1.4,
    required this.controller,
  }) : super(key: key) {
    itens.add(
      JBCardItem(
        title: "Recibos pagamento",
        value: controller.recibos,
        icon: Icons.device_thermostat_sharp,
        color: primaryColor,
        router: AppRoutes.workers,
      ),
    );

    itens.add(
      JBCardItem(
        title: "Informe rendimentos",
        value: controller.informes,
        icon: Icons.cloud_circle_outlined,
        color: purple,
      ),
    );

    itens.add(
      JBCardItem(
        title: "Férias",
        value: controller.ferias,
        icon: Icons.warning_amber_rounded,
        color: orange,
      ),
    );

    itens.add(
      JBCardItem(
      title: "Ponto",
      value: RxString('0'),
      icon: Icons.pending_actions_sharp,
      color: green,
    ));
  }

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itens.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: appPadding,
          mainAxisSpacing: appPadding,
          childAspectRatio: childAspectRatio * 2,
        ),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2,
          ),
          decoration: BoxDecoration(
            color: itens[index].color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () => Get.toNamed(itens[index].router.toString()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Icon(
                    itens[index].icon,
                    size: 60,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                Center(
                  child: Text(
                    itens[index].title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColor,
                      fontSize: Responsive.isDesktop(context) ? 18 : 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "0 ",

                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: Responsive.isDesktop(context) ? 18 : 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " 0",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: Responsive.isDesktop(context) ? 18 : 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " 0",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Responsive.isDesktop(context) ? 18 : 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " 0",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: Responsive.isDesktop(context) ? 18 : 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
