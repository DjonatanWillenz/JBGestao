class Empresa {
  int? _id;
  String? _nome;
  String? _inscricao;

  getId() => _id;
  getNome() => _nome;
  getInscricao() => _inscricao;

  static Empresa fromJson(Map<String, dynamic> data) {
    Empresa response = Empresa();
    response._id = data["id"];
    response._nome = data["nome"];
    response._inscricao = data["inscricao"];
    return response;
  }
}
