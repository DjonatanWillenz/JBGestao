import 'package:mobile/app/data/models/notifications.model.dart';
import 'package:mobile/app/data/providers/connect.dart';

import '../base_url.dart';

class NotificationApiClient extends DwGetConnect {
  getByIdUser(String iduser) async {
    try {
      final response = await getD('$baseUrlApp/api/notification/user/$iduser');
      return response.statusCode == 200 ? response.body as List : null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  register(Notifications entity) async {
    try {
      final response =
          await post('$baseUrlApp/api/notification', entity.toJson());
      return response.statusCode == 201 ? response.body : null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> read(String iduser, String id) async {
    try {
      final response =
          await putD('$baseUrlApp/api/notification/read/$iduser/$id', {});
      return response.statusCode == 202;
    } catch (e) {
      return false;
    }
  }
}
