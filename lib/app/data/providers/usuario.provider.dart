import 'dart:convert';

import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/http.dart';
import 'package:mobile/app/global/singleton/system.dart';

class UsuarioProvider {
  auth(String email, String senha) async {
    try {
      final response = await JBHttp.getInstancia().post(
        '/login',
        {
          "serie": 5000,
          "login": email,
          "senha": senha,
          "chave": AppSession.getInstancia().getChaveCLiente()
        },
      );
      return response.statusCode == 200 ? response.data : null;
    } catch (e) {
      print(e);
    }
  }

  cadastrar(Usuario user) async {
    try {
      final response =
          await JBHttp.getInstancia().post('/auth/register', user.toJson());
      if (response.statusCode == 201) {
        return response.data;
      } else {
        final j = jsonDecode(response.data);
        throw Exception(j["msg"]);
      }
    } catch (e) {}
  }

  getPerfil() async {
    String ulrRequest = "/perfil";
    try {
      var request = await JBHttp.getInstancia().get(ulrRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {
      return null;
    }
  }

  logout() async {
    try {
      final response =
          await JBHttp.getInstancia().post('/logout', <String, dynamic>{});
      return response.statusCode == 201 ? response.data : null;
    } catch (e) {}
  }
}
