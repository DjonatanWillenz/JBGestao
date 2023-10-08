import 'dart:convert';

import 'package:mobile/app/data/base_url.dart';
import 'package:mobile/app/data/models/user.model.dart';
import 'package:mobile/app/data/providers/connect.dart';

class UserApiClient extends DwGetConnect {
  auth(String email, String password) async {
    try {
      final response = await post(
          '$baseUrlApp/auth', {"email": email, "password": password});
      return response.statusCode == 200 ? response.body : null;
    } catch (e) {
      print(e);
    }
  }

  create(UserSession user) async {
    try {
      final response = await send('$baseUrlApp/auth/register', user.toJson());
      if (response.statusCode == 201) {
        return response.body;
      } else {
        final j = jsonDecode(response.body);
        print(j['msg'].toString());
        throw Exception(j["msg"]);
      }
    } catch (e) {
      print(e);
    }
  }

  logout() async {
    try {
      final response = await send('$baseUrl/logout', "");
      return response.statusCode == 201 ? response.body : null;
    } catch (e) {
      print(e);
    }
  }
}
