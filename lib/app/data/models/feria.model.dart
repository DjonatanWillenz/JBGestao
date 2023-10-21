class Feria {
  String? _aquisInicio;
  String? _aquisFim;
  int? _diasDireito;

  getAquisIni() => _aquisInicio;
  getAquiFim() => _aquisFim;
  getDiasDireito() => _diasDireito;

  Feria({aquisInicio, aquisFim, diasDireito}) {
    _aquisInicio = aquisInicio;
    _aquisFim = aquisFim;
    _diasDireito = diasDireito;
  }
}
