import 'package:mobile/app/data/models/colaboracao.model.dart';
import 'package:mobile/app/data/providers/colaboracao.provider.dart';

class ColaboracaoRepository {
  final ColaboracaoProvider provider = ColaboracaoProvider();

  Future<List<Colaboracao>> findColaboracoes() async {
    List<Colaboracao> response = [];

    List<Map<String, dynamic>> request = await provider.getColaboracoes();

    for (var item in request) {
      response.add(Colaboracao.fromJson(item));
    }

    return response;
  }
}
