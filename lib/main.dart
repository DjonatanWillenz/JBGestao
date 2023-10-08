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
      title: 'JB Mobile',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(119, 201, 235, 0),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromARGB(255, 69, 69, 207),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 59, 71, 180),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
        ),
      ),
      initialRoute: AppRoutes.initial,
      initialBinding: InitBinding(),
      //home: InitialPage(),
      getPages: AppPages.pages,
    ),
  );
}
