// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/model/common/enum.dart';
import 'package:switchbot_api_dio/src/model/converter.dart';
import 'package:switchbot_api_dio/src/model/device/physical/type.dart';

export 'extension.dart';
export 'type.dart';

part 'blind.dart';

part 'curtain.dart';

part 'keypad.dart';

part 'lock.dart';

part 'passcode.dart';

part 'physical_device.freezed.dart';

part 'physical_device.g.dart';

/// A physical device registered in SwitchBot app
abstract class PhysicalDevice {
  const factory PhysicalDevice({
    required String id,
    required String name,
    required PhysicalDeviceType type,
    required bool enableCloudService,
    required String hubDeviceId,
  }) = _PhysicalDeviceBase;

  /// Parse a JSON response
  factory PhysicalDevice.fromJson(Map<String, dynamic> json) {
    final type = json['deviceType'];
    if (type == PhysicalDeviceType.curtain.value) {
      return PhysicalDeviceCurtain.fromJson(json);
    } else if (type == PhysicalDeviceType.lock.value) {
      return PhysicalDeviceLock.fromJson(json);
    } else if (type == PhysicalDeviceType.keypad.value ||
        type == PhysicalDeviceType.keypadTouch.value) {
      return PhysicalDeviceKeypad.fromJson(json);
    } else if (type == PhysicalDeviceType.blindTilt.value) {
      return PhysicalDeviceBlindTilt.fromJson(json);
    } else {
      return _PhysicalDeviceBase.fromJson(json);
    }
  }

  /// device ID
  String get id;

  /// device name
  String get name;

  /// device type
  PhysicalDeviceType get type;

  /// determines if Cloud Service is enabled or not for the current device
  bool get enableCloudService;

  /// device's parent Hub ID
  String get hubDeviceId;

  Map<String, dynamic> toJson();
}

@freezed
class _PhysicalDeviceBase with _$_PhysicalDeviceBase implements PhysicalDevice {
  const factory _PhysicalDeviceBase({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceName') required String name,
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,
    required bool enableCloudService,
    required String hubDeviceId,
  }) = __PhysicalDeviceBase;

  factory _PhysicalDeviceBase.fromJson(Map<String, dynamic> json) =>
      _$_PhysicalDeviceBaseFromJson(json);
}
