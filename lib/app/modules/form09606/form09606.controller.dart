import 'package:get/get.dart';
import 'package:mobile/app/data/models/agendamento.model.dart';

class Form09606Controller extends GetxController {
  Future<List<Agendamento>> buscarListaAgendamentos() async {
    List<Agendamento> response = [];

    response.add(
      Agendamento(
        titulo: "Recibo pagamento",
        descricao:
            "Solicitação de recibo de pagamento para competência 02/2023 ",
        situacao: "Em processamento",
      ),
    );

    return response;
  }
}
