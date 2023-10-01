import 'package:switchbot_api_dio/src/model/device/virtual/virtual_device.dart';

/// Type of [VirtualDevice]
///
/// Available commands for virtual infrared remote devices depend on this type.
/// For more information,
/// [refer to SwitchBot api docs.](https://github.com/OpenWonderLabs/SwitchBotAPI#command-set-for-virtual-infrared-remote-devices)
enum VirtualDeviceType {
  airConditioner,
  tv,
  ipTvStreamer,
  setTopBox,
  dvd,
  speaker,
  fan,
  light,
  others,
  unknown,
}

extension VirtualDeviceTypeExt on VirtualDeviceType {
  /// displayed name in JSON response
  String get value {
    switch (this) {
      case VirtualDeviceType.airConditioner:
        return 'Air Conditioner';
      case VirtualDeviceType.tv:
        return 'TV';
      case VirtualDeviceType.ipTvStreamer:
        return 'IPTV/Streamer';
      case VirtualDeviceType.setTopBox:
        return 'Set Top Box';
      case VirtualDeviceType.dvd:
        return 'DVD';
      case VirtualDeviceType.speaker:
        return 'Speaker';
      case VirtualDeviceType.fan:
        return 'Fan';
      case VirtualDeviceType.light:
        return 'Light';
      case VirtualDeviceType.others:
        return 'Others';
      case VirtualDeviceType.unknown:
        return 'Unknown';
    }
  }
}
