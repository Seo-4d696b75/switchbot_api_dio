import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/auth/generate_sign_use_case.dart';
import 'package:switchbot_api_dio/src/auth/get_nonce_use_case.dart';
import 'package:switchbot_api_dio/src/auth/get_time_use_case.dart';
import 'package:switchbot_api_dio/src/dio/auth_interceptor.dart';
import 'package:switchbot_api_dio/src/dio/error_interceptor.dart';
import 'package:switchbot_api_dio/src/dio/response_convert_interceptor.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';
import 'package:switchbot_api_dio/src/model/device/device_collection.dart';
import 'package:switchbot_api_dio/src/model/scene/manual_scene.dart';
import 'package:switchbot_api_dio/src/model/status/device_status.dart';
import 'package:switchbot_api_dio/src/switchbot_exception.dart';

class SwitchBotApi {
  factory SwitchBotApi({
    required String userToken,
    required String userSecret,
    Dio? dio,
    String baseUrl = 'https://api.switch-bot.com',
    GetTimeUseCase getTime = const GetTimeUseCase.defaultImpl(),
    GetNonceUseCase getNonce = const GetNonceUseCase.defaultImpl(),
    GenerateSignUseCase generateSign = const GenerateSignUseCase.defaultImpl(),
  }) {
    final d = dio ?? Dio();
    d.options = d.options.copyWith(
      baseUrl: baseUrl,
    );
    d.interceptors
      ..add(
        AuthorizationInterceptor(
          userToken: userToken,
          userSecret: userSecret,
          getTime: getTime,
          getNonce: getNonce,
          generateSign: generateSign,
        ),
      )
      ..add(ResponseConvertInterceptor())
      ..add(ApiErrorInterceptor());
    return SwitchBotApi._(d);
  }

  const SwitchBotApi._(this._dio);

  final Dio _dio;

  R _fromJsonSafe<S, R>(
    R Function(S json) fromJson,
    Response<dynamic> response,
  ) {
    final data = response.data;
    if (data is! S) {
      throw SwitchBotApiParseException.from(
        response: response,
        message: 'failed to parse .body of JSON response',
        error: FormatException(
          'can not parse type ${data.runtimeType} to ${S.runtimeType}',
          data,
        ),
        stackTrace: StackTrace.current,
      );
    }
    try {
      return fromJson(data);
    } on CheckedFromJsonException catch (e, s) {
      throw SwitchBotApiParseException.from(
        response: response,
        message: 'failed to parse .body of JSON response',
        error: e,
        stackTrace: s,
      );
    }
  }

  /// Gets all the devices registered in SwitchBot
  ///
  /// This returns .body of the JSON response from SwitchBot API
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#get-device-list)
  Future<Map<String, dynamic>> getDevicesRaw() async {
    final res = await _dio.get<dynamic>('/v1.1/devices');
    return _fromJsonSafe((Map<String, dynamic> json) => json, res);
  }

  /// Gets all the devices registered in SwitchBot
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#get-device-list)
  Future<DeviceCollection> getDevices() async {
    final res = await _dio.get<dynamic>('/v1.1/devices');
    return _fromJsonSafe(DeviceCollection.fromJson, res);
  }

  /// Gets a status of the device specified by [deviceId]
  ///
  /// This returns .body of the JSON response from SwitchBot API
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#get-device-status)
  Future<Map<String, dynamic>> getDeviceStatusRaw(String deviceId) async {
    final res = await _dio.get<dynamic>('/v1.1/devices/$deviceId/status');
    return _fromJsonSafe((Map<String, dynamic> json) => json, res);
  }

  /// Gets a status of the device specified by [deviceId]
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#get-device-status)
  Future<DeviceStatus> getDeviceStatus(String deviceId) async {
    final res = await _dio.get<dynamic>('/v1.1/devices/$deviceId/status');
    return _fromJsonSafe(DeviceStatus.fromJson, res);
  }

