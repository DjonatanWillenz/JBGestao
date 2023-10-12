import 'package:get/get.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitController extends GetxController {
  UserRepository? userRepository = Get.find<UserRepository>();
  String? email;
  String? senha;

  bool? ehPrimeiroLogin;

  auth() async {
    ehPrimeiroLogin = await _findDataUserMemory();

    if (ehPrimeiroLogin!) {
      AppSession.getInstancia()
          .setUsuario(await userRepository?.auth(email!, senha!));
      if (AppSession.getInstancia().getUsuario() != null) {
        Get.offAndToNamed(AppRoutes.home);
      }
    }
  }

  Future<bool> _findDataUserMemory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? '';
    senha = prefs.getString('senha') ?? '';
    return (email != '') && (senha != '');
  }
}
