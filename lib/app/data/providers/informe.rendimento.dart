import 'package:mobile/app/data/providers/http.dart';
import 'package:mobile/app/global/singleton/system.dart';

class InformeRendimentosProvider {
  getInformesRendimentos() async {
    int idempresa = AppSession.getInstancia().getEmpresa().getId();
    int idpessoa = AppSession.getInstancia().getUsuario().getPessoa().getId();
    String urlRequest =
        '/integracao/painel/informe-rendimento/$idempresa/$idpessoa';
    try {
      var request = await JBHttp.getInstancia().get(urlRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {}
  }

  getBase64InformesRendimentos(int idrecibo) async {
    int idempresa = AppSession.getInstancia().getEmpresa().getId();
    String urlRequest =
        '/integracao/painel/informe-rendimento/pdf/$idempresa/$idrecibo';
    try {
      var request = await JBHttp.getInstancia().get(urlRequest);
      return request.statusCode == 200 ? request.data : null;
    } catch (e) {}
  }
}
