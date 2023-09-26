// ignore_for_file: invalid_annotation_target

part of 'physical_device.dart';

/// 'Smart Lock' device
@freezed
class PhysicalDeviceLock with _$PhysicalDeviceLock implements PhysicalDevice {
  const factory PhysicalDeviceLock({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceName') required String name,
    required bool enableCloudService,
    required String hubDeviceId,

    /// determines if a Lock is grouped with another Lock or not
    @JsonKey(defaultValue: false) required bool group,

    /// determines if a Lock is the master device or not
    /// when grouped with another Lock in Dual Lock mode
    @JsonKey(defaultValue: true) required bool master,

    /// the name of the Lock group
    @JsonKey(defaultValue: null) required String? groupName,

    /// a list of Lock device IDs
    /// such that the Lock devices are being grouped in Dual Lock mode
    @JsonKey(defaultValue: []) required List<String> lockDevicesIds,
  }) = _PhysicalDeviceLock;

  const PhysicalDeviceLock._();

  factory PhysicalDeviceLock.fromJson(Map<String, dynamic> json) =>
      _$PhysicalDeviceLockFromJson(json);

  /// device type: [PhysicalDeviceType.lock]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.lock;
}
