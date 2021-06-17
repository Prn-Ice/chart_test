import 'package:dio/dio.dart';

class DioService {
  BaseOptions options = BaseOptions(
    baseUrl: 'http://api.coingecko.com/api/v3/',
    /* headers: {
      "User-Agent":
          "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
      "X-Requested-With": "XMLHttpRequest",
    }, */
  );

  late Dio dio;

  DioService() {
    dio = Dio(options);

    dio..interceptors.add(LogInterceptor(responseBody: true));
  }
}
