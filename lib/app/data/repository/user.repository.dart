import 'package:mobile/app/data/models/colaboracao.model.dart';
import 'package:mobile/app/data/models/usuario.model.dart';
import 'package:mobile/app/data/providers/usuario.provider.dart';
import 'package:mobile/app/data/repository/colaboracao.repository.dart';
import 'package:mobile/app/global/singleton/system.dart';

class UserRepository {
  final UsuarioProvider? usuarioProvider = UsuarioProvider();
  final ColaboracaoRepository? colaboracaoRepository = ColaboracaoRepository();
  Future<Usuario?> auth(String email, String senha) async {
    Map<String, dynamic> auth = await usuarioProvider?.auth(email, senha);
    if (auth.isNotEmpty) {
      String token = auth["dados"]["token"];
      AppSession.getInstancia().setToken(token);
      if (AppSession.getInstancia().getToken() != null) {
        List<Colaboracao> colaboracoes =
            await colaboracaoRepository!.findColaboracoes();
        if (colaboracoes.isEmpty) {
          throw Exception("Não possui colaborações ativas");
        }
        AppSession.getInstancia().setColaboracoes(colaboracoes);
      }
    }
    throw Exception("Erro na autenticação.");
  }

  Future<Usuario?> create(Usuario user) async {
    var result = await usuarioProvider?.create(user);
    return result != null ? Usuario.fromJson(result) : null;
  }

  logout() async {
    await usuarioProvider?.logout();
  }
}
