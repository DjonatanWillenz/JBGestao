import 'package:mobile/app/data/providers/http.dart';

class ColaboracaoProvider {
  getColaboracoes() async {
    String ulrRequest = "/perfil";
    try {
      var request = await JBHttp.getInstancia().get(ulrRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {
      return null;
    }
  }
}
