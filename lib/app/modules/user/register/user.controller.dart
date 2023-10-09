import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/user.model.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/routes/app_pages.dart';

class UserRegisterController extends GetxController {
  final repositoty = Get.find<UserRepository>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  create() async {
    if (formKey.currentState!.validate()) {
      if (password.text == confirmPassword.text) {
        UserSession user = UserSession();
        user.setName(name.text);
        user.setEmail(email.text);
        user.setPassword(password.text);

        try {
          UserSession? newUsuario = await repositoty.create(user);
          _realizarLoginAposConcluirCadastro(newUsuario!);
        } catch (e) {
          Get.snackbar("Erro:", e.toString());
        } // ignore: unnecessary_null_comparison
      } else {
        Get.snackbar("Erro:", 'As senha não correspondem!');
      }
    }
  }

  _realizarLoginAposConcluirCadastro(UserSession user) {
    Get.snackbar('Sucesso!!', 'Seu cadastro foi realizado com sucesso!!');
    System.getInstance().setUser(user);
    Get.offAndToNamed(AppRoutes.home);
  }

  validarCampoConfirmarSenha() {
    if (password.text != confirmPassword.text) {
      return "As senha não correspondem!";
    }
  }
}
