import 'package:switchbot_api_dio/src/model/device/virtual/virtual_device.dart';

/// type of [VirtualDevice]
///
/// Available commands for virtual infrared remote devices depend on this type.
/// For more information,
/// [refer to SwitchBot api docs.](https://github.com/OpenWonderLabs/SwitchBotAPI#command-set-for-virtual-infrared-remote-devices)
enum VirtualDeviceType {
  airConditioner('Air Conditioner'),
  tv('TV'),
  ipTvStreamer('IPTV/Streamer'),
  setTopBox('Set Top Box'),
  dvd('DVD'),
  speaker('Speaker'),
  fan('Fan'),
  light('Light'),
  others('Others'),
  unknown('Unknown'),
  ;

  const VirtualDeviceType(this.value);

  /// displayed name in JSON response
  final String value;
}
