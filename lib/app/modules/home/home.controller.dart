import 'package:get/get.dart';
import 'package:mobile/app/data/models/dashboard.model.dart';
import 'package:mobile/app/data/repository/Installation.configuration.repository.dart';
import 'package:mobile/app/data/repository/notification.repository.dart';
import 'package:mobile/app/data/repository/permission.repository.dart';

class HomeController extends GetxController {
  Dashbord? dashboard;
  final permissionsRepository = Get.find<PermissionRepository>();
  final notificationRepository = Get.find<NotificationRepository>();
  final installationConfiguratioRepository =
      Get.find<InstallationConfigurationRepository>();

  RxString ph = RxString("0");
  RxString temperature = RxString("0");
  RxString pendency = RxString("0");
  RxString alert = RxString("0");
  RxBool waterPump = RxBool(false);
  RxBool waterLock = RxBool(false);
  RxBool lighting = RxBool(false);

  HomeController() {}

  updateControles() {}
}
