import 'package:mobile/app/data/models/permission.model.dart';
import 'package:mobile/app/data/providers/permission.provider.dart';

class PermissionRepository {
  final PermissionApiClient apiClient = PermissionApiClient();

  Future<List<Permission>> getPermission(String iduser) async {
    List<dynamic> dados = await apiClient.getPermissions(iduser);
    if ((dados.isNotEmpty)) {
      return Permissions.fromJson(dados).getPermissions();
    }
    return List<Permission>.empty();
  }
}
