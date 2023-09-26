// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Plug' device
@freezed
class DeviceStatusPlug with _$DeviceStatusPlug implements DeviceStatus {
  const factory DeviceStatusPlug({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.off)
    required PowerState power,

    /// the current Wi-Fi firmware version, e.g. V4.2
    @JsonKey(defaultValue: '') required String version,
  }) = _DeviceStatusPlug;

  factory DeviceStatusPlug.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusPlugFromJson(json);

  const DeviceStatusPlug._();

  /// device type: [PhysicalDeviceType.plug]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.plug;
}

/// Status of 'Plug Mini (US)' and 'Plug Mini (JP)' device
abstract class DeviceStatusPlugMini
    with _$_DeviceStatusPlugMini
    implements DeviceStatus {
  factory DeviceStatusPlugMini({
    required String id,
    required PhysicalDeviceType type,
    required String hubDeviceId,
    required double voltage,
    required String version,
    required double weight,
    required int electricityOfDay,
    required double electricCurrent,
  }) {
    _assertType(type);
    return _DeviceStatusPlugMini(
      id: id,
      type: type,
      hubDeviceId: hubDeviceId,
      voltage: voltage,
      version: version,
      weight: weight,
      electricityOfDay: electricityOfDay,
      electricCurrent: electricCurrent,
    );
  }

  factory DeviceStatusPlugMini.fromJson(Map<String, dynamic> json) {
    final d = _DeviceStatusPlugMini.fromJson(json);
    _assertType(d.type);
    return d;
  }

  static void _assertType(PhysicalDeviceType type) {
    if (type == PhysicalDeviceType.plugMiniJP ||
        type == PhysicalDeviceType.plugMiniUS) {
      return;
    }
    throw ArgumentError.value(
      type,
      'type',
      'not allowed for PhysicalDevicePlugMini',
    );
  }
}

@freezed
class _DeviceStatusPlugMini
    with _$_DeviceStatusPlugMini
    implements DeviceStatusPlugMini {
  const factory _DeviceStatusPlugMini({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,

    /// the voltage of the device, measured in Volt
    @JsonKey(defaultValue: 0.0) required double voltage,

    /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
    @JsonKey(defaultValue: '') required String version,

    /// the power consumed in a day, measured in Watts
    @JsonKey(defaultValue: 0.0) required double weight,

    /// the duration that the device has been used during a day, measured in minutes
    @JsonKey(defaultValue: 0) required int electricityOfDay,

    /// the current of the device at the moment, measured in Amp
    @JsonKey(defaultValue: 0.0) required double electricCurrent,
  }) = __DeviceStatusPlugMini;

  factory _DeviceStatusPlugMini.fromJson(Map<String, dynamic> json) =>
      _$_DeviceStatusPlugMiniFromJson(json);
}
