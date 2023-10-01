// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Motion Sensor' device
@freezed
class DeviceStatusMotionSensor
    with _$DeviceStatusMotionSensor
    implements DeviceStatus {
  const factory DeviceStatusMotionSensor({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V6.3
    @JsonKey(defaultValue: '') required String version,

    /// determines if motion is detected
    @JsonKey(defaultValue: false) required bool motionDetected,

    /// the ambient brightness picked up by the sensor. bright or dim
    @BrightnessConverter()
    @JsonKey(defaultValue: SensorBrightness.dim)
    required SensorBrightness brightness,
  }) = _DeviceStatusMotionSensor;

  const DeviceStatusMotionSensor._();

  factory DeviceStatusMotionSensor.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusMotionSensorFromJson(json);

  /// device type: [PhysicalDeviceType.motionSensor]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.motionSensor;
}

/// Status of 'Contact Sensor' device
@freezed
class DeviceStatusContactSensor
    with _$DeviceStatusContactSensor
    implements DeviceStatus {
  const factory DeviceStatusContactSensor({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// the current battery level, 0-100
    @JsonKey(defaultValue: 0) required int battery,

    /// the current firmware version, e.g. V6.3
    @JsonKey(defaultValue: '') required String version,

    /// determines if motion is detected
    @JsonKey(defaultValue: false) required bool motionDetected,

    /// the ambient brightness picked up by the sensor. bright or dim
    @BrightnessConverter()
    @JsonKey(defaultValue: SensorBrightness.dim)
    required SensorBrightness brightness,

    /// the open state of the sensor. open, close, or timeOutNotClose
    @OpenStateConverter()
    @JsonKey(defaultValue: OpenState.close)
    required OpenState openState,
  }) = _DeviceStatusContactSensor;

  const DeviceStatusContactSensor._();

  factory DeviceStatusContactSensor.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusContactSensorFromJson(json);

  /// device type: [PhysicalDeviceType.contactSensor]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.contactSensor;
}

/// Brightness sensed by "** Sensor" device
enum SensorBrightness {
  bright,
  dim,
}

/// Open state sensed by 'Contact Sensor' device
enum OpenState {
  open,
  close,
  timeOutNotClose,
}
