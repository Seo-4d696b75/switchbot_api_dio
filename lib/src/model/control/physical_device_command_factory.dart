import 'package:switchbot_api_dio/src/model/common/enum.dart';
import 'package:switchbot_api_dio/src/model/common/light_color.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';
import 'package:switchbot_api_dio/src/model/control/physical_device_command.dart';
import 'package:switchbot_api_dio/src/model/control/physical_device_command_impl.dart';

class BotCommandFactory {
  const BotCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// trigger press
  PhysicalDeviceCommand press() => const PressDeviceCommand();
}

class CurtainCommandFactory {
  const CurtainCommandFactory();

  /// - [mode] : 0 (Performance Mode), 1 (Silent Mode), ff (default mode)
  /// - [position] : 0~100 (0 means open, 100 means closed)
  PhysicalDeviceCommand setPosition({
    required int index,
    required String mode,
    required int position,
  }) =>
      CurtainDeviceCommand.setPosition(
        index: index,
        mode: mode,
        position: position,
      );

  /// Close the curtain
  ///
  /// equivalent to set position to 100
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// Open the curtain
  ///
  /// equivalent to set position to 0
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();
}

class LockCommandFactory {
  const LockCommandFactory();

  /// rotate to locked position
  PhysicalDeviceCommand lock() => const LockDeviceCommand.lock();

  /// rotate to unlocked position
  PhysicalDeviceCommand unlock() => const LockDeviceCommand.unlock();
}

class HumidifierCommandFactory {
  const HumidifierCommandFactory();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to Auto Mode
  PhysicalDeviceCommand setAutoMode() =>
      const HumidifierDeviceCommand.setAutoMode();

  /// set mode
  ///
  /// - 0-100
  /// - 101, set atomization efficiency to 34%
  /// - 102, set atomization efficiency to 67%
  /// - 103, set atomization efficiency to 100%
  PhysicalDeviceCommand setMode(int mode) =>
      HumidifierDeviceCommand.setMode(mode);
}

class PlugCommandFactory {
  const PlugCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();
}

class PlugMiniCommandFactory {
  const PlugMiniCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const ToggleDeviceCommand();
}

class ColorBulbCommandFactory {
  const ColorBulbCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const ToggleDeviceCommand();

  /// set brightness in 1-100
  PhysicalDeviceCommand setBrightness(int brightness) =>
      BrightnessDeviceCommand(brightness);

  /// set RGB color value
  PhysicalDeviceCommand setColor(LightColor color) => ColorDeviceCommand(color);

  /// set color temperature in 2700-6500
  PhysicalDeviceCommand setColorTemperature(int temperature) =>
      ColorTemperatureDeviceCommand(temperature);
}

class StripLightCommandFactory {
  const StripLightCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const ToggleDeviceCommand();

  /// set brightness in 1-100
  PhysicalDeviceCommand setBrightness(int brightness) =>
      BrightnessDeviceCommand(brightness);

  /// set RGB color value
  PhysicalDeviceCommand setColor(LightColor color) => ColorDeviceCommand(color);
}

class VacuumCleanerCommandFactory {
  const VacuumCleanerCommandFactory();

  /// start vacuuming
  PhysicalDeviceCommand start() => const VacuumCleanerDeviceCommand.start();

  /// stop vacuuming
  PhysicalDeviceCommand stop() => const VacuumCleanerDeviceCommand.stop();

  /// return to charging dock
  PhysicalDeviceCommand dock() => const VacuumCleanerDeviceCommand.dock();

  /// set suction power level
  ///
  /// - 0 (Quiet)
  /// - 1 (Standard)
  /// - 2 (Strong)
  /// - 3 (MAX)
  PhysicalDeviceCommand setPowerLevel(int level) =>
      VacuumCleanerDeviceCommand.setPowerLevel(level);
}

class CeilingLightCommandFactory {
  const CeilingLightCommandFactory();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const ToggleDeviceCommand();

  /// set brightness
  PhysicalDeviceCommand setBrightness(int brightness) =>
      BrightnessDeviceCommand(brightness);

  /// set the color temperature
  PhysicalDeviceCommand setColorTemperature(int temperature) =>
      ColorTemperatureDeviceCommand(temperature);
}

class KeypadCommandFactory {
  const KeypadCommandFactory();

  /// create a new passcode
  ///
  /// - [name] : a unique name for the passcode.
  ///   duplicates under the same device are not allowed.
  /// - [type] : type of the passcode
  /// - [password] : a 6 to 12-digit passcode in plain text
  /// - [startTime] : set the time the passcode becomes valid from,
  ///   mandatory for one-time passcode and temporary passcode.
  ///   a 10-digit timestamp.
  /// - [endTime] : set the time the passcode becomes expired,
  ///   mandatory for one-time passcode and temporary passcode.
  ///   a 10-digit timestamp.
  PhysicalDeviceCommand createKey({
    required String name,
    required PasscodeType type,
    required String password,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    if ((type == PasscodeType.disposable || type == PasscodeType.timeLimit) &&
        (startTime == null || endTime == null)) {
      throw ArgumentError(
        '`startTime` and `startEnd` are required'
        ' when type is `disposable` or `timeLimit`',
      );
    }
    final param = <String, dynamic>{
      'name': name,
      'type': type.name,
      'password': password,
    };
    if (startTime != null) {
      param['startTime'] = startTime.millisecondsSinceEpoch ~/ 1000;
    }
    if (endTime != null) {
      param['endTime'] = endTime.millisecondsSinceEpoch ~/ 1000;
    }
    return KeypadDeviceCommand(
      command: 'createKey',
      param: param,
    );
  }

  /// delete an existing passcode
  ///
  /// pass [id] of the passcode to be deleted
  PhysicalDeviceCommand deleteKey(int id) => KeypadDeviceCommand(
        command: 'deleteKey',
        param: {'id': id},
      );
}

class BlindTiltCommandFactory {
  const BlindTiltCommandFactory();

  /// - [direction] : up/down
  /// - [position] : 0~100
  ///   (0 means closed, 100 means open, it MUST be set to a multiple of 2)
  PhysicalDeviceCommand setPosition({
    required String direction,
    required int position,
  }) =>
      BlindDeviceCommand.setPosition(
        direction: direction,
        position: position,
      );

  /// Set the position of Blind Tilt to open
  ///
  /// equivalent to setting the position to up;100 or down;100
  PhysicalDeviceCommand fullyOpen() => const BlindDeviceCommand.fullyOpen();

  /// Set the position of Blind Tilt to closed up
  ///
  /// equivalent to setting the position to up;0
  PhysicalDeviceCommand closeUp() => const BlindDeviceCommand.closeUp();

  /// Set the position of Blind Tilt to closed down
  ///
  /// equivalent to setting the position to down;0
  PhysicalDeviceCommand closeDown() => const BlindDeviceCommand.closeDown();
}
