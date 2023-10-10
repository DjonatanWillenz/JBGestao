import 'package:get/get.dart';
import 'package:mobile/app/modules/form09602/form09602.controller.dart';

class Form09602Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09602Controller());
  }
}
