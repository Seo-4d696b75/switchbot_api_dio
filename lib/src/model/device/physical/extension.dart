import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

extension PhysicalDeviceExt on PhysicalDevice {
  PhysicalDevice copyWith({
    String? id,
    String? name,
    PhysicalDeviceType? type,
    bool? enableCloudService,
    String? hubDeviceId,
  }) =>
      map(
        curtain: (v) => v.copyWith(
          id: id ?? this.id,
          name: name ?? this.name,
          enableCloudService: enableCloudService ?? this.enableCloudService,
          hubDeviceId: hubDeviceId ?? this.hubDeviceId,
        ),
        lock: (v) => v.copyWith(
          id: id ?? this.id,
          name: name ?? this.name,
          enableCloudService: enableCloudService ?? this.enableCloudService,
          hubDeviceId: hubDeviceId ?? this.hubDeviceId,
        ),
        keypad: (v) => v.copyWith(
          id: id ?? this.id,
          name: name ?? this.name,
          enableCloudService: enableCloudService ?? this.enableCloudService,
          hubDeviceId: hubDeviceId ?? this.hubDeviceId,
        ),
        blindTilt: (v) => v.copyWith(
          id: id ?? this.id,
          name: name ?? this.name,
          enableCloudService: enableCloudService ?? this.enableCloudService,
          hubDeviceId: hubDeviceId ?? this.hubDeviceId,
        ),
        other: (_) => PhysicalDevice(
          id: id ?? this.id,
          name: name ?? this.name,
          type: type ?? this.type,
          enableCloudService: enableCloudService ?? this.enableCloudService,
          hubDeviceId: hubDeviceId ?? this.hubDeviceId,
        ),
      );

  R map<R>({
    required R Function(PhysicalDeviceCurtain) curtain,
    required R Function(PhysicalDeviceLock) lock,
    required R Function(PhysicalDeviceKeypad) keypad,
    required R Function(PhysicalDeviceBlindTilt) blindTilt,
    required R Function(PhysicalDevice) other,
  }) {
    final value = this;
    // ignore: missing_enum_constant_in_switch
    switch (value.type) {
      case PhysicalDeviceType.curtain:
        return curtain(value as PhysicalDeviceCurtain);
      case PhysicalDeviceType.lock:
        return lock(value as PhysicalDeviceLock);
      case PhysicalDeviceType.keypad:
      case PhysicalDeviceType.keypadTouch:
        return keypad(value as PhysicalDeviceKeypad);
      case PhysicalDeviceType.blindTilt:
        return blindTilt(value as PhysicalDeviceBlindTilt);
    }
    return other(value);
  }

  R maybeMap<R>({
    R Function(PhysicalDeviceCurtain)? curtain,
    R Function(PhysicalDeviceLock)? lock,
    R Function(PhysicalDeviceKeypad)? keypad,
    R Function(PhysicalDeviceBlindTilt)? blindTilt,
    required R Function(PhysicalDevice) orElse,
  }) =>
      map(
        curtain: curtain ?? orElse,
        lock: lock ?? orElse,
        keypad: keypad ?? orElse,
        blindTilt: blindTilt ?? orElse,
        other: orElse,
      );
}
