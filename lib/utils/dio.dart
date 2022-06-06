import 'package:dio/dio.dart';

Dio dio = new Dio();

class CustomInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = "http://127.0.0.1:3000";
    print('------------------------onRequest------------------------');
    // TODO: implement onRequest
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('------------------------onResponse------------------------');
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('------------------------onError------------------------');
    // TODO: implement onError
    super.onError(err, handler);
  }
}

class Request {
  Request() {
    dio.interceptors.add(CustomInterceptors());
  }

  Future get(url, {config}) async {
    try {
      return dio.get(url, queryParameters: config);
    } catch (e) {
      return e;
    }
  }

  Future post(url, data) async {
    try {
      return dio.post(url, data: data);
    } catch (e) {
      return e;
    }
  }

  Future put(url, data) async {
    try {
      return dio.put(url, data: data);
    } catch (e) {
      return e;
    }
  }
}
