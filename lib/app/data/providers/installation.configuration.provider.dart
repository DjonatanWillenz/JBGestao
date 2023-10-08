import 'package:mobile/app/data/models/intallation.configuration.model.dart';
import 'package:mobile/app/data/providers/connect.dart';

import '../base_url.dart';

class InstallationConfigurationApiClient extends DwGetConnect {
  getConfigs(String key) async {
    try {
      final response =
          await getD('$baseUrlApp/api/installation/configuration/$key');
      return response.statusCode == 200 ? response.body : null;
    } catch (e) {
      return null;
    }
  }

  update(String key, InstallationConfiguration vo) async {
    try {
      final response = await putD(
          '$baseUrlApp/api/installation/configuration/$key', vo.toJson());
      print(response);
    } catch (e) {
      return null;
    }
  }
}
