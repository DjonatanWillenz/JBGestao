import 'package:dio/dio.dart';
import 'package:mobile/app/global/singleton/system.dart';

class JBHttp {
  static JBHttp? _instancia;
  static Dio? _dio;

  JBHttp() {
    _dio = Dio();
  }

  String formatarUrl(String rota) {
    return 'http://teste.jbsoft.com.br/api' + rota;
  }

  Map<String, dynamic> getHeaders() {
    if (AppSession.getInstancia().getToken() != null) {
      return {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${AppSession.getInstancia().getToken()}'
      };
    }
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
  }

  static JBHttp getInstancia() {
    _instancia ??= JBHttp();
    return _instancia!;
  }

  Future<Response<T>> post<T>(String url, Map<String, dynamic> body) async {
    return await _dio!.post(formatarUrl(url),
        data: body, options: Options(headers: getHeaders()));
  }

  Future<Response<T>> get<T>(String url) async {
    return await _dio!
        .get(formatarUrl(url), options: Options(headers: getHeaders()));
  }

  Future<Response<T>> delete<T>(String url) async {
    return await _dio!
        .delete(formatarUrl(url), options: Options(headers: getHeaders()));
  }

  Future<Response<T>> put<T>(String url, dynamic body) async {
    return await _dio!.put(formatarUrl(url),
        data: body, options: Options(headers: getHeaders()));
  }
}
