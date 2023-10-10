import 'dart:convert';

class UserSession {
  String? _id;
  String? _nome;
  String? _email;
  String? _senha;
  String? _token;

  getId() => _id ?? "";
  getNome() => _nome ?? "";
  getEmail() => _email ?? "";
  getSenha() => _senha ?? "";
  getToken() => _token ?? "";

  setId(val) => _id = val;
  setNome(val) => _nome = val;
  setEmail(val) => _email = val;
  setSenha(val) => _senha = val;
  setToken(val) => _token = val;

  UserSession();

  UserSession.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _email = json['email'];
    _token = json['token'];
  }

  String toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _nome;
    data['email'] = _email;
    data['token'] = _token;
    return jsonEncode(data);
  }
}
