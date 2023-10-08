import 'package:mobile/app/data/models/installation.model.dart';
import 'package:mobile/app/data/models/user.model.dart';

class System {
  static System? _instance;
  UserSession? _user;
  Installation? _installation;

  System() {
    _user = UserSession();
  }

  static System getInstance() {
    _instance ??= System();
    return _instance!;
  }

  getToken() => _user?.getToken();

  getInstallation() => _installation;
  setInstallation(val) => _installation = val;

  getUser() => _user;
  setUser(val) => _user = val;
}
