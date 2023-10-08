import 'package:mobile/app/data/models/configuration.model.dart';

class Installation {
  String? _id;
  String? _key;
  String? _description;
  Configuration? _configuration;

  getId() => _id;
  getKey() => _key;
  getDescription() => _description;
  getConfiguration() => _configuration;

  Installation.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _key = json['key'];
    _description = json['description'];
    _configuration = json['configuration'] != null
        ? Configuration.fromJson(json['configuration'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['key'] = _key;
    data['description'] = _description;
    if (_configuration != null) {
      data['configuration'] = _configuration!.toJson();
    }
    return data;
  }
}
