// ignore_for_file: invalid_annotation_target

part of 'physical_device.dart';

/// 'Blind Tilt' device
@freezed
class PhysicalDeviceBlindTilt
    with _$PhysicalDeviceBlindTilt
    implements PhysicalDevice {
  const factory PhysicalDeviceBlindTilt({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceName') required String name,
    required bool enableCloudService,
    required String hubDeviceId,

    /// the version of the device
    @JsonKey(defaultValue: 0) required int version,

    /// a list of Blind Tilt device IDs
    /// such that the Blind Tilt devices are being paired or grouped
    @JsonKey(defaultValue: []) required List<String> blindTiltDevicesIds,

    /// determines if the open and the closed positions
    /// have been properly calibrated or not
    @JsonKey(defaultValue: false) required bool calibrate,

    /// determines if a Blind Tilt device is paired with or grouped with
    /// one or more devices of the same type or not
    @JsonKey(defaultValue: false) required bool group,

    /// determines if a Blind Tilt device is the master device or not
    /// when paired with or grouped with one or more devices of the same type
    @JsonKey(defaultValue: true) required bool master,

    /// the opening direction of a Blind Tilt device
    @JsonKey(defaultValue: 'Down') required String direction,

    /// the current position, 0-100
    @JsonKey(defaultValue: 0) required int slidePosition,
  }) = _PhysicalDeviceBlindTilt;

  const PhysicalDeviceBlindTilt._();

  factory PhysicalDeviceBlindTilt.fromJson(Map<String, dynamic> json) =>
      _$PhysicalDeviceBlindTiltFromJson(json);

  /// device type: [PhysicalDeviceType.blindTilt]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.blindTilt;
}
