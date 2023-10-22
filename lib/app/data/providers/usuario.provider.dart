import 'dart:convert';

import 'package:mobile/app/data/base_url.dart';
import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/http.dart';

class UsuarioApiClient {
  auth(String email, String senha) async {
    try {
      final response = await JBHttp().getInstancia().post('$baseUrlApp/login',
          {"idempresa": 181801, "username": email, "password": senha});
      return response.statusCode == 200 ? response.data : null;
    } catch (e) {}
  }

  create(Usuario user) async {
    try {
      final response = await JBHttp()
          .getInstancia()
          .post('$baseUrlApp/auth/register', user.toJson());
      if (response.statusCode == 201) {
        return response.data;
      } else {
        final j = jsonDecode(response.data);
        throw Exception(j["msg"]);
      }
    } catch (e) {}
  }

  logout() async {
    try {
      final response = await JBHttp()
          .getInstancia()
          .post('$baseUrlApp/logout', <String, dynamic>{});
      return response.statusCode == 201 ? response.data : null;
    } catch (e) {}
  }
}
