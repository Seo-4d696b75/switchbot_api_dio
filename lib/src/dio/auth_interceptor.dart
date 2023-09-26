import 'dart:io';

import 'package:dio/dio.dart';
import 'package:switchbot_api_dio/src/auth/generate_sign_use_case.dart';
import 'package:switchbot_api_dio/src/auth/get_nonce_use_case.dart';
import 'package:switchbot_api_dio/src/auth/get_time_use_case.dart';

class AuthorizationInterceptor extends Interceptor {
  const AuthorizationInterceptor({
    required this.userToken,
    required this.userSecret,
    required this.getNonce,
    required this.getTime,
    required this.generateSign,
  });

  final String userToken;
  final String userSecret;
  final GetNonceUseCase getNonce;
  final GetTimeUseCase getTime;
  final GenerateSignUseCase generateSign;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final time = getTime();
    final nonce = getNonce();
    final sign = generateSign(
      timestamp: time,
      nonce: nonce,
      userToken: userToken,
      userSecret: userSecret,
    );
    options
      ..headers[HttpHeaders.authorizationHeader] = userToken
      ..headers['t'] = time.toString()
      ..headers['nonce'] = nonce
      ..headers['sign'] = sign
      ..headers['charset'] = 'utf8'
      ..headers[HttpHeaders.contentTypeHeader] = 'application/json';
    handler.next(options);
  }
}
