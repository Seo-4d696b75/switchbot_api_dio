import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:switchbot_api_dio/src/dio/auth_interceptor.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

import 'auth_interceptor_test.mocks.dart';

@GenerateMocks([
  GetNonceUseCase,
  GetTimeUseCase,
  GenerateSignUseCase,
])
void main() {
  final getNonce = MockGetNonceUseCase();
  final getTime = MockGetTimeUseCase();
  final generateSign = MockGenerateSignUseCase();

  const token = 'test-user-token';
  const secret = 'test-user-secret';

  final interceptor = AuthorizationInterceptor(
    userToken: token,
    userSecret: secret,
    getNonce: getNonce,
    getTime: getTime,
    generateSign: generateSign,
  );

  final dio = Dio()..interceptors.add(interceptor);
  final adapter = DioAdapter(dio: dio);

  const domain = 'api.example.com';
  const path = 'https://$domain/v1.1/hello';

  test('AuthorizationInterceptor', () async {
    // prepare
    final timestamp =
        DateTime.parse('2023-07-23T12:00:00').millisecondsSinceEpoch;
    const nonce = 'test-nonce-value';
    const sign = 'test-sign';

    when(getNonce()).thenAnswer((_) => nonce);
    when(getTime()).thenAnswer((_) => timestamp);
    when(
      generateSign(
        timestamp: timestamp,
        nonce: nonce,
        userToken: token,
        userSecret: secret,
      ),
    ).thenAnswer((_) => sign);

    adapter.onGet(
      path,
      (server) => server.reply(200, '{"statusCode": 200}'),
    );

    // test
    final response = await dio.get<String>(path);

    // verify header
    final headers = response.requestOptions.headers;
    expect(headers[HttpHeaders.authorizationHeader], token);
    expect(headers['t'], timestamp.toString());
    expect(headers['nonce'], nonce);
    expect(headers['sign'], sign);
  });
}
