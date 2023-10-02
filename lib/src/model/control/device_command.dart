import 'package:switchbot_api_dio/src/client.dart';
import 'package:switchbot_api_dio/src/model/model.dart';

export 'physical_device_command.dart';
export 'virtual_device_command.dart';

/// Command for device
///
/// This data class stands for a request body posted to API endpoint like:
/// ```json
/// {
///     "command": "name of command",
///     "parameter": "params of command if any (maybe JSON Object)",
///     "commandType": "type of command"
/// }
/// ```
///
/// Subclasses are available for two device types;
/// - [PhysicalDeviceCommand]
/// - [VirtualDeviceCommand]
///
/// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#request-body-parameters)
abstract class DeviceCommand {
  /// Gets a raw command
  ///
  /// No validation done. If any invalid param,
  /// calling [SwitchBotApi.controlRaw] this this command
  /// results in throwing an exception.
  ///
  /// It is recommended to use instead:
  /// - [PhysicalDeviceCommand]
  /// - [VirtualDeviceCommand]
  const factory DeviceCommand.raw({
    required String type,
    required String command,
    dynamic param,
  }) = _DeviceCommandRaw;

  /// A param named 'commandType'.
  ///
  /// Its value must be;
  /// - 'command' for almost all the devices and commands,
  /// - 'customize' only for virtual device with [VirtualDeviceType.others]
  String get type;

  /// Defines what operation will be executed.
  String get command;

  /// Some commands needs additional parameter.
  ///
  /// If no param needed, must be set string 'default'
  dynamic get param;
}

extension DeviceCommandExt on DeviceCommand {
  Map<String, dynamic> toJson() {
    return {
      'commandType': type,
      'command': command,
      'parameter': param,
    };
  }
}

class _DeviceCommandRaw implements DeviceCommand {
  const _DeviceCommandRaw({
    required this.type,
    required this.command,
    this.param = 'default',
  });

  @override
  final String type;

  @override
  final String command;

  @override
  final dynamic param;

  @override
  String toString() {
    return 'DeviceCommandRaw(type: $type, command: $command, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceCommandRaw &&
            other.type == type &&
            other.command == command &&
            other.param == param);
  }

  @override
  int get hashCode => Object.hash(type, command, param);
}
