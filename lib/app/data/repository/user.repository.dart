import 'package:mobile/app/data/models/colaboracao.model.dart';
import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/usuario.provider.dart';
import 'package:mobile/app/global/singleton/system.dart';

class UserRepository {
  final UsuarioProvider provider = UsuarioProvider();
  Future<Usuario?> auth(String email, String senha) async {
    Map<String, dynamic> auth = await provider.auth(email, senha);
    if (auth.isNotEmpty) {
      String token = auth["dados"]["token"];
      AppSession.getInstancia().setToken(token);
      if (AppSession.getInstancia().getToken() != null) {
        Map<String, dynamic> dadosPerfil = await provider.getPerfil();
        if (dadosPerfil.isEmpty) {
          throw Exception("Não possui colaborações ativas");
        }
        List<Colaboracao> colaboracoes = [];
        for (var item
            in dadosPerfil["colaboracoes"] as List<Map<String, dynamic>>) {
          colaboracoes.add(Colaboracao.fromJson(item));
        }
        AppSession.getInstancia().setColaboracoes(colaboracoes);
        AppSession.getInstancia().setUsuario(
            Usuario.fromJson(dadosPerfil["usuario"] as Map<String, dynamic>));
      }
    }
    throw Exception("Erro na autenticação.");
  }

  Future<Usuario?> cadastrar(Usuario usuario) async {
    var result = await provider.cadastrar(usuario);
    return result != null ? Usuario.fromJson(result) : null;
  }

  logout() async {
    await provider.logout();
  }
}
