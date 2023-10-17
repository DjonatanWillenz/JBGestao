import 'dart:convert';

import 'package:mobile/app/data/base_url.dart';
import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/connect.dart';

class UsuarioApiClient extends DwGetConnect {
  auth(String email, String senha) async {
    try {
      final response = await post(
          '$baseUrlApp/login', {"idempresa": 181801, "username": email, "password": senha});
      return response.statusCode == 200 ? response.body : null;
    } catch (e) {}
  }

  create(Usuario user) async {
    try {
      final response = await send('$baseUrlApp/auth/register', user.toJson());
      if (response.statusCode == 201) {
        return response.body;
      } else {
        final j = jsonDecode(response.body);
        throw Exception(j["msg"]);
      }
    } catch (e) {}
  }

  logout() async {
    try {
      final response = await send('$baseUrlApp/logout', "");
      return response.statusCode == 201 ? response.body : null;
    } catch (e) {}
  }
}
