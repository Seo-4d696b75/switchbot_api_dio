// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Humidifier' device
@freezed
class DeviceStatusHumidifier
    with _$DeviceStatusHumidifier
    implements DeviceStatus {
  const factory DeviceStatusHumidifier({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// ON/OFF state
    @PowerStateConverter()
    @JsonKey(defaultValue: PowerState.off)
    required PowerState power,

    /// humidity percentage
    @JsonKey(defaultValue: 0) required int humidity,

    /// temperature in celsius
    @JsonKey(defaultValue: 0.0) required double temperature,

    /// atomization efficiency percentage
    @JsonKey(defaultValue: 0) required int nebulizationEfficiency,

    /// determines if a Humidifier is in Auto Mode or not
    @JsonKey(defaultValue: false) required bool auto,

    /// determines if a Humidifier's safety lock is on or not
    @JsonKey(defaultValue: false) required bool childLock,

    /// determines if a Humidifier is muted or not
    @JsonKey(defaultValue: false) required bool sound,

    /// determines if the water tank is empty or not
    @JsonKey(defaultValue: false) required bool lackWater,
  }) = _DeviceStatusHumidifier;

  factory DeviceStatusHumidifier.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusHumidifierFromJson(json);

  const DeviceStatusHumidifier._();

  /// device type: [PhysicalDeviceType.humidifier]
  @JsonKey(name: 'deviceType', includeToJson: true, includeFromJson: false)
  @PhysicalDeviceTypeConverter()
  @override
  PhysicalDeviceType get type => PhysicalDeviceType.humidifier;
}
