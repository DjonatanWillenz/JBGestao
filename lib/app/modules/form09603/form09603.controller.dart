import 'package:get/get.dart';
import 'package:mobile/app/data/models/informe.rendimento.model.dart';

class Form09603Controller extends GetxController {
  Future<List<InformeRendimento>> buscarInformesRendimentos() async {
    List<InformeRendimento> response = [];

    response.add(
      InformeRendimento(ano: 2020),
    );

    return response;
  }
}
