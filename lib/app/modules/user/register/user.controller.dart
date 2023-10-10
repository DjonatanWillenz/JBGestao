import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/user.model.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/routes/app_pages.dart';

class UserRegisterController extends GetxController {
  final repositoty = Get.find<UserRepository>();

  TextEditingController nome = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController confirmarSenha = TextEditingController();

  final formKey = GlobalKey<FormState>();

  create() async {
    if (formKey.currentState!.validate()) {
      if (senha.text == confirmarSenha.text) {
        UserSession user = UserSession();
        user.setNome(nome.text);
        user.setEmail(email.text);
        user.setSenha(senha.text);

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
    if (senha.text != confirmarSenha.text) {
      return "As senha não correspondem!";
    }
  }
}
