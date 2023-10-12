import 'package:get/get.dart';
import 'package:mobile/app/modules/form09604/form09604.controller.dart';

class Form09604Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09604Controller());
  }
}
