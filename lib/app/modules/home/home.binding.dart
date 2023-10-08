import 'package:get/get.dart';
import 'package:mobile/app/data/providers/installation.configuration.provider.dart';
import 'package:mobile/app/data/providers/notification.provider.dart';
import 'package:mobile/app/data/repository/Installation.configuration.repository.dart';
import 'package:mobile/app/data/repository/notification.repository.dart';
import 'package:mobile/app/data/repository/permission.repository.dart';
import 'package:mobile/app/modules/home/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => PermissionRepository());
    Get.lazyPut(() => NotificationRepository());
    Get.lazyPut(() => NotificationApiClient());
    Get.lazyPut(() => InstallationConfigurationApiClient());
    Get.lazyPut(() => InstallationConfigurationRepository());
  }
}
