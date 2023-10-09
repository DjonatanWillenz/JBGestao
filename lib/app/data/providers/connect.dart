import 'package:get/get.dart';
import 'package:mobile/app/global/singleton/system.dart';

class DwGetConnect extends GetConnect {
  final String _contentType = 'application/json';

  _addAuthHeader() {
    if (System.getInstance().getToken() != null) {
      return {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${System.getInstance().getToken()}'
      };
    }
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
  }

  Future<Response<T>> send<T>(String url, String body) {
    return super.post(
      url,
      body,
      headers: _addAuthHeader(),
      contentType: _contentType,
    );
  }

  Future<Response<T>> getD<T>(String url) async {
    return await super
        .get(url, headers: _addAuthHeader(), contentType: _contentType);
  }

  Future<Response<T>> remuve<T>(String url) {
    return super
        .delete(url, headers: _addAuthHeader(), contentType: _contentType);
  }

  Future<Response<T>> putD<T>(String url, dynamic body) async => super
      .put<T>(url, body, headers: _addAuthHeader(), contentType: _contentType);
}
