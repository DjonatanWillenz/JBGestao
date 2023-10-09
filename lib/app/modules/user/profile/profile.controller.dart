import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/repository/user.repository.dart';

class ProfileController extends GetxController {
  final repositoty = Get.find<UserRepository>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();
}
