import 'package:get/get.dart';
import 'package:mobile/app/data/models/feria.model.dart';

class Form09604Controller extends GetxController {
  Future<List<Feria>> buscarListaFerias() async {
    List<Feria> response = [];

    response.add(
      Feria(
        diasDireito: 30,
        aquisInicio: "01/01/2022",
        aquisFim: "30/12/2023",
      ),
    );

    response.add(
      Feria(
        diasDireito: 30,
        aquisInicio: "01/01/2023",
        aquisFim: "01/01/2024",
      ),
    );
    return response;
  }
}
