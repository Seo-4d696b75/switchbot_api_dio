// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Curtain' device
@freezed
class DeviceStatusCurtain with _$DeviceStatusCurtain implements DeviceStatus {
  const factory DeviceStatusCurtain({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// determines if the open position and the close position of
    /// a device have been properly calibrated or not
    @JsonKey(defaultValue: false) required bool calibrate,

    /// determines if a Curtain is paired with
    /// or grouped with another Curtain or not
    @JsonKey(defaultValue: false) required bool group,

    /// determines if a Curtain is moving or not
    @JsonKey(defaultValue: false) required bool moving,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V4.2
    @JsonKey(defaultValue: '') required String version,

    /// the percentage of the distance between the calibrated open position
    /// and closed position that Curtain has traversed
    @JsonKey(defaultValue: 0) required int slidePosition,
  }) = _DeviceStatusCurtain;

  const DeviceStatusCurtain._();

  factory DeviceStatusCurtain.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusCurtainFromJson(json);

  /// device type: [PhysicalDeviceType.curtain]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.curtain;
}
