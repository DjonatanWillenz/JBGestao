class InstallationConfiguration {
  bool? waterPump;
  bool? waterLock;
  bool? lighting;

  InstallationConfiguration({this.waterPump, this.waterLock, this.lighting});

  InstallationConfiguration.fromJson(Map<String, dynamic> json) {
    waterPump = json['water_pump'];
    waterLock = json['water_lock'];
    lighting = json['lighting'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['water_pump'] = waterPump;
    data['water_lock'] = waterLock;
    data['lighting'] = lighting;
    return data;
  }
}
