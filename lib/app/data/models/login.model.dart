class Login {
  String? _email;
  String? _senha;

  getEmail() => _email ?? "";
  getSenha() => _senha ?? "";

  static Login fromJson(Map<String, dynamic> json) {
    Login response = Login();
    response._email = json["email"];
    response._senha = json["senha"];
    return response;
  }
}
