import 'package:get/get.dart';
import 'package:mobile/app/data/repository/notification.repository.dart';
import 'package:mobile/app/data/repository/permission.repository.dart';

class Form09601Controller extends GetxController {
  final permissionsRepository = Get.find<PermissionRepository>();
  final notificationRepository = Get.find<NotificationRepository>();

  RxString recibos = RxString("0");
  RxString informes = RxString("0");
  RxString ferias = RxString("0");
  
  Form09601Controller() {}

  updateControles() {}
}
