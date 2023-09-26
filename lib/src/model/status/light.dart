// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Ceiling Light' and 'Ceiling Light Pro' device
abstract class DeviceStatusCeilingLight
    with _$_DeviceStatusCeilingLight
    implements DeviceStatus {
  factory DeviceStatusCeilingLight({
    required String id,
    required PhysicalDeviceType type,
    required String hubDeviceId,
    required PowerState power,
    required String version,
    required int brightness,
    required int colorTemperature,
  }) {
    _assertType(type);
    return _DeviceStatusCeilingLight(
      id: id,
      type: type,
      hubDeviceId: hubDeviceId,
      power: power,
      version: version,
      brightness: brightness,
      colorTemperature: colorTemperature,
    );
  }

  factory DeviceStatusCeilingLight.fromJson(Map<String, dynamic> json) {
    final decoded = _DeviceStatusCeilingLight.fromJson(json);
    _assertType(decoded.type);
    return decoded;
  }

  static void _assertType(PhysicalDeviceType type) {
    if (type == PhysicalDeviceType.ceilingLight ||
        type == PhysicalDeviceType.ceilingLightPro) {
      return;
    }
    throw ArgumentError.value(
      type,
      'type',
      'not allowed for PhysicalDeviceCeilingLight',
    );
  }
}

@freezed
class _DeviceStatusCeilingLight
    with _$_DeviceStatusCeilingLight
    implements DeviceStatusCeilingLight {
  const factory _DeviceStatusCeilingLight({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.off)
    required PowerState power,

    /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
    @JsonKey(defaultValue: '') required String version,

    /// the brightness value, range from 1 to 100
    @JsonKey(defaultValue: 100) required int brightness,

    /// the color temperature value, range from 2700 to 6500
    @JsonKey(defaultValue: 2700) required int colorTemperature,
  }) = __DeviceStatusCeilingLight;

  factory _DeviceStatusCeilingLight.fromJson(Map<String, dynamic> json) =>
      _$_DeviceStatusCeilingLightFromJson(json);
}

/// Status of 'Strip Light' device
@freezed
class DeviceStatusStripLight
    with _$DeviceStatusStripLight
    implements DeviceStatus {
  const factory DeviceStatusStripLight({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.off)
    required PowerState power,

    /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
    @JsonKey(defaultValue: '') required String version,

    /// the brightness value, range from 1 to 100
    @JsonKey(defaultValue: 100) required int brightness,

    /// the color value, RGB "255:255:255"
    ///
    /// the alpha channel is 0xFF
    @ColorConverter() required Color color,
  }) = _DeviceStatusStripLight;

  const DeviceStatusStripLight._();

  factory DeviceStatusStripLight.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusStripLightFromJson(json);

  /// device type: [PhysicalDeviceType.stripLight]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.stripLight;
}

/// Status of 'Color Bulb' device
@freezed
class DeviceStatusColorBulb
    with _$DeviceStatusColorBulb
    implements DeviceStatus {
  const factory DeviceStatusColorBulb({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.off)
    required PowerState power,

    /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
    @JsonKey(defaultValue: '') required String version,

    /// the brightness value, range from 1 to 100
    @JsonKey(defaultValue: 100) required int brightness,

    /// the color value, RGB "255:255:255"
    ///
    /// the alpha channel is 0xFF
    @ColorConverter() required Color color,

    /// the color temperature value, range from 2700 to 6500
    @JsonKey(defaultValue: 2700) required int colorTemperature,
  }) = _DeviceStatusColorBulb;

  factory DeviceStatusColorBulb.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusColorBulbFromJson(json);

  const DeviceStatusColorBulb._();

  /// device type: [PhysicalDeviceType.colorBulb]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.colorBulb;
}
