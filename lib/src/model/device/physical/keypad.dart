// ignore_for_file: invalid_annotation_target

part of 'physical_device.dart';

/// 'Keypad' and 'Keypad Touch' device
abstract class PhysicalDeviceKeypad
    with _$_PhysicalDeviceKeypad
    implements PhysicalDevice {
  factory PhysicalDeviceKeypad({
    required String id,
    required String name,
    required PhysicalDeviceType type,
    required bool enableCloudService,
    required String hubDeviceId,
    required String lockDeviceId,
    required List<LockPasscode> keyList,
  }) {
    _assertType(type);
    return _PhysicalDeviceKeypad(
      id: id,
      name: name,
      type: type,
      enableCloudService: enableCloudService,
      hubDeviceId: hubDeviceId,
      lockDeviceId: lockDeviceId,
      keyList: keyList,
    );
  }

  factory PhysicalDeviceKeypad.fromJson(Map<String, dynamic> json) {
    final decoded = _PhysicalDeviceKeypad.fromJson(json);
    _assertType(decoded.type);
    return decoded;
  }

  static void _assertType(PhysicalDeviceType type) {
    if (type == PhysicalDeviceType.keypad ||
        type == PhysicalDeviceType.keypadTouch) {
      return;
    }
    throw ArgumentError.value(
      type,
      'type',
      'not allowed for PhysicalDeviceKeypad',
    );
  }
}

@freezed
class _PhysicalDeviceKeypad
    with _$_PhysicalDeviceKeypad
    implements PhysicalDeviceKeypad {
  const factory _PhysicalDeviceKeypad({
    @JsonKey(name: 'deviceId') required String id,
    @JsonKey(name: 'deviceName') required String name,

    /// device type:
    /// [PhysicalDeviceType.keypad] or [PhysicalDeviceType.keypadTouch]
    @JsonKey(name: 'deviceType')
    @PhysicalDeviceTypeConverter()
    required PhysicalDeviceType type,
    required bool enableCloudService,
    required String hubDeviceId,
    // keypad must be paired with a Lock device,
    // to be registered in SwitchBot app
    /// MAC address of the Lock that the current device is paired with
    required String lockDeviceId,

    /// a list of passcodes
    @JsonKey(defaultValue: []) required List<LockPasscode> keyList,
  }) = __PhysicalDeviceKeypad;

  factory _PhysicalDeviceKeypad.fromJson(Map<String, dynamic> json) =>
      _$_PhysicalDeviceKeypadFromJson(json);
}
