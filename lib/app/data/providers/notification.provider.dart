import 'package:mobile/app/data/models/notifications.model.dart';
import 'package:mobile/app/data/providers/http.dart';

class NotificationApiClient {
  getByIdUser(String iduser) async {
    try {
      final response =
          await JBHttp.getInstancia().get('/notification/user/$iduser');
      return response.statusCode == 200 ? response.data as List : null;
    } catch (e) {
      return null;
    }
  }

  register(Notifications entity) async {
    try {
      // final response =
      //     await JBHttp().getInstancia().post('$baseUrlApp/api/notification', entity.toJson());
      return null; //response.statusCode == 201 ? response.body : null;
    } catch (e) {
      return null;
    }
  }

  read(String iduser, String id) async {
    try {
      //final response =
      //    await putD('$baseUrlApp/api/notification/read/$iduser/$id', {});
      return null; //response.statusCode == 202;
    } catch (e) {
      return false;
    }
  }
}
