import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mobile/app/modules/initial/init.binding.dart';
import 'package:mobile/app/routes/app_pages.dart';
import 'package:mobile/app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JB Gestão mobile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromARGB(255, 7, 96, 184),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 59, 71, 180),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(255, 8, 115, 202),
        ),
      ),
      initialRoute: AppRoutes.carregamento,
      initialBinding: InitBinding(),
      //home: InitialPage(),
      getPages: AppPages.pages,
    ),
  );
}
