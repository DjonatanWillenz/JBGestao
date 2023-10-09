import 'package:get/get.dart';
import 'package:mobile/app/data/providers/user.provider.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/modules/initial/init.controller.dart';
import 'package:mobile/app/modules/user/auth/auth.controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UserApiClient());
    Get.lazyPut(() => UserRepository());
  }
}
