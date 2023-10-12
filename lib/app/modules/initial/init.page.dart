import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mobile/app/modules/user/auth/auth.page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/modules/initial/init.controller.dart';

class InitPage extends GetView<InitController> {
  InitPage({super.key}) {
    controller.auth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData().primaryColor,
      body: Stack(
        children: <Widget>[
          AnimatedSplashScreen(
            animationDuration: const Duration(seconds: 1),
            splash: 'assets/icon.png',
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.leftToRight,
            nextScreen: const AuthPage(),
          ),
        ],
      ),
    );
  }
}
