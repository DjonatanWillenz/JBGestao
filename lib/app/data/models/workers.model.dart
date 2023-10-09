class WorkerVO {
  late String _name;
  late String _cpf;
  late String _dateAdmission;

  getName() => _name;
  getCpf() => _cpf;
  getDateAdmission() => _dateAdmission;

  setName(val) => _name = val;
  setCpf(val) => _cpf = val;
  setDateAdmission(val) => _dateAdmission = val;

  WorkerVO(name, cpf, dateAdmission) {
    _name = name;
    _cpf = _cpf;
    _dateAdmission = dateAdmission;
  }
}
