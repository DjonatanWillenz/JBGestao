import 'package:mobile/app/data/providers/http.dart';
import 'package:mobile/app/global/singleton/system.dart';

class ReciboPagamentoProvider {
  getRecibos() async {
    const urlRequest = "/integracao/painel/recibo-pagamento";
    try {
      var request = await JBHttp.getInstancia().get(urlRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {}
  }

  getBase64Recibo(int idrecibo) async {
    int idempresa = AppSession.getInstancia().getEmpresa().getId();
    String urlRequest =
        '/integracao/painel/recibo-pagamento/$idempresa/$idrecibo';
    try {
      var request = await JBHttp.getInstancia().get(urlRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {}
  }
}
