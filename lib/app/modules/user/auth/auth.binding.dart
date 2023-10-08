import 'package:get/get.dart';
import 'package:mobile/app/data/providers/user.provider.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/modules/user/auth/auth.controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => UserApiClient());
  }
}
