import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:switchbot_api_dio/src/dio/response_convert_interceptor.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

void main() {
  final interceptor = ResponseConvertInterceptor();
  final dio = Dio()..interceptors.add(interceptor);
  final adapter = DioAdapter(dio: dio);
  final api = SwitchBotApi(
    userToken: '',
    userSecret: '',
    baseUrl: 'https://api.example.com',
    dio: dio,
  );

  group('SwitchBotApi', () {
    group('.body is JsonObject', () {
      const path = '/v1.1/devices';
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
        final collection = await api.getDevices();
        expect(collection.deviceList.length, 0);
        expect(collection.infraredRemoteList.length, 0);
      });
      test('field missing', () async {
        const str = '''
      {
        "statusCode": 100,
        "body": {
          "deviceList": []
        },
        "message": "success"
      }
      ''';
        adapter.onGet(
          path,
          (server) => server.reply(200, str),
        );
        await expectLater(
          api.getDevices,
          throwsA(
            isA<SwitchBotApiParseException>()
                .having(
                  (e) => e.error,
                  'error',
                  isA<CheckedFromJsonException>(),
                )
                .having(
                  (e) => e.message,
                  'message',
                  startsWith('failed to parse .body'),
                ),
          ),
        );
      });
      test('custom JsonConverter fails', () async {
        const str = '''
      {
        "statusCode": 100,
        "body": {
          "deviceList": [
            {
              "deviceId": "500291B269BE",
              "deviceName": "Living Room Humidifier",
              "deviceType": "Unknown",
              "enableCloudService": true,
              "hubDeviceId": "000000000000"
            }
          ],
          "infraredRemoteList": []
        },
        "message": "success"
      }
      ''';
        adapter.onGet(
          path,
          (server) => server.reply(200, str),
        );
        await expectLater(
          api.getDevices,
          throwsA(
            isA<SwitchBotApiParseException>().having(
              (e) => e.error,
              'error',
              isA<CheckedFromJsonException>(),
            ),
          ),
        );
      });
      test('body type mismatched', () async {
        const str = '''
      {
        "statusCode": 100,
        "body": [],
        "message": "success"
      }
      ''';
        adapter.onGet(
          path,
          (server) => server.reply(200, str),
        );
        await expectLater(
          api.getDevices,
          throwsA(
            isA<SwitchBotApiParseException>()
                .having(
                  (e) => e.error,
                  'error',
                  isA<FormatException>(),
                )
                .having(
                  (e) => e.message,
                  'message',
                  startsWith('failed to parse .body'),
                ),
          ),
        );
      });
    });
    group('.body is List', () {
      const path = '/v1.1/scenes';
      test('success', () async {
        const str = '''
      {
        "statusCode": 100,
        "body": [],
        "message": "success"
      }
      ''';
        adapter.onGet(
          path,
          (server) => server.reply(200, str),
        );
        final list = await api.getScenes();
        expect(list.length, 0);
      });
      test('body type mismatched', () async {
        const str = '''
      {
        "statusCode": 100,
        "body": {},
        "message": "success"
      }
      ''';
        adapter.onGet(
          path,
          (server) => server.reply(200, str),
        );
        await expectLater(
          api.getScenes,
          throwsA(
            isA<SwitchBotApiParseException>()
                .having(
                  (e) => e.error,
                  'error',
                  isA<FormatException>(),
                )
                .having(
                  (e) => e.message,
                  'message',
                  startsWith('failed to parse .body'),
                ),
          ),
        );
      });
    });
  });
}
