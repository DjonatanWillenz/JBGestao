import 'package:mobile/app/data/models/colaboracao.model.dart';
import 'package:mobile/app/data/models/empresa.model.dart';
import 'package:mobile/app/data/models/usuario.model.dart';

class AppSession {
  static AppSession? _instancia;
  Usuario? _usuario;
  List<Colaboracao>? _colaboracoes;
  Empresa? _empresa;
  String? _token;

  AppSession() {
    _usuario = Usuario();
    _colaboracoes = [];
    _empresa = Empresa();
  }

  static AppSession getInstancia() {
    _instancia ??= AppSession();
    return _instancia!;
  }

  getToken() => _token;
  setToken(value) => _token = value;

  getColaboracoes() => _colaboracoes;
  setColaboracoes(value) => _colaboracoes = value;
  getEmpresa() => _empresa!;
  setEmpresa(value) => _empresa = value;
  getUsuario() => _usuario;
  setUsuario(value) => _usuario = value;
}
