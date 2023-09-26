// ignore_for_file: invalid_annotation_target
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/model/converter.dart';
import 'package:switchbot_api_dio/src/model/device/physical/type.dart';

part 'blind.dart';

part 'bot.dart';

part 'cleaner.dart';

part 'curtain.dart';

part 'device_status.freezed.dart';

part 'device_status.g.dart';

part 'hub.dart';

part 'humidifier.dart';

part 'light.dart';

part 'lock.dart';

part 'meter.dart';

part 'plug.dart';

part 'sensor.dart';

/// Status of a device registered in SwitchBot app
abstract class DeviceStatus {
  const factory DeviceStatus({
    required String id,
    required PhysicalDeviceType type,
    required String hubDeviceId,
  }) = _DeviceStatusBase;

  factory DeviceStatus.fromJson(Map<String, dynamic> json) {
    final base = _DeviceStatusBase.fromJson(json);
    switch (base.type) {
      case PhysicalDeviceType.bot:
        return DeviceStatusBot.fromJson(json);
      case PhysicalDeviceType.curtain:
        return DeviceStatusCurtain.fromJson(json);
      case PhysicalDeviceType.meter:
      case PhysicalDeviceType.meterPlus:
      case PhysicalDeviceType.outdoorMeter:
        return DeviceStatusMeter.fromJson(json);
      case PhysicalDeviceType.motionSensor:
        return DeviceStatusMotionSensor.fromJson(json);
      case PhysicalDeviceType.contactSensor:
        return DeviceStatusContactSensor.fromJson(json);
      case PhysicalDeviceType.ceilingLight:
      case PhysicalDeviceType.ceilingLightPro:
        return DeviceStatusCeilingLight.fromJson(json);
      case PhysicalDeviceType.plugMiniUS:
      case PhysicalDeviceType.plugMiniJP:
        return DeviceStatusPlugMini.fromJson(json);
      case PhysicalDeviceType.plug:
        return DeviceStatusPlug.fromJson(json);
      case PhysicalDeviceType.stripLight:
        return DeviceStatusStripLight.fromJson(json);
      case PhysicalDeviceType.colorBulb:
        return DeviceStatusColorBulb.fromJson(json);
      case PhysicalDeviceType.robotVacuumCleanerS1:
      case PhysicalDeviceType.robotVacuumCleanerS1Plus:
        return DeviceStatusVacuumCleaner.fromJson(json);
      case PhysicalDeviceType.humidifier:
        return DeviceStatusHumidifier.fromJson(json);
      case PhysicalDeviceType.blindTilt:
        return DeviceStatusBlindTilt.fromJson(json);
      case PhysicalDeviceType.hub2:
        return DeviceStatusHub2.fromJson(json);
      // ignore: no_default_cases
      default:
        return base;
    }
  }

  /// device ID
  String get id;

  /// device type
  PhysicalDeviceType get type;

  /// device's parent Hub ID
  String get hubDeviceId;

  Map<String, dynamic> toJson();
}

@freezed
class _DeviceStatusBase with _$_DeviceStatusBase implements DeviceStatus {
  const factory _DeviceStatusBase({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,
    required String hubDeviceId,
  }) = __DeviceStatusBase;

  factory _DeviceStatusBase.fromJson(Map<String, dynamic> json) =>
      _$_DeviceStatusBaseFromJson(json);
}
