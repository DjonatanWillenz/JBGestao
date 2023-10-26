import 'package:mobile/app/data/models/empresa.model.dart';

class Colaboracao {
  int? _id;
  String? _dataInicio;
  String? _perfilTipo;
  Empresa? _empresa;

  getId() => _id;
  getPerfilTipo() => _perfilTipo;
  getDataInicio() => _dataInicio;
  getEmpresa() => _empresa;

  static Colaboracao fromJson(Map<String, dynamic> data) {
    Colaboracao response = Colaboracao();
    response._id = data["id"];
    response._perfilTipo = data["perfil_tipo"];
    response._dataInicio = data["data_inicio"];
    response._empresa = Empresa.fromJson(data["empresa"]);
    return response;
  }
}
