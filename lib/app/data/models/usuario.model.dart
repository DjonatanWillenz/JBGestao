class Usuario {
  int? _id;
  String? _nome;
  String? _email;
  String? _senha;

  getId() => _id ?? "";
  getNome() => _nome ?? "";
  getEmail() => _email ?? "";
  getSenha() => _senha ?? "";

  setId(val) => _id = val;
  setNome(val) => _nome = val;
  setEmail(val) => _email = val;
  setSenha(val) => _senha = val;

  Usuario();

  Usuario.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _nome;
    data['email'] = _email;
    return data;
  }
}
