import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:switchbot_api_dio/src/dio/error_interceptor.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

void main() {
  final interceptor = ApiErrorInterceptor();

  final dio = Dio()..interceptors.add(interceptor);
  final adapter = DioAdapter(dio: dio);

  group('ApiErrorInterceptor', () {
    const path = 'https://api.example.com/v1.1';
    group('badResponse', () {
      test('200', () async {
        adapter.onGet(
          path,
          (server) => server.reply(200, ''),
        );
        await dio.get<dynamic>(path);
      });
      test('500', () async {
        adapter.onGet(
          path,
          (server) => server.reply(500, ''),
        );
        await expectLater(
          () => dio.get<dynamic>(path),
          throwsA(
            isA<SwitchBotApiHttpException>()
                .having((e) => e.type, 'type', DioExceptionType.badResponse)
                .having((e) => e.response?.statusCode, 'statusCode', 500),
          ),
        );
      });
      test('404', () async {
        adapter.onGet(
          path,
          (server) => server.reply(404, ''),
        );
        await expectLater(
          () => dio.get<dynamic>(path),
          throwsA(
            isA<SwitchBotApiHttpException>()
                .having((e) => e.type, 'type', DioExceptionType.badResponse)
                .having((e) => e.response?.statusCode, 'statusCode', 404),
          ),
        );
      });
    });
    test('timeout', () async {
      adapter.onGet(
        path,
        (server) => server.throws(
          500,
          DioException.connectionTimeout(
            timeout: const Duration(seconds: 1),
            requestOptions: RequestOptions(path: path),
          ),
        ),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiHttpException>()
              .having((e) => e.type, 'type', DioExceptionType.connectionTimeout)
              .having((e) => e.response?.statusCode, 'statusCode', isNull),
        ),
      );
    });
    test('unknown', () async {
      final exception = Exception();
      adapter.onGet(
        path,
        (server) => server.throws(
          500,
          DioException(
            error: exception,
            requestOptions: RequestOptions(path: path),
          ),
        ),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiHttpException>()
              .having((e) => e.type, 'type', DioExceptionType.unknown)
              .having((e) => e.response?.statusCode, 'statusCode', isNull)
              .having((e) => e.error, 'error', exception),
        ),
      );
    });
  });
}
