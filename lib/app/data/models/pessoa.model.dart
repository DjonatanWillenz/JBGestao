class Pessoa {
  int? _id;
  String? _nome;

  getId() => _id ?? 0;
  getNome() => _nome ?? "";

  static Pessoa fromJson(Map<String, dynamic> json) {
    Pessoa response = Pessoa();
    response._id = json["id"];
    response._nome = json["nome"];
    return response;
  }
}
