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
      title: 'JB mobile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[50],
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.blueAccent,
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
