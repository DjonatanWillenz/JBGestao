class Notifications {
  String? _id;
  String? _type;
  String? _title;
  String? _description;
  DateTime? _createAt;
  bool? _read;

  setId(val) => _id = val;
  setType(val) => _type = val;
  setTitle(val) => _title = val;
  setDescription(val) => _description = val;
  setCreateAt(val) => _createAt = val;
  setRead(val) => _read = val;

  getId() => _id;
  getType() => _type;
  getTitle() => _title;
  getDescription() => _description;
  getCreateAt() => _createAt;
  getRead() => _read;

  Notifications.fromJson(Map<String, dynamic> json) {
    _id = json['id'] ?? 0;
    _type = json['type'] ?? "INFO";
    _title = json['title'] ?? '';
    _description = json['description'] ?? '';
    // _createAt = json['createAt'];
    _read = json['read'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['type'] = _type;
    data['title'] = _title;
    data['description'] = _description;
    data['read'] = _read;
    data['createAt'] = _createAt;
    return data;
  }
}
