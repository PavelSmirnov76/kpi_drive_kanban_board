import 'package:dio/dio.dart';

const _baseUrl = 'https://api.dev.kpi-drive.ru';
const _bearerToken = '5c3964b8e3ee4755f2cc0febb851e2f8';

class ApiClient {
  ApiClient._();

  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.add(const _AuthInterceptor());

    return dio;
  }
}

class _AuthInterceptor extends Interceptor {
  const _AuthInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $_bearerToken';
    handler.next(options);
  }
}
