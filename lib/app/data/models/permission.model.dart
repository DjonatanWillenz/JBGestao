import 'installation.model.dart';

class Permissions {
  List<Permission>? _permission;

  getPermissions() => _permission;

  Permissions.fromJson(List<dynamic> json) {
    _permission = <Permission>[];
    for (var v in json) {
      _permission!.add(Permission.fromJson(v));
    }
  }
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
  //if (_permission != null) {
  //  data['permission'] = _permission!.map((v) => v.toJson()).toList();
  // }
  return data;
  // }
}

class Permission {
  String? _id;
  List<String>? _privilegs;
  Installation? _installation;

  getId() => _id;
  getPrivileges() => _privilegs;
  getInstallation() => _installation;

  Permission.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _privilegs = json['privilegs'].cast<String>();
    _installation = json['installation'] != null
        ? Installation.fromJson(json['installation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = _id;
    data['privilegs'] = _privilegs;
    if (_installation != null) {
      data['installation'] = _installation!.toJson();
    }
    return data;
  }
}
