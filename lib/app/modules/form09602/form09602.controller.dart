import 'package:get/get.dart';
import 'package:mobile/app/data/repository/recibo.pagamento.repository.dart';
import 'package:mobile/app/global/components/button.item.dart';
import 'package:mobile/app/global/components/list.title.dart';

class Form09602Controller extends GetxController {
  final ReciboPagamentoRepository reciboRepository =
      ReciboPagamentoRepository();

  Future<List<JBListTile>> onPesquisa() async {
    List<JBListTile> response = [];
    await reciboRepository.getRecibosPagamento().then(
          (value) => {
            for (var i in value)
              {
                response.add(
                  JBListTile(
                    title: "Tipo de folha:${i.getTipoCalculo()}",
                    subtitle:
                        "Competência: ${i.getCompetencia()}, valor líquido: ${i.getValorLiquido()}",
                    buttons: [
                      JBButtonGrid(
                        acao: AcaoTipo.visualizar,
                        metodo: HttpTipo.get,
                        url:
                            "integracao/painel/recibo-pagameto/pdf/${i.getId()}",
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
