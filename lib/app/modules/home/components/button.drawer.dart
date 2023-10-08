import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  final String? title, svgSrc;
  final Function? press;

  const DrawerListTile({super.key, this.title, this.svgSrc, this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeData().buttonTheme.colorScheme?.primary,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1),
        ),
        child: ListTile(
          onTap: () => press,
          horizontalTitleGap: 0.0,
          hoverColor: Colors.amber,
          leading: SvgPicture.asset(
            svgSrc!,
            height: 24,
          ),
          title: Text(
            title!,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
