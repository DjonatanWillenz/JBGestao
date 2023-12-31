import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/button.dart';
import 'package:mobile/app/global/components/scaffold.crud.dart';
import 'package:mobile/app/global/components/text.form.field.dart';
import 'package:mobile/app/modules/user/register/user.controller.dart';

class UserRegisterPage extends GetView<UserRegisterController> {
  const UserRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JBScaffoldCrud(
      title: "Cadastrar usuário",
      body: Form(
        key: controller.formKey,
        child: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                const SizedBox(height: 65),
                JBTextFormField(
                    label: "Nome completo:", controll: controller.nome),
                JBTextFormField(label: "E-mail:", controll: controller.email),
                JBTextFormField(
                    label: "Senha:",
                    controll: controller.senha,
                    isPassword: true),
                JBTextFormField(
                  label: "Confirmar senha:",
                  controll: controller.confirmarSenha,
                  isPassword: true,
                  funValidarCampo: controller.validarCampoConfirmarSenha,
                ),
                const SizedBox(height: 20),
                JBButton(
                  onTap: () => controller.create(),
                  caption: "Cadastrar",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
