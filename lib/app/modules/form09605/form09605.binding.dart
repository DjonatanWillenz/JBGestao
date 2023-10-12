import 'package:get/get.dart';
import 'package:mobile/app/modules/form09605/form09605.controller.dart';

class Form09605Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09605Controller());
  }
}
