import 'package:mobile/app/data/models/recibo.pagamento.model.dart';
import 'package:mobile/app/data/providers/recibo.pagamento.provider.dart';

class ReciboPagamentoRepository {
  final ReciboPagamentoProvider reciboRepository = ReciboPagamentoProvider();

  Future<List<ReciboPagamento>> getRecibosPagamento() async {
    List<ReciboPagamento> response = [];

    //Map<String, dynamic> request = await reciboRepository.getRecibos();

    //for (var elm in request["dados"]) {
    //  response.add(ReciboPagamento.fromJson(elm));
    // }

    response.add(ReciboPagamento());
    return response;
  }

  Future<String> base64Recibo(int idholerite) async {
    Map<String, dynamic> request =
        await reciboRepository.getBase64Recibo(idholerite);

    if (request.isNotEmpty) {
      return request["dados"]["base64"];
    }

    return "";
  }
}
