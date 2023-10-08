class Dashbord {
  String? _type;
  String? _message;
  Data? _data;

  getType() => _data;
  getMessage() => _message;
  getData() => _data;

  Dashbord.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = _type;
    data['message'] = _message;
    if (_data != null) {
      data['data'] = _data!.toJson();
    }
    return data;
  }
}

class Data {
  double? temperature;
  double? ph;
  double? oxynization;
  String? currentTime;

  Data({this.temperature, this.ph, this.oxynization, this.currentTime});

  Data.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    ph = json['ph'];
    oxynization = json['oxynization'];
    currentTime = json['current_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature'] = temperature;
    data['ph'] = ph;
    data['oxynization'] = oxynization;
    data['current_time'] = currentTime;
    return data;
  }
}
