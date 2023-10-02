// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/model/converter.dart';
import 'package:switchbot_api_dio/src/model/device/device_collection.dart';

export 'type.dart';

part 'virtual_device.freezed.dart';

part 'virtual_device.g.dart';

/// A virtual infrared remote device
@freezed
class VirtualDevice with _$VirtualDevice {
  const factory VirtualDevice({
    /// device ID
    @JsonKey(name: 'deviceId')
    required String id,

    /// device name
    @JsonKey(name: 'deviceName')
    required String name,

    /// device type
    @JsonKey(name: 'remoteType')
    @VirtualDeviceTypeConverter()
    required VirtualDeviceType type,

    /// device's parent Hub ID
    required String hubDeviceId,
  }) = _VirtualDevice;

  factory VirtualDevice.fromJson(Map<String, dynamic> json) =>
      _$VirtualDeviceFromJson(json);
}
