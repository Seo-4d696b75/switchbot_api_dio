import 'package:dio/dio.dart';
import 'package:switchbot_api_dio/src/switchbot_exception.dart';

class ApiErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = SwitchBotApiHttpException.from(err);
    handler.reject(exception);
  }
}
