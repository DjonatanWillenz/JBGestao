import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/global/components/button.dart';
import 'package:mobile/app/global/components/text.field.dart';
import 'package:mobile/app/modules/user/auth/auth.controller.dart';
import 'package:mobile/app/routes/app_pages.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 400,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/logo.png',
                  height: 150,
                  width: 300,
                ),

                // username textfield
                JBTextField(
                  controller: controller.email,
                  hintText: 'E-mail',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                JBTextField(
                  controller: controller.senha,
                  hintText: 'Senha de acesso',
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                JBButton(
                  onTap: () => controller.validate(),
                  caption: "Acessar",
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não sou usuário ainda?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.createUser),
                      child: const Text(
                        'Registrar-se',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
