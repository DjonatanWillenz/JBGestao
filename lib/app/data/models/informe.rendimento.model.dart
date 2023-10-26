class InformeRendimento {
  int? _id;
  int? _ano;

  getId() => _id;
  getAno() => _ano;

  static InformeRendimento fromJson(Map<String, dynamic> json) {
    InformeRendimento response = InformeRendimento();
    response._id = json["id"];
    response._ano = json["ano"];
    return response;
  }
}
