import 'package:switchbot_api_dio/src/client.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';
import 'package:switchbot_api_dio/src/model/device/device_collection.dart';
import 'package:switchbot_api_dio/src/model/status/device_status.dart';

/// Command for virtual infrared remote devices
///
/// Not only creating a command by specifying `command` and `param`,
/// but also factory constructors are available for commonly used commands.
/// Command can be sent by calling [SwitchBotApi.controlVirtualDevice].
///
/// Depending on [VirtualDeviceType] of a device,
/// available commands are limited.
///
/// ## All types except `others`
/// Primary constructor:
/// You can create a command by specifying `command` and `param`.
///
/// Factory constructors:
/// - [VirtualDeviceCommand.turnOn] and [VirtualDeviceCommand.turnOff] :
///   Almost all the devices support 'turnOn' and 'turnOff' command
/// - [VirtualDeviceCommand.airConditioner] : 'setAll' command
///   for 'Air Conditioner' type
/// - [VirtualDeviceCommand.setChannel] : 'setChannel' command
///   for 'TV', 'IPTV/Streamer', and 'Set Top Box' type
///
/// ## `others` type
/// [VirtualDeviceCommand.customize] must be used.
/// A device with 'other' type is user-defined button, and
/// its only command is trigger the button.
/// No other commands supported.
///
/// [More details are described in SwitchBot api docs.](https://github.com/OpenWonderLabs/SwitchBotAPI#command-set-for-virtual-infrared-remote-devices)
class VirtualDeviceCommand implements DeviceCommand {
  /// Command for devices with all types except 'others'.
  ///
  /// - Depending on [VirtualDeviceType] of a device,
  /// available [command] is limited.
  /// - [param] must be set corresponding to [command].
  /// If no param needed (described 'default' in API docs),
  /// set `null`
  factory VirtualDeviceCommand({
    required String command,
    String? param,
  }) =>
      VirtualDeviceCommand._(
        type: 'command',
        command: command,
        param: param ?? 'default',
      );

  /// 'turnOn' command for devices with all types except 'others'
  factory VirtualDeviceCommand.turnOn() =>
      VirtualDeviceCommand(command: 'turnOn');

  /// 'turnOff' command for devices with all types except 'others'
  factory VirtualDeviceCommand.turnOff() =>
      VirtualDeviceCommand(command: 'turnOff');

  /// Command for customized button
  ///
  /// All user-defined buttons must be controlled with this command
  factory VirtualDeviceCommand.customize({
    required String deviceName,
  }) =>
      VirtualDeviceCommand._(
        type: 'customize',
        command: deviceName,
        param: 'default',
      );

  /// Command for air conditioner
  ///
  /// - the unit of [temperature] is in celsius
  /// - [mode] include 1 (auto), 2 (cool), 3 (dry), 4 (fan), 5 (heat)
  /// - [fanSpeed] includes 1 (auto), 2 (low), 3 (medium), 4 (high)
  /// - [power] includes on and off
  factory VirtualDeviceCommand.airConditioner({
    required int temperature,
    required int mode,
    required int fanSpeed,
    required PowerState power,
  }) =>
      VirtualDeviceCommand._(
        type: 'command',
        command: 'setAll',
        param: [temperature, mode, fanSpeed, power].join(','),
      );

  /// Set the TV channel to [channelNumber]
  factory VirtualDeviceCommand.setChannel({
    required String channelNumber,
  }) =>
      VirtualDeviceCommand._(
        type: 'command',
        command: 'SetChannel',
        param: channelNumber,
      );

  const VirtualDeviceCommand._({
    required this.type,
    required this.command,
    required this.param,
  });

  @override
  final String type;

  @override
  final String command;

  @override
  final String param;

  @override
  String toString() {
    return 'VirtualDeviceCommand'
        '(type: $type, command: $command, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VirtualDeviceCommand &&
            other.type == type &&
            other.command == command &&
            other.param == param);
  }

  @override
  int get hashCode => Object.hash(type, command, param);
}
