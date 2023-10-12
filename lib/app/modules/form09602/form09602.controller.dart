import 'package:get/get.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09602Controller extends GetxController {
  Future<List<JBListTile>> buscarListaRecibosPagamento() async {
    List<JBListTile> response = [];

    response.add(
      const JBListTile(
        title: "01/2020",
        subtitle: '06/02/2020',
      ),
    );

    return response;
  }
}
