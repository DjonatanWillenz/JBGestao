class Pessoa {
  int? _id;
  String? _nome;
  String? _apelido;

  getId() => _id ?? 0;
  getNome() => _nome ?? "";
  getApelido() => _apelido ?? "";

  static Pessoa fromJson(Map<String, dynamic> json) {
    Pessoa response = Pessoa();
    response._id = json["id"];
    response._nome = json["nome"];
    response._apelido = json["apelido"];
    return response;
  }
}
