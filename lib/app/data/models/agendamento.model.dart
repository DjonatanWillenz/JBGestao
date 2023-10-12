class Agendamento {
  String? _titulo;
  String? _descricao;
  String? _situacao;

  getTitulo() => _titulo;
  getDescricao() => _descricao;
  getSituacao() => _situacao;

  Agendamento({titulo, descricao, situacao}) {
    _titulo = titulo;
    _descricao = descricao;
    _situacao = situacao;
  }
}
