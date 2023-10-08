import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/constants/constants.dart';
import 'package:mobile/app/global/constants/responsive.dart';
import 'package:mobile/app/modules/home/home.controller.dart';

class AnalyticInfo {
  final String? title;
  final RxString value;
  final Color? color;
  final IconData? icon;

  AnalyticInfo({
    required this.title,
    required this.value,
    required this.color,
    this.icon,
  });
}

class AnalyticCards extends StatefulWidget {
  final HomeController controller;

  AnalyticCards({Key? key, required this.controller}) : super(key: key);

  @override
  State<AnalyticCards> createState() => _AnalyticCardsState();
}

class _AnalyticCardsState extends State<AnalyticCards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Responsive(
      mobile: AnalyticInfoCardGridView(
        controller: widget.controller,
        crossAxisCount: size.width < 650 ? 2 : 4,
        childAspectRatio: size.width < 650 ? 2 : 1.5,
      ),
      tablet: AnalyticInfoCardGridView(controller: widget.controller),
      desktop: AnalyticInfoCardGridView(
        childAspectRatio: size.width < 1400 ? 1.5 : 2.1,
        controller: widget.controller,
      ),
    );
  }
}

// ignore: must_be_immutable
class AnalyticInfoCardGridView extends StatelessWidget {
  HomeController controller;
  List<AnalyticInfo> itens = [];
  AnalyticInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.4,
    required this.controller,
  }) : super(key: key) {
    itens.add(AnalyticInfo(
      title: "Recibos de pagamento",
      value: controller.temperature,
      icon: Icons.device_thermostat_sharp,
      color: primaryColor,
    ));

    itens.add(
      AnalyticInfo(
        title: "Informe de rendimentos",
        value: controller.ph,
        icon: Icons.cloud_circle_outlined,
        color: purple,
      ),
    );

    itens.add(
      AnalyticInfo(
        title: "Férias",
        value: controller.alert,
        icon: Icons.warning_amber_rounded,
        color: orange,
      ),
    );

    itens.add(AnalyticInfo(
      title: "Ponto",
      value: controller.pendency,
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
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: appPadding,
          mainAxisSpacing: appPadding,
          childAspectRatio: childAspectRatio,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Obx(
                      () => Text(
                        itens[index].value.value,
                        style: TextStyle(
                          color: textColor,
                          fontSize: Responsive.isDesktop(context) ? 35 : 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Icon(
                      itens[index].icon,
                      size: 60,
                      color: Colors.white.withOpacity(0.4),
                    ),
                  )
                ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
