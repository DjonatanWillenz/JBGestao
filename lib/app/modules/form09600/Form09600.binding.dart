import 'package:get/get.dart';
import 'package:mobile/app/modules/form09600/Form09600.controller.dart';

class Form09600Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09600Controller());
  }
}
