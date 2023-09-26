part of 'physical_device_command.dart';

class BotCommandFactory {
  const BotCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// trigger press
  PhysicalDeviceCommand press() => const _PressDeviceCommand();
}

class CurtainCommandFactory {
  const CurtainCommandFactory._();

  /// - [mode] : 0 (Performance Mode), 1 (Silent Mode), ff (default mode)
  /// - [position] : 0~100 (0 means open, 100 means closed)
  PhysicalDeviceCommand setPosition({
    required int index,
    required String mode,
    required int position,
  }) =>
      _CurtainDeviceCommand.setPosition(
        index: index,
        mode: mode,
        position: position,
      );

  /// Close the curtain
  ///
  /// equivalent to set position to 100
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// Open the curtain
  ///
  /// equivalent to set position to 0
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();
}

class LockCommandFactory {
  const LockCommandFactory._();

  /// rotate to locked position
  PhysicalDeviceCommand lock() => const _LockDeviceCommand.lock();

  /// rotate to unlocked position
  PhysicalDeviceCommand unlock() => const _LockDeviceCommand.unlock();
}

class HumidifierCommandFactory {
  const HumidifierCommandFactory._();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to Auto Mode
  PhysicalDeviceCommand setAutoMode() =>
      const _HumidifierDeviceCommand.setAutoMode();

  /// set mode
  ///
  /// - 0-100
  /// - 101, set atomization efficiency to 34%
  /// - 102, set atomization efficiency to 67%
  /// - 103, set atomization efficiency to 100%
  PhysicalDeviceCommand setMode(int mode) =>
      _HumidifierDeviceCommand.setMode(mode);
}

class PlugCommandFactory {
  const PlugCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();
}

class PlugMiniCommandFactory {
  const PlugMiniCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const _ToggleDeviceCommand();
}

class ColorBulbCommandFactory {
  const ColorBulbCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const _ToggleDeviceCommand();

  /// set brightness in 1-100
  PhysicalDeviceCommand setBrightness(int brightness) =>
      _BrightnessDeviceCommand(brightness);

  /// set RGB color value
  PhysicalDeviceCommand setColor(Color color) => _ColorDeviceCommand(color);

  /// set color temperature in 2700-6500
  PhysicalDeviceCommand setColorTemperature(int temperature) =>
      _ColorTemperatureDeviceCommand(temperature);
}

class StripLightCommandFactory {
  const StripLightCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const _ToggleDeviceCommand();

  /// set brightness in 1-100
  PhysicalDeviceCommand setBrightness(int brightness) =>
      _BrightnessDeviceCommand(brightness);

  /// set RGB color value
  PhysicalDeviceCommand setColor(Color color) => _ColorDeviceCommand(color);
}

class VacuumCleanerCommandFactory {
  const VacuumCleanerCommandFactory._();

  /// start vacuuming
  PhysicalDeviceCommand start() => const _VacuumCleanerDeviceCommand.start();

  /// stop vacuuming
  PhysicalDeviceCommand stop() => const _VacuumCleanerDeviceCommand.stop();

  /// return to charging dock
  PhysicalDeviceCommand dock() => const _VacuumCleanerDeviceCommand.dock();

  /// set suction power level
  ///
  /// - 0 (Quiet)
  /// - 1 (Standard)
  /// - 2 (Strong)
  /// - 3 (MAX)
  PhysicalDeviceCommand setPowerLevel(int level) =>
      _VacuumCleanerDeviceCommand.setPowerLevel(level);
}

class CeilingLightCommandFactory {
  const CeilingLightCommandFactory._();

  /// set to ON state
  PhysicalDeviceCommand turnOn() => const _SwitchableDeviceCommand.turnOn();

  /// set to OFF state
  PhysicalDeviceCommand turnOff() => const _SwitchableDeviceCommand.turnOff();

  /// toggle state
  PhysicalDeviceCommand toggle() => const _ToggleDeviceCommand();

  /// set brightness
  PhysicalDeviceCommand setBrightness(int brightness) =>
      _BrightnessDeviceCommand(brightness);

  /// set the color temperature
  PhysicalDeviceCommand setColorTemperature(int temperature) =>
      _ColorTemperatureDeviceCommand(temperature);
}

class KeypadCommandFactory {
  const KeypadCommandFactory._();

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
    return _KeypadDeviceCommand(
      command: 'createKey',
      param: param,
    );
  }

  /// delete an existing passcode
  ///
  /// pass [id] of the passcode to be deleted
  PhysicalDeviceCommand deleteKey(int id) => _KeypadDeviceCommand(
        command: 'deleteKey',
        param: {'id': id},
      );
}

class BlindTiltCommandFactory {
  const BlindTiltCommandFactory._();

  /// - [direction] : up/down
  /// - [position] : 0~100
  ///   (0 means closed, 100 means open, it MUST be set to a multiple of 2)
  PhysicalDeviceCommand setPosition({
    required String direction,
    required int position,
  }) =>
      _BlindDeviceCommand.setPosition(
        direction: direction,
        position: position,
      );

  /// Set the position of Blind Tilt to open
  ///
  /// equivalent to setting the position to up;100 or down;100
  PhysicalDeviceCommand fullyOpen() => const _BlindDeviceCommand.fullyOpen();

  /// Set the position of Blind Tilt to closed up
  ///
  /// equivalent to setting the position to up;0
  PhysicalDeviceCommand closeUp() => const _BlindDeviceCommand.closeUp();

  /// Set the position of Blind Tilt to closed down
  ///
  /// equivalent to setting the position to down;0
  PhysicalDeviceCommand closeDown() => const _BlindDeviceCommand.closeDown();
}
