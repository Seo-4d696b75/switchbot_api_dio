// ignore_for_file: invalid_annotation_target

part of 'device_status.dart';

/// Status of 'Meter', 'Meter Plus', and 'Outdoor Meter' device
abstract class DeviceStatusMeter
    with _$_DeviceStatusMeter
    implements DeviceStatus {
  factory DeviceStatusMeter({
    required String id,
    required PhysicalDeviceType type,
    required String hubDeviceId,
    required int battery,
    required String version,
    required double temperature,
    required int humidity,
  }) {
    _assertType(type);
    return _DeviceStatusMeter(
      id: id,
      type: type,
      hubDeviceId: hubDeviceId,
      battery: battery,
      version: version,
      temperature: temperature,
      humidity: humidity,
    );
  }

  factory DeviceStatusMeter.fromJson(Map<String, dynamic> json) {
    final decoded = _DeviceStatusMeter.fromJson(json);
    _assertType(decoded.type);
    return decoded;
  }

  static void _assertType(PhysicalDeviceType type) {
    if (type == PhysicalDeviceType.meter ||
        type == PhysicalDeviceType.meterPlus ||
        type == PhysicalDeviceType.outdoorMeter) {
      return;
    }
    throw ArgumentError.value(
      type,
      'type',
      'not allowed for PhysicalDeviceMeter',
    );
  }
}

@freezed
class _DeviceStatusMeter
    with _$_DeviceStatusMeter
    implements DeviceStatusMeter {
  const factory _DeviceStatusMeter({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,
    required String hubDeviceId,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V4.2
    @JsonKey(defaultValue: '') required String version,

    /// temperature in celsius
    required double temperature,

    /// humidity percentage
    required int humidity,
  }) = __DeviceStatusMeter;

  factory _DeviceStatusMeter.fromJson(Map<String, dynamic> json) =>
      _$_DeviceStatusMeterFromJson(json);
}
