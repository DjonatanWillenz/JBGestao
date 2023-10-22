import 'package:get/get.dart';
import 'package:mobile/app/global/components/button.item.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09602Controller extends GetxController {
  List<JBButtonGrid> options() {
    List<JBButtonGrid> response = [];

    response.add(
      JBButtonGrid(
        onPress: () => {},
      ),
    );

    return response;
  }

  Future<List<JBListTile>> onPesquisa() async {
    List<JBListTile> response = [];

    response.add(
      const JBListTile(
        title: "Tipo de folha: Normal",
        subtitle: 'Competência: 02/2020,  1400,00',
      ),
    );

    response.add(
      const JBListTile(
        title: "Tipo de folha: Normal",
        subtitle: 'Competência: 02/2020, : 1400,00',
      ),
    );

    response.add(
      const JBListTile(
        title: "Tipo de folha: Normal",
        subtitle: 'Competência: 02/2ído: 1400,00',
      ),
    );
    return response;
  }
}
