import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/repository/user.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';
import 'package:mobile/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final repositoty = Get.find<UserRepository>();
  final formKey = GlobalKey<FormState>();

  TextEditingController email =
      TextEditingController(text: "isabelakaefer@jbsoft.com.br");
  TextEditingController senha = TextEditingController(text: "I88500310!i");

  @override
  void onClose() {
    email.dispose();
    senha.dispose();
    super.onClose();
  }

  validate() {
    if ((email.text != '') && (senha.text != '')) {
      repositoty.auth(email.text, senha.text).then((value) {
        if (value != null) {
          AppSession.getInstancia().setUsuario(value);
          _saveDataAuthMemory(value, senha.text);
          Get.offAndToNamed(AppRoutes.paginaInicial);
        } else {
          Get.snackbar('Erro:',
              'Email ou senha incorreto(s), verifique e tente novamente');
        }
      }).catchError((err) {
        Get.snackbar('Erro:',
            'Email ou senha incorreto(s), verifique e tente novamente');
      });
    }
  }

  _saveDataAuthMemory(usuario, senha) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', usuario.getEmail());
    prefs.setString('senha', senha);
    prefs.setString('token', usuario.getToken());
  }

  sendmail() {
    Get.defaultDialog(
      title: 'Recuperar senha',
      middleText:
          'Deseja enviar um e-mail para verificação de dados do usuário?',
      textConfirm: 'Enviar',
      textCancel: 'Cancelar',
      backgroundColor: Colors.green[100],
      buttonColor: Colors.green,
      barrierDismissible: false,
      onCancel: () => Get.back(),
      onConfirm: () => _sendmail(),
    );
  }

  _sendmail() async {}
}
