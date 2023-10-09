import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/drawer.dart';
import 'package:mobile/app/modules/user/profile/profile.controller.dart';

class ProfilePage extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      drawer: JBDrawer(scaffoldKey: _scaffoldKey),
      body: const Center(
        child: Text("TESTE"),
      ),
    );
  }
}
