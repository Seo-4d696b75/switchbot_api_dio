// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Hub 2' device
@freezed
class DeviceStatusHub2 with _$DeviceStatusHub2 implements DeviceStatus {
  const factory DeviceStatusHub2({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// temperature in celsius
    @JsonKey(defaultValue: 0.0) required double temperature,

    /// the level of illuminance of the ambience light, 1~20
    @JsonKey(defaultValue: 1) required int lightLevel,

    /// the current firmware version, e.g. V4.2
    @JsonKey(defaultValue: '') required String version,

    /// humidity percentage
    @JsonKey(defaultValue: 0) required int humidity,
  }) = _DeviceStatusHub2;

  factory DeviceStatusHub2.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusHub2FromJson(json);

  const DeviceStatusHub2._();

  /// device type: [PhysicalDeviceType.hub2]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.hub2;
}
