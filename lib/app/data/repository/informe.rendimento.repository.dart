import 'package:mobile/app/data/models/informe.rendimento.model.dart';
import 'package:mobile/app/data/providers/informe.rendimento.dart';

class InformeRendimentoRepository {
  final InformeRendimentosProvider reciboRepository =
      InformeRendimentosProvider();

  Future<List<InformeRendimento>> getInformesRendimento() async {
    List<InformeRendimento> response = [];

    Map<String, dynamic> request =
        await reciboRepository.getInformesRendimentos();

    for (var elm in request["dados"]) {
      response.add(InformeRendimento.fromJson(elm));
    }

    return response;
  }

  Future<String> base64InfomeRendimento(int idholerite) async {
    Map<String, dynamic> request =
        await reciboRepository.getBase64InformesRendimentos(idholerite);

    if (request.isNotEmpty) {
      return request["dados"]["base64"];
    }

    return "";
  }
}
