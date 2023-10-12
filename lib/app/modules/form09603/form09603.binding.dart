import 'package:get/get.dart';
import 'package:mobile/app/modules/form09603/form09603.controller.dart';

class Form09603Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09603Controller());
  }
}
