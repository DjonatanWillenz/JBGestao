import 'package:get/get.dart';
import 'package:mobile/app/data/repository/informe.rendimento.repository.dart';
import 'package:mobile/app/global/components/button.item.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09603Controller extends GetxController {
  final InformeRendimentoRepository informeRepository =
      InformeRendimentoRepository();

  Future<List<JBListTile>> onPesquisa() async {
    List<JBListTile> response = [];
    await informeRepository.getInformesRendimento().then(
          (value) => {
            for (var i in value)
              {
                response.add(
                  JBListTile(
                    title: "Ano base:${i.getAno()}",
                    subtitle: "",
                    buttons: [
                      JBButtonGrid(
                        acao: AcaoTipo.visualizar,
                        metodo: HttpTipo.get,
                        url:
                            "integracao/painel/informe-rendimento/pdf/${i.getId()}",
                      ),
                    ],
                  ),
                )
              }
          },
        );
    return response;
  }
}
