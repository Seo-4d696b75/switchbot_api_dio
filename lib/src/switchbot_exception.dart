import 'package:dio/dio.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';

/// An exception thrown in SwitchBotApi
///
/// All exceptions thrown in the package extend this class.
abstract class SwitchBotException implements Exception {}

/// An exception due to invalid command
///
/// Depending on physical/virtual and type of a device,
/// available commands are limited.
/// If any unsupported command is detected before requesting to SwitchBot API,
/// then this exception will be thrown.
///
/// **Note** Not all the commands are validated.
/// If requesting an invalid command to SwitchBot API,
/// [SwitchBotApiStatusException] will be thrown with statusCode: 160.
class SwitchBotUnsupportedCommandException implements SwitchBotException {
  const SwitchBotUnsupportedCommandException({
    required this.deviceType,
    required this.command,
  });

  final String deviceType;
  final DeviceCommand command;

  @override
  String toString() {
    return 'SwitchBotUnsupportedCommandException device:`$deviceType`'
        'command: ${command.toJson()}';
  }
}

/// An Exception due to http error
///
/// This exception class extends [DioException],
/// so any properties about http error can be accessed.
///
/// For example, when SwitchBotApi returns
/// a response with status code other than 200,
/// this exception will be thrown with;
/// - [type] is [DioExceptionType.badResponse]
/// - `response.statusCode` is other than 200
///
/// For each status code, an error is described in [SwitchBotApi docs](https://github.com/OpenWonderLabs/SwitchBotAPI#standard-http-error-codes)
class SwitchBotApiHttpException extends DioException
    implements SwitchBotException {
  SwitchBotApiHttpException._({
    required RequestOptions requestOptions,
    required Response<dynamic>? response,
    required DioExceptionType type,
    required String? message,
    required StackTrace stackTrace,
    required Object? error,
  }) : super(
          requestOptions: requestOptions,
          response: response,
          type: type,
          message: message,
          stackTrace: stackTrace,
          error: error,
        );

  factory SwitchBotApiHttpException.from(DioException cause) =>
      SwitchBotApiHttpException._(
        requestOptions: cause.requestOptions,
        response: cause.response,
        type: cause.type,
        message: cause.message,
        stackTrace: cause.stackTrace,
        error: cause.error,
      );

  @override
  DioException copyWith({
    RequestOptions? requestOptions,
    Response<dynamic>? response,
    DioExceptionType? type,
    Object? error,
    StackTrace? stackTrace,
    String? message,
  }) =>
      SwitchBotApiHttpException._(
        requestOptions: requestOptions ?? this.requestOptions,
        response: response ?? this.response,
        type: type ?? this.type,
        message: message ?? this.message,
        stackTrace: stackTrace ?? this.stackTrace,
        error: error ?? this.error,
      );

  @override
  String toString() {
    return 'SwitchBotApiHttpException [$type]';
  }
}

/// An Exception when parsing a response from SwitchBotApi fails
///
/// This exception extends [DioException] for
/// implementation convenience of interceptors
/// - [type]: [DioExceptionType.unknown]
/// - [message]: describes the parse failure
/// - [error], [stackTrace]: the original parse exception
class SwitchBotApiParseException extends DioException
    implements SwitchBotException {
  SwitchBotApiParseException._({
    required RequestOptions requestOptions,
    required Response<dynamic>? response,
    required String? message,
    required Exception error,
    required StackTrace stackTrace,
  })  : _error = error,
        _stackTrace = stackTrace,
        super(
          requestOptions: requestOptions,
          response: response,
          type: DioExceptionType.unknown,
          message: message,
        );

  factory SwitchBotApiParseException.from({
    required Response<dynamic> response,
    required Exception error,
    required StackTrace stackTrace,
    String? message,
  }) =>
      SwitchBotApiParseException._(
        requestOptions: response.requestOptions,
        response: response,
        message: message,
        error: error,
        stackTrace: stackTrace,
      );

  final StackTrace _stackTrace;
  final Exception _error;

  @override
  Exception get error => _error;

  @override
  StackTrace get stackTrace => _stackTrace;

  @override
  DioException copyWith({
    RequestOptions? requestOptions,
    Response<dynamic>? response,
    DioExceptionType? type,
    Object? error,
    StackTrace? stackTrace,
    String? message,
  }) =>
      SwitchBotApiParseException._(
        requestOptions: requestOptions ?? this.requestOptions,
        response: response ?? this.response,
        message: message ?? this.message,
        stackTrace: stackTrace ?? this.stackTrace,
        error: error is Exception ? error : this.error,
      );

  @override
  String toString() {
    return 'SwitchBotApiParseException $message'
        '\ncaused by: $error';
  }
}

/// An Exception when SwitchBotApi returns a response
/// with status code other than 100
///
/// **Note:** In this exception,
/// "status code" is different from http response code
class SwitchBotApiStatusException extends DioException
    implements SwitchBotException {
  SwitchBotApiStatusException._({
    required RequestOptions requestOptions,
    required Response<dynamic>? response,
    required String message,
    required Object? error,
    required StackTrace? stackTrace,
    required this.statusCode,
  })  : _message = message,
        super(
          requestOptions: requestOptions,
          response: response,
          type: DioExceptionType.unknown,
          message: message,
          error: error,
          stackTrace: stackTrace,
        );

  factory SwitchBotApiStatusException.from({
    required Response<dynamic> response,
    required int statusCode,
    required String message,
    Object? error,
    StackTrace? stackTrace,
  }) =>
      SwitchBotApiStatusException._(
        requestOptions: response.requestOptions,
        response: response,
        message: message,
        error: error,
        stackTrace: stackTrace,
        statusCode: statusCode,
      );

  /// status code from api response
  ///
  /// **Note:** this code is different from http status code,
  /// but a integer value named "statusCode" in JSON response.
  ///
  /// ```json
  /// {
  ///   "statusCode": 100,
  ///   "message": "success"
  ///   "body": {}
  /// }
  /// ```
  ///
  /// - 100: Success (No exception thrown)
  /// - 151: device type error
  /// - 152: device not found
  /// - 160: command is not supported
  /// - 161: device offline
  /// - 171: hub device is offline
  /// - 190: Device internal error due to
  ///   device states not synchronized with server
  final int statusCode;

  final String _message;

  /// error message from api response
  ///
  /// This message describes for each status code in JSON response.
  /// ```json
  /// {
  ///   "statusCode": 151,
  ///   "message": "device type error"
  /// }
  /// ```
  @override
  String get message => _message;

  @override
  DioException copyWith({
    RequestOptions? requestOptions,
    Response<dynamic>? response,
    DioExceptionType? type,
    Object? error,
    StackTrace? stackTrace,
    String? message,
  }) =>
      SwitchBotApiStatusException._(
        requestOptions: requestOptions ?? this.requestOptions,
        response: response ?? this.response,
        message: message ?? this.message,
        stackTrace: stackTrace ?? this.stackTrace,
        error: error ?? this.error,
        statusCode: statusCode,
      );

  @override
  String toString() {
    return 'SwitchBotApiStatusException [$statusCode] $message';
  }
}
