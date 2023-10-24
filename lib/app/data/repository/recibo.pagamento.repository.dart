import 'package:get/get.dart';
import 'package:mobile/app/data/models/recibo.pagamento.model.dart';
import 'package:mobile/app/data/providers/recibo.pagamento.provider.dart';

class ReciboPagamentoRepository {
  final ReciboPagamentoProvider reciboRepository = ReciboPagamentoProvider();

  Future<List<ReciboPagamento>> getRecibosPagamento() async {
    List<ReciboPagamento> response = [];

    List<Map<String, dynamic>> request = await reciboRepository.getRecibos();

    for (var elm in request) {
      response.add(ReciboPagamento.fromJson(elm));
    }

    return response;
  }

  Future<String> base64Recibo(int idholerite) async {
    Future<Map<String, dynamic>> request =
        await reciboRepository.getBase64Recibo(idholerite);

    if (request.isBlank) {
      throw Exception("");
    }
  }
}
