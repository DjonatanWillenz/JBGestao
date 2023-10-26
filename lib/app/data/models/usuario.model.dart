import 'dart:convert';
import 'dart:typed_data';

import 'package:mobile/app/data/models/login.model.dart';
import 'package:mobile/app/data/models/pessoa.model.dart';

class Usuario {
  int? _id;
  Pessoa? _pessoa;
  Login? _login;
  Uint8List? _fotoPerfil;

  getId() => _id ?? "";
  getLogin() => _login;
  getPessoa() => _pessoa ?? Pessoa();
  getFotoPerfil() => _fotoPerfil;

  setId(value) => _id = value;
  setLogin(value) => _login = value;
  setFotoPerfil(value) => _fotoPerfil = base64.decode(value);

  Usuario();

  Usuario.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _pessoa = Pessoa.fromJson(json["pessoa"]);
    _login = Login.fromJson(json['login']);
  }
}
