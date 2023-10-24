import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/models/usuario.model.dart';
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
        Usuario usuario = Usuario();
        usuario.setNome(nome.text);
        usuario.setEmail(email.text);
        usuario.setSenha(senha.text);

        try {
          Usuario? newUsuario = await repositoty.cadastrar(usuario);
          _realizarLoginAposConcluirCadastro(newUsuario!);
        } catch (e) {
          Get.snackbar("Erro:", e.toString());
        } // ignore: unnecessary_null_comparison
      } else {
        Get.snackbar("Erro:", 'As senha não correspondem!');
      }
    }
  }

  _realizarLoginAposConcluirCadastro(Usuario usuario) {
    Get.snackbar('Sucesso!!', 'Seu cadastro foi realizado com sucesso!!');
    AppSession.getInstancia().setUsuario(usuario);
    Get.offAndToNamed(AppRoutes.paginaInicial);
  }

  validarCampoConfirmarSenha() {
    if (senha.text != confirmarSenha.text) {
      return "As senha não correspondem!";
    }
  }
}
