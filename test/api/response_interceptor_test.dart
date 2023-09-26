import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:switchbot_api_dio/src/dio/response_convert_interceptor.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

void main() {
  final interceptor = ResponseConvertInterceptor();
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.example.com'),
  )..interceptors.add(interceptor);
  final adapter = DioAdapter(dio: dio);

  group('ResponseConvertInterceptor', () {
    const path = '/v1.1';

    test('success', () async {
      const str = '''
      {
        "statusCode": 100,
        "body": {
          "deviceList": [],
          "infraredRemoteList": []
        },
        "message": "success"
      }
      ''';
      adapter.onGet(
        path,
        (server) => server.reply(200, str),
      );
      final response = await dio.get<dynamic>(path);
      expect(
        response.data,
        isA<Map<String, dynamic>>()
            .having((m) => m.length, 'length', 2)
            .having((m) => m['deviceList'], 'deviceList', isA<List<dynamic>>()),
      );
    });
    test('jsonDecode fails', () async {
      const str = '''
      {
        "statusCode": 100,
        "body": {
          "deviceList": [],
          "infraredRemoteList": []
        },
        "message": "success",
      }
      ''';
      adapter.onGet(
        path,
        (server) => server.reply(200, str),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiParseException>()
              .having((e) => e.error, 'error', isA<FormatException>()),
        ),
      );
    });
    test('response.data is! String', () async {
      adapter.onGet(
        path,
        (server) => server.reply(200, null),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiParseException>()
              .having((e) => e.error, 'error', isA<FormatException>()),
        ),
      );
    });
    test('ApiResponse.fromJson fails', () async {
      adapter.onGet(
        path,
        (server) => server.reply(200, '{"statusCode": 100}'),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiParseException>()
              .having((e) => e.error, 'error', isA<CheckedFromJsonException>()),
        ),
      );
    });
    test('statusCode != 100', () async {
      const str = '''
      {
        "statusCode": 151,
        "message": "device type error"
      }
      ''';
      adapter.onGet(
        path,
        (server) => server.reply(200, str),
      );
      await expectLater(
        () => dio.get<dynamic>(path),
        throwsA(
          isA<SwitchBotApiStatusException>()
              .having((e) => e.statusCode, 'statusCode', 151)
              .having((e) => e.message, 'message', 'device type error'),
        ),
      );
    });
  });
}
