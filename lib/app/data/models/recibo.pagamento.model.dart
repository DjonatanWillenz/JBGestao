class ReciboPagamento {
  int? _id;
  String? _competencia;
  String? _tipoCalculo;
  String? _dataPagamento;
  double? _valorLiquido;

  getId() => _id!;
  getCompetencia() => _competencia;
  getTipoCalculo() => _tipoCalculo;
  getDataPagamento() => _dataPagamento;
  getValorLiquido() => _valorLiquido;

  static ReciboPagamento fromJson(Map<String, dynamic> data) {
    ReciboPagamento response = ReciboPagamento();
    response._id = data["id"];
    response._competencia = data["competencia"];
    response._tipoCalculo = data["tipo_calculo"];
    response._dataPagamento = data["data_pagamento"];
    response._valorLiquido = data["valor_liquido"];
    return response;
  }
}
