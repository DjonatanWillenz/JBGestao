import 'package:flutter/material.dart';
import 'package:mobile/app/modules/home/components/drawer.dart';

class DxScaffold extends StatelessWidget {
  final Widget body;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DxScaffold({super.key, required this.body, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawer: JBDrawer(scaffoldKey: scaffoldKey),
      body: SafeArea(
        child: body,
      ),
    );
  }
}
