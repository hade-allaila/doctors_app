import 'package:dio/dio.dart';
import "package:pretty_dio_logger/pretty_dio_logger.dart";

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options.headers = {
        'Accept': "application/json",
      };
      dio!.options.connectTimeout = timeOut;
      dio!.options.receiveTimeout = timeOut;
      addInterceptor();
      return dio!;
    }
    return dio!;
  }

  static void addInterceptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseHeader: true,
        enabled: true,
      ),
    );
  }
}
