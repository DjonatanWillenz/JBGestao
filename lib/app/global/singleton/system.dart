import 'package:mobile/app/data/models/usuario.model.dart';

class AppSession {
  static AppSession? _instancia;
  Usuario? _usuario;

  AppSession() {
    _usuario = Usuario();
  }

  static AppSession getInstancia() {
    _instancia ??= AppSession();
    return _instancia!;
  }

  getToken() => _usuario?.getToken();

  getUsuario() => _usuario;
  setUsuario(val) => _usuario = val;
}
