import 'package:switchbot_api_dio/src/model/device/device_collection.dart';

export 'physical_device_command.dart';
export 'virtual_device_command.dart';

/// Command for device
///
/// This class defines request body in JSON posted to API endpoint.
///
/// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#request-body-parameters)
abstract class DeviceCommand {
  const factory DeviceCommand.raw({
    required String type,
    required String command,
    dynamic param,
  }) = DeviceCommandRaw._;

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

class DeviceCommandRaw implements DeviceCommand {
  const DeviceCommandRaw._({
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
        (other is DeviceCommandRaw &&
            other.type == type &&
            other.command == command &&
            other.param == param);
  }

  @override
  int get hashCode => Object.hash(type, command, param);
}
