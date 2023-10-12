import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/usuario.provider.dart';

class UserRepository {
  final UsuarioApiClient? apiClient = UsuarioApiClient();

  Future<Usuario?> auth(String email, String senha) async {
    Usuario usuario = Usuario();
    usuario.setNome("Djonatan Willenz");
    usuario.setEmail("DjonatanWillenz@Jbsoft.com.br");
    usuario.setSenha("");

    return usuario;

    // var user = await apiClient?.auth(email, senha);
    // return user != null ? Usuario.fromJson(user) : null;
  }

  Future<Usuario?> create(Usuario user) async {
    var result = await apiClient?.create(user);
    return result != null ? Usuario.fromJson(result) : null;
  }

  logout() async {
    await apiClient?.logout();
  }
}
