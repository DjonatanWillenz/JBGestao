import 'package:get/get.dart';
import 'package:mobile/app/modules/form09601/Form09601.controller.dart';

class Form09601Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form09601Controller());
  }
}
