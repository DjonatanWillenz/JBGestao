import 'package:get/get.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09602Controller extends GetxController {
  Future<List<JBListTile>> buscarListaRecibosPagamento() async {
    List<JBListTile> response = [];

    response.add(
      const JBListTile(
        title: "Tipo de folha: Normal",
        subtitle: 'Competência: 02/2020, valor liquído: 1400,00',
      ),
    );

    return response;
  }
}
