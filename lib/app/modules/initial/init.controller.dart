import 'package:get/get.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitController extends GetxController {
  UserRepository? userRepository = Get.find<UserRepository>();
  String? email;
  String? password;

  bool? ehPrimeiroLogin;

  auth() async {
    ehPrimeiroLogin = await _findDataUserMemory();

    if (ehPrimeiroLogin!) {
      System.getInstance()
          .setUser(await userRepository?.auth(email!, password!));
      if (System.getInstance().getUser() != null) {
        Get.offAndToNamed(AppRoutes.home);
      }
    }
  }

  Future<bool> _findDataUserMemory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? '';
    password = prefs.getString('password') ?? '';
    return (email != '') && (password != '');
  }
}
