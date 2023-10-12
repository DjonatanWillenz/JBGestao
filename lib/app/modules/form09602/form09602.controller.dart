import 'package:get/get.dart';
import 'package:mobile/app/data/models/recibo.pagamento.model.dart';

class Form09602Controller extends GetxController {
  Future<List<ReciboPagamentoVO>> findAllWorkers() async {
    List<ReciboPagamentoVO> response = [];

    response.add(
      ReciboPagamentoVO(
        competencia: "01/2020",
        dataPagamento: '06/02/2020',
        tipoFolha: 'Folha normal',
        valorLiquido: 1300.89,
      ),
    );

    return response;
  }
}