  /// Sends a device control command
  ///
  /// ```
  /// // sends "turnOn" command
  /// await controlRaw(
  ///   device: device,
  ///   command: DeviceCommand.raw(
  ///     type: 'command',
  ///     command: 'turnOn',
  ///   ),
  /// );
  /// ```
  ///
  /// ## Warning
  /// Any command can be passed,
  /// but not validated before requesting to SwitchBotAPI.
  ///
  /// It is recommended to use instead:
  /// - [controlVirtualDevice]
  /// - [controlPhysicalDevice]
  ///
  /// ## Error handling
  /// If invalid or unsupported command is requested,
  /// then an exception will be thrown.
  ///
  /// - [SwitchBotApiHttpException] if http connection fails or
  ///   SwitchBotAPI returns a http status code other than 200
  /// - [SwitchBotApiStatusException] if SwitchBotAPI returns a status code
  ///   other than 100
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#send-device-control-commands)
  Future<void> controlRaw({
    required String deviceId,
    required DeviceCommand command,
  }) async {
    final path = '/v1.1/devices/$deviceId/commands';
    final payload = command.toJson();
    await _dio.post<dynamic>(path, data: payload);
  }

  /// Sends a control command to virtual device
  ///
  /// ## Using factory constructor for commands
  /// [VirtualDeviceCommand] has factory constructors for
  /// almost all the basic commands.
  ///
  /// ```
  /// // sends "turnOn" command
  /// await controlVirtualDevice(
  ///   device: device,
  ///   command: VirtualDeviceCommand.turnOn(),
  /// );
  ///
  /// // sends "brightnessUp" command to device type "Light"
  /// await controlVirtualDevice(
  ///   device: device,
  ///   command: VirtualDeviceCommand(command: 'brightnessUp'),
  /// );
  ///
  /// // sends custom command to device type "others"
  /// await controlVirtualDevice(
  ///   device: device,
  ///   command: VirtualDeviceCommand.customize(
  ///     deviceName: device.name, // 'ボタン'
  ///   ),
  /// );
  /// ```
  ///
  /// ## Error handling
  /// If any error, an exception will be thrown:
  /// - [SwitchBotApiHttpException] if http connection fails or
  ///   SwitchBotAPI returns a http status code other than 200
  /// - [SwitchBotApiStatusException] if SwitchBotAPI returns a status code
  ///   other than 100
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#send-device-control-commands)
  Future<void> controlVirtualDevice({
    required VirtualDevice device,
    required VirtualDeviceCommand command,
  }) =>
      controlRaw(deviceId: device.id, command: command);

  /// Sends a control command to physical device
  ///
  /// ## Using factory methods for commands
  ///
  /// [PhysicalDeviceCommand] has factory methods for
  /// each physical device type.
  ///
  ///
  /// ```
  /// // sends "turnOn" command to "Bot" device
  /// await controlPhysicalDevice(
  ///   device: device,
  ///   command: PhysicalDeviceCommand.bot.turnOn(),
  /// );
  /// ```
  ///
  /// ## Error handling
  /// If any error, an exception will be thrown:
  /// - [SwitchBotUnsupportedCommandException] if unsupported command
  ///   is detected in validation before requesting to SwitchBotAPI
  /// - [SwitchBotApiHttpException] if http connection fails or
  ///   SwitchBotAPI returns a http status code other than 200
  /// - [SwitchBotApiStatusException] if SwitchBotAPI returns a status code
  ///   other than 100
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#send-device-control-commands)
  Future<void> controlPhysicalDevice({
    required PhysicalDevice device,
    required PhysicalDeviceCommand command,
  }) async {
    if (!command.deviceTypes.contains(device.type)) {
      throw SwitchBotUnsupportedCommandException(
        deviceType: device.type.value,
        command: command,
      );
    }
    return controlRaw(deviceId: device.id, command: command);
  }

  /// Gets all the smart scenes created by a user
  ///
  /// **Note** Gets only "manual" scenes, not other types
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#scenes)
  Future<List<ManualScene>> getScenes() async {
    final res = await _dio.get<dynamic>('/v1.1/scenes');
    return _fromJsonSafe(ManualScene.parseListJson, res);
  }

  /// Executes a manual scene specified by [sceneId]
  ///
  /// ## Error handling
  /// If any error, an exception will be thrown:
  /// - [SwitchBotApiHttpException] if http connection fails or
  ///   SwitchBotAPI returns a http status code other than 200
  /// - [SwitchBotApiStatusException] if SwitchBotAPI returns a status code
  ///   other than 100
  ///
  /// [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI#execute-manual-scenes)
  Future<void> executeScene({
    required String sceneId,
  }) async {
    final path = '/v1.1/scenes/$sceneId/execute';
    await _dio.post<dynamic>(path);
  }
}
