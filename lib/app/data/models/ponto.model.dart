class Ponto {
  DateTime? _data;
  String? _horaEntrada;
  String? _horaSaida;

  getData() => _data;
  getHoraEntrada() => _horaEntrada;
  getHoraSaida() => _horaSaida;

  Ponto({data, horaEntrada, horaSaida}) {
    _data = data;
    _horaEntrada = horaEntrada;
    _horaSaida = horaSaida;
  }
}
