import 'package:get/get.dart';
import 'package:mobile/app/modules/form09606/form09606.controller.dart';

class Form09606Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09606Controller());
  }
}
