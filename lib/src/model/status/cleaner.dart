// ignore_for_file: invalid_annotation_target
part of 'device_status.dart';

/// Status of 'Robot Vacuum Cleaner S1'
/// and 'Robot Vacuum Cleaner S1 Plus' device
abstract class DeviceStatusVacuumCleaner
    with _$_DeviceStatusVacuumCleaner
    implements DeviceStatus {
  factory DeviceStatusVacuumCleaner({
    required String id,
    required PhysicalDeviceType type,
    required String hubDeviceId,
    required VacuumCleanerStatus workingStatus,
    required OnlineStatus onlineStatus,
    required int battery,
  }) {
    _assertType(type);
    return _DeviceStatusVacuumCleaner(
      id: id,
      hubDeviceId: hubDeviceId,
      type: type,
      workingStatus: workingStatus,
      onlineStatus: onlineStatus,
      battery: battery,
    );
  }

  factory DeviceStatusVacuumCleaner.fromJson(Map<String, dynamic> json) {
    final decoded = _DeviceStatusVacuumCleaner.fromJson(json);
    _assertType(decoded.type);
    return decoded;
  }

  static void _assertType(PhysicalDeviceType type) {
    if (type == PhysicalDeviceType.robotVacuumCleanerS1 ||
        type == PhysicalDeviceType.robotVacuumCleanerS1Plus) {
      return;
    }
    throw ArgumentError.value(
      type,
      'type',
      'not allowed for DeviceStatusVacuumCleaner',
    );
  }
}

@freezed
class _DeviceStatusVacuumCleaner
    with _$_DeviceStatusVacuumCleaner
    implements DeviceStatusVacuumCleaner {
  const factory _DeviceStatusVacuumCleaner({
    @JsonKey(name: 'deviceId') required String id,
    required String hubDeviceId,

    /// [PhysicalDeviceType.robotVacuumCleanerS1]
    /// or [PhysicalDeviceType.robotVacuumCleanerS1Plus]
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,

    /// the working status of the device
    @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
    @VacuumCleanerStatusConverter()
    required VacuumCleanerStatus workingStatus,

    /// the connection status of the device. online or offline
    @JsonKey(defaultValue: OnlineStatus.offline)
    @OnlineStatusConverter()
    required OnlineStatus onlineStatus,

    /// the current battery level
    @JsonKey(defaultValue: 0) required int battery,
  }) = __DeviceStatusVacuumCleaner;

  factory _DeviceStatusVacuumCleaner.fromJson(Map<String, dynamic> json) =>
      _$_DeviceStatusVacuumCleanerFromJson(json);
}

enum OnlineStatus { online, offline }

enum VacuumCleanerStatus {
  standBy('StandBy'),
  clearing('Clearing'),
  paused('Paused'),
  gotoChargeBase('GotoChargeBase'),
  charging('Charging'),
  dormant('Dormant'),
  inTrouble('InTrouble'),
  inRemoteControl('InRemoteControl'),
  inDustCollecting('InDustCollecting'),
  ;

  const VacuumCleanerStatus(this.value);

  final String value;
}
