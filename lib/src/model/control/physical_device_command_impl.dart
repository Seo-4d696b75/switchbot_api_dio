import 'package:switchbot_api_dio/src/model/common/light_color.dart';
import 'package:switchbot_api_dio/src/model/control/physical_device_command.dart';
import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

// base implementation
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
    return 'PhysicalDeviceCommand'
        '(type: $type, command: $command, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhysicalDeviceCommand &&
            other.type == type &&
            other.command == command &&
            other.param == param);
  }

  @override
  int get hashCode => Object.hash(type, command, param);
}

class SwitchableDeviceCommand extends _PhysicalDeviceCommand {
  const SwitchableDeviceCommand.turnOn() : super(command: 'turnOn');

  const SwitchableDeviceCommand.turnOff() : super(command: 'turnOff');

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

class PressDeviceCommand extends _PhysicalDeviceCommand {
  const PressDeviceCommand() : super(command: 'press');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.bot,
      ];
}

class CurtainDeviceCommand extends _PhysicalDeviceCommand {
  const CurtainDeviceCommand.setPosition({
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

class LockDeviceCommand extends _PhysicalDeviceCommand {
  const LockDeviceCommand.lock() : super(command: 'lock');

  const LockDeviceCommand.unlock() : super(command: 'unlock');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.lock,
      ];
}

class HumidifierDeviceCommand extends _PhysicalDeviceCommand {
  const HumidifierDeviceCommand.setAutoMode()
      : super(command: 'setMode', param: 'auto');

  const HumidifierDeviceCommand.setMode(int mode)
      : super(
          command: 'setMode',
          param: '$mode',
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.humidifier,
      ];
}

class ToggleDeviceCommand extends _PhysicalDeviceCommand {
  const ToggleDeviceCommand() : super(command: 'toggle');

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

class BrightnessDeviceCommand extends _PhysicalDeviceCommand {
  const BrightnessDeviceCommand(int brightness)
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

class ColorDeviceCommand extends _PhysicalDeviceCommand {
  ColorDeviceCommand(LightColor color)
      : super(
          command: 'setColor',
          param: color.toJson(),
        );

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.colorBulb,
        PhysicalDeviceType.stripLight,
      ];
}

class ColorTemperatureDeviceCommand extends _PhysicalDeviceCommand {
  const ColorTemperatureDeviceCommand(int temperature)
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

class VacuumCleanerDeviceCommand extends _PhysicalDeviceCommand {
  const VacuumCleanerDeviceCommand.start() : super(command: 'start');

  const VacuumCleanerDeviceCommand.stop() : super(command: 'stop');

  const VacuumCleanerDeviceCommand.dock() : super(command: 'dock');

  const VacuumCleanerDeviceCommand.setPowerLevel(int level)
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

class KeypadDeviceCommand extends _PhysicalDeviceCommand {
  const KeypadDeviceCommand({
    required super.command,
    super.param,
  });

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.keypad,
        PhysicalDeviceType.keypadTouch,
      ];
}

class BlindDeviceCommand extends _PhysicalDeviceCommand {
  const BlindDeviceCommand.setPosition({
    required String direction,
    required int position,
  }) : super(
          command: 'setPosition',
          param: '$direction;$position',
        );

  const BlindDeviceCommand.fullyOpen() : super(command: 'fullyOpen');

  const BlindDeviceCommand.closeUp() : super(command: 'closeUp');

  const BlindDeviceCommand.closeDown() : super(command: 'closeDown');

  @override
  Iterable<PhysicalDeviceType> get deviceTypes => const [
        PhysicalDeviceType.blindTilt,
      ];
}
