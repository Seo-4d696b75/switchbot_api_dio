import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:switchbot_api_dio/src/model/common/api_response.dart';
import 'package:switchbot_api_dio/src/switchbot_exception.dart';

class ResponseConvertInterceptor extends Interceptor {
  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final body = response.data;
    try {
      // when calling dio.get<dynamic>()
      // with option ResponseType.json (default),
      // any response with "content-type: application/json"
      // will be transformed automatically.
      final json = body is String ? jsonDecode(body) : body;
      if (json is! Map<String, dynamic>) {
        throw FormatException(
          'can not parse type ${body.runtimeType} to Map<String,dynamic>',
          body,
        );
      }

      final model = ApiResponse.fromJson(json);
      if (model.statusCode != 100) {
        final exception = SwitchBotApiStatusException.from(
          response: response,
          statusCode: model.statusCode,
          message: model.message,
        );
        handler.reject(exception);
        return;
      }
      final converted = Response<dynamic>(
        data: model.body,
        requestOptions: response.requestOptions,
        statusCode: response.statusCode,
        isRedirect: response.isRedirect,
        redirects: response.redirects,
        extra: response.extra,
        headers: response.headers,
      );
      handler.resolve(converted);
    } on CheckedFromJsonException catch (e, s) {
      handler.reject(
        SwitchBotApiParseException.from(
          response: response,
          message: 'failed to parse api response meta data',
          error: e,
          stackTrace: s,
        ),
      );
    } on FormatException catch (e, s) {
      handler.reject(
        SwitchBotApiParseException.from(
          response: response,
          message: 'failed to parse api response meta data',
          error: e,
          stackTrace: s,
        ),
      );
    }
  }
}
