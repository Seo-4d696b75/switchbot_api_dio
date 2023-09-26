// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Bot' device
@freezed
class DeviceStatusBot with _$DeviceStatusBot implements DeviceStatus {
  const factory DeviceStatusBot({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.on)
    required PowerState power,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V6.3
    @JsonKey(defaultValue: '') required String version,

    /// pressMode, switchMode, or customizeMode
    @JsonKey(name: 'deviceMode') required BotMode mode,
  }) = _DeviceStatusBot;

  const DeviceStatusBot._();

  factory DeviceStatusBot.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusBotFromJson(json);

  /// device type: [PhysicalDeviceType.bot]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.bot;
}

enum BotMode {
  pressMode,
  switchMode,
  customizeMode,
}

enum PowerState {
  on,
  off,
}
