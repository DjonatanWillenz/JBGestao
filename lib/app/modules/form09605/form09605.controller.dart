import 'package:get/get.dart';
import 'package:mobile/app/data/models/ponto.model.dart';

class Form09605Controller extends GetxController {
  Future<List<Ponto>> onPesquisa() async {
    List<Ponto> response = [];

    response.add(
      Ponto(
        data: DateTime.now(),
        horaEntrada: "08:00",
        horaSaida: "11:50",
      ),
    );

    response.add(
      Ponto(
        data: DateTime.now(),
        horaEntrada: "08:00",
        horaSaida: "11:50",
      ),
    );

    response.add(
      Ponto(
        data: DateTime.now(),
        horaEntrada: "08:00",
        horaSaida: "11:50",
      ),
    );

    response.add(
      Ponto(
        data: DateTime.now(),
        horaEntrada: "08:00",
        horaSaida: "11:50",
      ),
    );

    return response;
  }
}
