import 'package:get/get.dart';
import 'package:mobile/app/data/providers/user.provider.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/modules/user/register/user.controller.dart';

class UserRegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRegisterController());
    Get.lazyPut(() => UserRepository());
    Get.lazyPut(() => UserApiClient());
  }
}
