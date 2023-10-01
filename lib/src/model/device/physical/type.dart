import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';

/// Type of [PhysicalDevice]
enum PhysicalDeviceType {
  bot('Bot'),
  curtain('Curtain'),
  hub('Hub'),
  hubPlus('Hub Plus'),
  hubMini('Hub Mini'),
  hub2('Hub 2'),
  meter('Meter'),
  meterPlus('MeterPlus'),
  outdoorMeter('WoIOSensor'),
  lock('Smart Lock'),
  keypad('Keypad'),
  keypadTouch('Keypad Touch'),
  remote('Remote'),
  motionSensor('Motion Sensor'),
  contactSensor('Contact Sensor'),
  ceilingLight('Ceiling Light'),
  ceilingLightPro('Ceiling Light Pro'),
  plugMiniUS('Plug Mini (US)'),
  plugMiniJP('Plug Mini (JP)'),
  plug('Plug'),
  stripLight('Strip Light'),
  colorBulb('Color Bulb'),
  robotVacuumCleanerS1('Robot Vacuum Cleaner S1'),
  robotVacuumCleanerS1Plus('Robot Vacuum Cleaner S1 Plus'),
  humidifier('Humidifier'),
  indoorCam('Indoor Cam'),
  panTiltCam('Pan/Tilt Cam'),
  blindTilt('Blind Tilt'),
  ;

  const PhysicalDeviceType(this.value);

  /// Displayed name of device type
  final String value;
}
