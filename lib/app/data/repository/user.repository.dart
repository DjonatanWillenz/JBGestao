import 'package:mobile/app/data/models/user.model.dart';
import 'package:mobile/app/data/providers/user.provider.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class UserRepository {
  final UserApiClient? apiClient = UserApiClient();

  Future<UserSession?> auth(String email, String password) async {
    var user = await apiClient?.auth(email, password);
    return user != null ? UserSession.fromJson(user) : null;
  }

  Future<UserSession?> create(UserSession user) async {
    var result = await apiClient?.create(user);
    return result != null ? UserSession.fromJson(result) : null;
  }

  String textToMd5(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }

  logout() async {
    await apiClient?.logout();
  }
}
