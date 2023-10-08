import 'package:mobile/app/data/models/intallation.configuration.model.dart';
import 'package:mobile/app/data/providers/installation.configuration.provider.dart';
import 'package:mobile/app/global/singleton/system.dart';

class InstallationConfigurationRepository {
  final InstallationConfigurationApiClient apiClient =
      InstallationConfigurationApiClient();

  Future<InstallationConfiguration> find() async {
    InstallationConfiguration response = InstallationConfiguration();
    List<dynamic> req = await apiClient
        .getConfigs(System.getInstance().getInstallation().getKey());
    if (req.isNotEmpty) {
      /* for (var v in req) {
        if (v is Map<String, dynamic>) {
          config.add(Notifications.fromJson(v));
        }
      }
      */
    }
    return response;
  }

  Future<void> update(InstallationConfiguration vo) async {
    await apiClient.update(System.getInstance().getInstallation().getKey(), vo);
  }
}
