import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/usuario.provider.dart';

class UserRepository {
  final UsuarioApiClient? apiClient = UsuarioApiClient();

  Future<Usuario?> auth(String email, String senha) async {
    var user = await apiClient?.auth(email, senha);
    //return user != null ? Usuario.fromJson(user) : null;
    Usuario usuario = Usuario();
    usuario.setId(1);
    usuario.setNome("Djonatan Willenz");
    usuario.setEmail("DjonatanWillenz@Jbsoft.com.br");
    usuario.setSenha("");
    return usuario;
  }

  Future<Usuario?> create(Usuario user) async {
    var result = await apiClient?.create(user);
    return result != null ? Usuario.fromJson(result) : null;
  }

  logout() async {
    await apiClient?.logout();
  }
}
