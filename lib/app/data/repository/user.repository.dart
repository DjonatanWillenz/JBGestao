import 'package:mobile/app/data/models/user.model.dart';
import 'package:mobile/app/data/providers/user.provider.dart';

class UserRepository {
  final UserApiClient? apiClient = UserApiClient();

  Future<UserSession?> auth(String email, String senha) async {
     var user = await apiClient?.auth(email, senha);
     return user != null ? UserSession.fromJson(user) : null;
  }

  Future<UserSession?> create(UserSession user) async {
    var result = await apiClient?.create(user);
    return result != null ? UserSession.fromJson(result) : null;
  }

  logout() async {
    await apiClient?.logout();
  }
}
