class Configuration {
  bool? _active;

  getActive() => _active;

  Configuration.fromJson(Map<String, dynamic> json) {
    _active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['active'] = _active;
    return data;
  }
}
