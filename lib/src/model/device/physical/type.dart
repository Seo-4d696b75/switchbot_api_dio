import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

/// Type of [PhysicalDevice]
enum PhysicalDeviceType {
  bot,
  curtain,
  hub,
  hubPlus,
  hubMini,
  hub2,
  meter,
  meterPlus,
  outdoorMeter,
  lock,
  keypad,
  keypadTouch,
  remote,
  motionSensor,
  contactSensor,
  ceilingLight,
  ceilingLightPro,
  plugMiniUS,
  plugMiniJP,
  plug,
  stripLight,
  colorBulb,
  robotVacuumCleanerS1,
  robotVacuumCleanerS1Plus,
  humidifier,
  indoorCam,
  panTiltCam,
  blindTilt,
}

extension PhysicalDeviceTypeExt on PhysicalDeviceType {
  /// Displayed name of device type
  String get value {
    switch (this) {
      case PhysicalDeviceType.bot:
        return 'Bot';
      case PhysicalDeviceType.curtain:
        return 'Curtain';
      case PhysicalDeviceType.hub:
        return 'Hub';
      case PhysicalDeviceType.hubPlus:
        return 'Hub Plus';
      case PhysicalDeviceType.hubMini:
        return 'Hub Mini';
      case PhysicalDeviceType.hub2:
        return 'Hub 2';
      case PhysicalDeviceType.meter:
        return 'Meter';
      case PhysicalDeviceType.meterPlus:
        return 'MeterPlus';
      case PhysicalDeviceType.outdoorMeter:
        return 'WoIOSensor';
      case PhysicalDeviceType.lock:
        return 'Smart Lock';
      case PhysicalDeviceType.keypad:
        return 'Keypad';
      case PhysicalDeviceType.keypadTouch:
        return 'Keypad Touch';
      case PhysicalDeviceType.remote:
        return 'Remote';
      case PhysicalDeviceType.motionSensor:
        return 'Motion Sensor';
      case PhysicalDeviceType.contactSensor:
        return 'Contact Sensor';
      case PhysicalDeviceType.ceilingLight:
        return 'Ceiling Light';
      case PhysicalDeviceType.ceilingLightPro:
        return 'Ceiling Light Pro';
      case PhysicalDeviceType.plugMiniUS:
        return 'Plug Mini (US)';
      case PhysicalDeviceType.plugMiniJP:
        return 'Plug Mini (JP)';
      case PhysicalDeviceType.plug:
        return 'Plug';
      case PhysicalDeviceType.stripLight:
        return 'Strip Light';
      case PhysicalDeviceType.colorBulb:
        return 'Color Bulb';
      case PhysicalDeviceType.robotVacuumCleanerS1:
        return 'Robot Vacuum Cleaner S1';
      case PhysicalDeviceType.robotVacuumCleanerS1Plus:
        return 'Robot Vacuum Cleaner S1 Plus';
      case PhysicalDeviceType.humidifier:
        return 'Humidifier';
      case PhysicalDeviceType.indoorCam:
        return 'Indoor Cam';
      case PhysicalDeviceType.panTiltCam:
        return 'Pan/Tilt Cam';
      case PhysicalDeviceType.blindTilt:
        return 'Blind Tilt';
    }
  }
}
