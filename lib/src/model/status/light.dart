// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Light color value in ARGB format.
///
/// **Note** alpha is fixed to `0xFF`
///
/// This class has same interface as `Color` in `dart:ui` package
class LightColor {
  /// Construct a color from the lower 24 bits of an int.
  const LightColor(int rgb) : value = 0xFF000000 | (rgb & 0xFFFFFF);

  const LightColor.fromRGB(int r, int g, int b)
      : value = (0xFF << 24) | (r & 0xFF) << 16 | (g & 0xFF) << 8 | b & 0xFF;

  factory LightColor.fromJson(String json) {
    final channel = json.split(':');
    if (channel.length != 3) {
      throw ArgumentError.value(
        json,
        'json',
        'invalid RGB color value: `\$red:\$green:\$blue`',
      );
    }
    return LightColor.fromRGB(
      int.parse(channel[0]),
      int.parse(channel[1]),
      int.parse(channel[2]),
    );
  }

  /// A 32 bit value representing this color.
  final int value;

  int get alpha => 0xFF;

  int get red => (value >> 16) & 0xFF;

  int get green => (value >> 8) & 0xFF;

  int get blue => value & 0xFF;

  String toJson() => '$red:$green:$blue';

  @override
  String toString() =>
      'LightColor(0x${value.toRadixString(16).padLeft(8, '0')})';

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LightColor && other.value == value);
  }

  @override
  int get hashCode => value.hashCode;
}

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

    /// the color value
    @LightColorConverter() required LightColor color,
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

    /// the color value
    @LightColorConverter() required LightColor color,

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
