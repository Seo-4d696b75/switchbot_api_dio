import 'package:switchbot_api_dio/src/client.dart';
import 'package:switchbot_api_dio/src/model/control/device_command.dart';
import 'package:switchbot_api_dio/src/model/control/physical_device_command_factory.dart';
import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

/// Command for physical device
///
/// For each [PhysicalDeviceType], factory methods are available.
/// This command can be sent by calling [SwitchBotApi.controlPhysicalDevice].
///
/// (eg) Gets 'press' command to 'Bot' device
/// ```dart
/// final command = PhysicalDeviceCommand.bot.press()
/// ```
abstract class PhysicalDeviceCommand implements DeviceCommand {
  /// Set of supported device types
  Iterable<PhysicalDeviceType> get deviceTypes;

  /// Command for 'Bot' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#bot-2)
  static BotCommandFactory get bot => const BotCommandFactory();

  /// Command for 'Curtain' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#curtain-2)
  static CurtainCommandFactory get curtain => const CurtainCommandFactory();

  /// Command for 'Lock' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#lock-2)
  static LockCommandFactory get lock => const LockCommandFactory();

  /// Command for 'Humidifier' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#humidifier-2)
  static HumidifierCommandFactory get humidifier =>
      const HumidifierCommandFactory();

  /// Command for 'Plug' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#plug-2)
  static PlugCommandFactory get plug => const PlugCommandFactory();

  /// Command for 'Plug Mini (US)' and 'Plug Mini (JP)' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#plug-mini-us-2)
  static PlugMiniCommandFactory get plugMini =>
      const PlugMiniCommandFactory();

  /// Command for 'Color Bulb' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#color-bulb-2)
  static ColorBulbCommandFactory get colorBulb =>
      const ColorBulbCommandFactory();

  /// Command for 'Strip Light' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#strip-light-2)
  static StripLightCommandFactory get stripLight =>
      const StripLightCommandFactory();

  /// Command for 'Robot Vacuum Cleaner S1' and
  /// 'Robot Vacuum Cleaner S1 Plus' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#robot-vacuum-cleaner-s1-2)
  static VacuumCleanerCommandFactory get vacuumCleaner =>
      const VacuumCleanerCommandFactory();

  /// Command for 'Ceiling Light' and 'Ceiling Light Pro' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#ceiling-light-2)
  static CeilingLightCommandFactory get ceilingLight =>
      const CeilingLightCommandFactory();

  /// Command for 'Keypad' and 'Keypad Touch' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#keypad-2)
  static KeypadCommandFactory get keypad => const KeypadCommandFactory();

  /// Command for 'Blind Tilt' device
  ///
  /// [SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#blind-tilt-2)
  static BlindTiltCommandFactory get blindTilt =>
      const BlindTiltCommandFactory();
}
