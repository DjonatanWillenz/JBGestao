import 'package:get/get.dart';
import 'package:mobile/app/modules/workers/workers.controller.dart';

class WorkersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkersController());
  }
}
