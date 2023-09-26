// ignore_for_file: invalid_annotation_target

part of 'physical_device.dart';

/// 'Curtain' device
@freezed
class PhysicalDeviceCurtain
    with _$PhysicalDeviceCurtain
    implements PhysicalDevice {
  const factory PhysicalDeviceCurtain({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceName') required String name,
    required bool enableCloudService,
    required String hubDeviceId,

    /// a list of Curtain device IDs
    /// such that the Curtain devices are being paired or grouped
    @JsonKey(defaultValue: []) required List<String> curtainDevicesIds,

    /// determines if the open position and
    /// the close position of a device have been properly calibrated or not
    @JsonKey(defaultValue: false) required bool calibrate,

    /// determines if a Curtain is paired with
    /// or grouped with another Curtain or not
    @JsonKey(defaultValue: false) required bool group,

    /// determines if a Curtain is the master device or not
    /// when paired with or grouped with another Curtain
    @JsonKey(defaultValue: true) required bool master,

    /// the opening direction of a Curtain
    @JsonKey(defaultValue: '') required String openDirection,
  }) = _PhysicalDeviceCurtain;

  const PhysicalDeviceCurtain._();

  factory PhysicalDeviceCurtain.fromJson(Map<String, dynamic> json) =>
      _$PhysicalDeviceCurtainFromJson(json);

  /// device type: [PhysicalDeviceType.curtain]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.curtain;
}
