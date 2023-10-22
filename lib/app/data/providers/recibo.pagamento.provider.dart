import 'package:mobile/app/data/providers/http.dart';

class ReciboPagamentoProvider {
  Future<List<Map<dynamic, String>>> getRecibos() async {
    const urlRequest = "";
    try {
      var request = await JBHttp().getInstancia().get(urlRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {
      return null;
    }
  }

  Future<String> getBase64Recibo(int idrecibo) async {
    const urlRequest = "";
    try {
      var request = await JBHttp().getInstancia().get(urlRequest);
      return request.statusCode = 200 ? request.data : null;
    } catch (e) {
      return null;
    }
  }
}
