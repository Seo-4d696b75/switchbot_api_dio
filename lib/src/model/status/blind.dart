// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Blind Tilt' device
@freezed
class DeviceStatusBlindTilt
    with _$DeviceStatusBlindTilt
    implements DeviceStatus {
  const factory DeviceStatusBlindTilt({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// the firmware version of the device
    @JsonKey(defaultValue: 0) required int version,

    /// determines if the open and the closed positions
    /// have been properly calibrated or not
    @JsonKey(defaultValue: false) required bool calibrate,

    /// determines if a Blind Tilt device is paired with or grouped with
    /// one or more devices of the same type or not
    @JsonKey(defaultValue: false) required bool group,

    /// determines if the device is moving or not
    @JsonKey(defaultValue: true) required bool moving,

    /// the opening direction of a Blind Tilt device
    @JsonKey(defaultValue: 'Down') required String direction,

    /// the current position, 0-100
    @JsonKey(defaultValue: 0) required int slidePosition,
  }) = _DeviceStatusBlindTilt;

  const DeviceStatusBlindTilt._();

  factory DeviceStatusBlindTilt.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusBlindTiltFromJson(json);

  /// device type: [PhysicalDeviceType.blindTilt]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.blindTilt;
}
