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
    return DwScaffoldCrud(
      title: "Cadastrar usuário",
      body: Form(
        key: controller.formKey,
        child: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                const SizedBox(height: 65),
                DwTextFormField(
                    label: "Nome completo:", controll: controller.name),
                DwTextFormField(label: "E-mail:", controll: controller.email),
                DwTextFormField(
                    label: "Senha:",
                    controll: controller.password,
                    isPassword: true),
                DwTextFormField(
                  label: "Confirmar senha:",
                  controll: controller.confirmPassword,
                  isPassword: true,
                  funValidarCampo: controller.validarCampoConfirmarSenha,
                ),
                const SizedBox(height: 20),
                DButton(onTap: () => controller.create(), caption: "Cadastrar"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
