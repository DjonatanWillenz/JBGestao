import 'package:get/get.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09604Controller extends GetxController {
  Future<List<JBListTile>> buscarListaFerias() async {
    List<JBListTile> response = [];

    response.add(
      const JBListTile(
        title: "Text",
        subtitle: "",
      ),
    );
    return response;
  }
}
