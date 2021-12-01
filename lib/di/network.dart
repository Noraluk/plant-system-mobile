import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Network {
  static Dio provideHttpClient() {
    final dio = Dio();

    dio
      ..options.baseUrl = dotenv.env['API_HOST']!
      ..interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ));

    return dio;
  }
}
