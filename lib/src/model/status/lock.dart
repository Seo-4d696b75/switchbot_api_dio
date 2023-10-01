// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Lock' device
@freezed
class DeviceStatusLock with _$DeviceStatusLock implements DeviceStatus {
  const factory DeviceStatusLock({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V6.3
    @JsonKey(defaultValue: '') required String version,

    /// determines if locked or not
    @LockStateConverter() required LockState lockState,

    /// determines if the door is closed or not
    required String doorState,

    /// determines if Lock has been calibrated or not
    @JsonKey(defaultValue: false) required bool calibrate,
  }) = _DeviceStatusLock;

  const DeviceStatusLock._();

  factory DeviceStatusLock.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusLockFromJson(json);

  /// device type: [PhysicalDeviceType.lock]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.lock;
}
