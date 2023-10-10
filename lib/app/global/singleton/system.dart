import 'package:mobile/app/data/models/user.model.dart';

class System {
  static System? _instance;
  UserSession? _user;

  System() {
    _user = UserSession();
  }

  static System getInstance() {
    _instance ??= System();
    return _instance!;
  }

  getToken() => _user?.getToken();

  getUser() => _user;
  setUser(val) => _user = val;
}
