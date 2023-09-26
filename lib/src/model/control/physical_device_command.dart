import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';
import 'package:switchbot_api_dio/src/model/converter.dart';
import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

part 'physical_device_command_factory.dart';

abstract class PhysicalDeviceCommand implements DeviceCommand {
  /// Set of supported device types
  Iterable<PhysicalDeviceType> get deviceTypes;

  /// Command for 'Bot' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#bot-2)
  static BotCommandFactory get bot => const BotCommandFactory._();

  /// Command for 'Curtain' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#curtain-2)
  static CurtainCommandFactory get curtain => const CurtainCommandFactory._();

  /// Command for 'Lock' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#lock-2)
  static LockCommandFactory get lock => const LockCommandFactory._();

  /// Command for 'Humidifier' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#humidifier-2)
  static HumidifierCommandFactory get humidifier =>
      const HumidifierCommandFactory._();

  /// Command for 'Plug' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#plug-2)
  static PlugCommandFactory get plug => const PlugCommandFactory._();

  /// Command for 'Plug Mini (US)' and 'Plug Mini (JP)' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#plug-mini-us-2)
  static PlugMiniCommandFactory get plugMini =>
      const PlugMiniCommandFactory._();

  /// Command for 'Color Bulb' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#color-bulb-2)
  static ColorBulbCommandFactory get colorBulb =>
      const ColorBulbCommandFactory._();

  /// Command for 'Strip Light' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#strip-light-2)
  static StripLightCommandFactory get stripLight =>
      const StripLightCommandFactory._();

  /// Command for 'Robot Vacuum Cleaner S1' and 'Robot Vacuum Cleaner S1 Plus' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#robot-vacuum-cleaner-s1-2)
  static VacuumCleanerCommandFactory get vacuumCleaner =>
      const VacuumCleanerCommandFactory._();

  /// Command for 'Ceiling Light' and 'Ceiling Light Pro' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#ceiling-light-2)
  static CeilingLightCommandFactory get ceilingLight =>
      const CeilingLightCommandFactory._();

  /// Command for 'Keypad' and 'Keypad Touch' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#keypad-2)
  static KeypadCommandFactory get keypad => const KeypadCommandFactory._();

  /// Command for 'Blind Tilt' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#blind-tilt-2)
  static BlindTiltCommandFactory get blindTilt =>
      const BlindTiltCommandFactory._();
}

// base implementation of PhysicalDeviceCommand
// getting an instance is limited via factory method
abstract class _PhysicalDeviceCommand implements PhysicalDeviceCommand {
  const _PhysicalDeviceCommand({
    required this.command,
    this.param = 'default',
  });

  @override
  String get type => 'command';

  @override
  final String command;

  @override
  final dynamic param;

  @override
  String toString() {
    return 'PhysicalDeviceCommand(type: $type, command: $command, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhysicalDeviceCommand &&
            other.type == type &&
            other.command == command &&
            other.param == param &&
            listEquals(deviceTypes.toList(), other.deviceTypes.toList()));
  }

  @override
  int get hashCode => Object.hash(type, command, param, deviceTypes.toList());
}

class _SwitchableDeviceCommand extends _PhysicalDeviceCommand {
  const _SwitchableDeviceCommand.turnOn() : super(command: 'turnOn');

  const _SwitchableDeviceCommand.turnOff() : super(command: 'turnOff');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.bot,
        PhysicalDeviceType.curtain,
        PhysicalDeviceType.humidifier,
        PhysicalDeviceType.plug,
        PhysicalDeviceType.plugMiniUS,
        PhysicalDeviceType.plugMiniJP,
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.stripLight,
        PhysicalDeviceType.ceilingLight,
        PhysicalDeviceType.ceilingLightPro,
      ];
}

class _PressDeviceCommand extends _PhysicalDeviceCommand {
  const _PressDeviceCommand() : super(command: 'press');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.bot,
      ];
}

class _CurtainDeviceCommand extends _PhysicalDeviceCommand {
  const _CurtainDeviceCommand.setPosition({
    required int index,
    required String mode,
    required int position,
  }) : super(
          command: 'setPosition',
          param: '$index,$mode,$position',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.curtain,
      ];
}

class _LockDeviceCommand extends _PhysicalDeviceCommand {
  const _LockDeviceCommand.lock() : super(command: 'lock');

  const _LockDeviceCommand.unlock() : super(command: 'unlock');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.lock,
      ];
}

class _HumidifierDeviceCommand extends _PhysicalDeviceCommand {
  const _HumidifierDeviceCommand.setAutoMode()
      : super(command: 'setMode', param: 'auto');

  const _HumidifierDeviceCommand.setMode(int mode)
      : super(
          command: 'setMode',
          param: '$mode',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.humidifier,
      ];
}

class _ToggleDeviceCommand extends _PhysicalDeviceCommand {
  const _ToggleDeviceCommand() : super(command: 'toggle');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.plugMiniUS,
        PhysicalDeviceType.plugMiniJP,
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.stripLight,
        PhysicalDeviceType.ceilingLight,
        PhysicalDeviceType.ceilingLightPro,
      ];
}

class _BrightnessDeviceCommand extends _PhysicalDeviceCommand {
  const _BrightnessDeviceCommand(int brightness)
      : super(
          command: 'setBrightness',
          param: '$brightness',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.stripLight,
        PhysicalDeviceType.ceilingLight,
        PhysicalDeviceType.ceilingLightPro,
      ];
}

class _ColorDeviceCommand extends _PhysicalDeviceCommand {
  _ColorDeviceCommand(Color color)
      : super(
          command: 'setColor',
          param: const ColorConverter().toJson(color),
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.stripLight,
      ];
}

class _ColorTemperatureDeviceCommand extends _PhysicalDeviceCommand {
  const _ColorTemperatureDeviceCommand(int temperature)
      : super(
          command: 'setColorTemperature',
          param: '$temperature',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.ceilingLight,
        PhysicalDeviceType.ceilingLightPro,
      ];
}

class _VacuumCleanerDeviceCommand extends _PhysicalDeviceCommand {
  const _VacuumCleanerDeviceCommand.start() : super(command: 'start');

  const _VacuumCleanerDeviceCommand.stop() : super(command: 'stop');

  const _VacuumCleanerDeviceCommand.dock() : super(command: 'dock');

  const _VacuumCleanerDeviceCommand.setPowerLevel(int level)
      : super(
          command: 'PowerLevel',
          param: '$level',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.robotVacuumCleanerS1,
        PhysicalDeviceType.robotVacuumCleanerS1Plus,
      ];
}

class _KeypadDeviceCommand extends _PhysicalDeviceCommand {
  const _KeypadDeviceCommand({
    required super.command,
    super.param,
  });

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.keypad,
        PhysicalDeviceType.keypadTouch,
      ];
}

class _BlindDeviceCommand extends _PhysicalDeviceCommand {
  const _BlindDeviceCommand.setPosition({
    required String direction,
    required int position,
  }) : super(
          command: 'setPosition',
          param: '$direction;$position',
        );

  const _BlindDeviceCommand.fullyOpen() : super(command: 'fullyOpen');

  const _BlindDeviceCommand.closeUp() : super(command: 'closeUp');

  const _BlindDeviceCommand.closeDown() : super(command: 'closeDown');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.blindTilt,
      ];
}
