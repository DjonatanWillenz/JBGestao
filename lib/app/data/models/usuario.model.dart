import 'dart:typed_data';

class Usuario {
  int? _id;
  String? _nome;
  String? _email;
  String? _senha;
  Uint8List? _fotoPerfil;

  getId() => _id ?? "";
  getNome() => _nome ?? "";
  getEmail() => _email ?? "";
  getSenha() => _senha ?? "";
  getFotoPerfil() => _fotoPerfil;

  setId(value) => _id = value;
  setNome(value) => _nome = value;
  setEmail(value) => _email = value;
  setSenha(value) => _senha = value;
  setFotoPerfil(value) => _fotoPerfil = value;

  Usuario();

  Usuario.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _email = json['email'];
    _fotoPerfil = json['foto_perfil'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _nome;
    data['email'] = _email;
    return data;
  }
}
