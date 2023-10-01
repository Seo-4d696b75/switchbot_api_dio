import 'dart:convert';

import 'package:switchbot_api_dio/src/model/common/enum.dart';
import 'package:switchbot_api_dio/src/model/common/light_color.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

import 'json_matcher.dart';

void main() {
  group('DeviceStatus', () {
    test('DeviceStatusBase', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Keypad",
        "hubDeviceId": "000000000000"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.keypad);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusBot', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Bot",
        "hubDeviceId": "000000000000",
        "power": "ON",
        "battery": 100,
        "version": "V6.3",
        "deviceMode": "pressMode"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.bot);
      expect(obj, isA<DeviceStatusBot>());
      obj as DeviceStatusBot;
      expect(obj.power, PowerState.on);
      expect(obj.battery, 100);
      expect(obj.version, 'V6.3');
      expect(obj.mode, BotMode.pressMode);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusCurtain', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Curtain",
        "hubDeviceId": "000000000000",
        "calibrate": false,
        "group": false,
        "moving": false,
        "battery": 50,
        "version": "V4.2",
        "slidePosition": 0
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.curtain);
      expect(obj, isA<DeviceStatusCurtain>());
      obj as DeviceStatusCurtain;
      expect(obj.calibrate, isFalse);
      expect(obj.battery, 50);
      expect(obj.version, 'V4.2');
      expect(obj.moving, isFalse);
      expect(obj.group, isFalse);
      expect(obj.slidePosition, 0);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusMeter', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "MeterPlus",
        "hubDeviceId": "000000000000",
        "battery": 50,
        "version": "V4.2",
        "temperature": 28.5,
        "humidity": 45
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.meterPlus);
      expect(obj, isA<DeviceStatusMeter>());
      obj as DeviceStatusMeter;
      expect(obj.temperature, 28.5);
      expect(obj.humidity, 45);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusContactSensor', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Contact Sensor",
        "hubDeviceId": "000000000000",
        "battery": 50,
        "version": "V4.2",
        "motionDetected": true,
        "openState": "open",
        "brightness": "bright"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.contactSensor);
      expect(obj, isA<DeviceStatusContactSensor>());
      obj as DeviceStatusContactSensor;
      expect(obj.brightness, SensorBrightness.bright);
      expect(obj.motionDetected, isTrue);
      expect(obj.openState, OpenState.open);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusCeilingLight', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Ceiling Light",
        "hubDeviceId": "000000000000",
        "power": "OFF",
        "version": "V4.2",
        "brightness": 80,
        "colorTemperature": 6000
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.ceilingLight);
      expect(obj, isA<DeviceStatusCeilingLight>());
      obj as DeviceStatusCeilingLight;
      expect(obj.brightness, 80);
      expect(obj.power, PowerState.off);
      expect(obj.colorTemperature, 6000);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusPlugMini', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Plug Mini (JP)",
        "hubDeviceId": "000000000000",
        "voltage": 100.0,
        "version": "V4.2",
        "weight": 30.5,
        "electricityOfDay": 120,
        "electricCurrent": 0.1
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.plugMiniJP);
      expect(obj, isA<DeviceStatusPlugMini>());
      obj as DeviceStatusPlugMini;
      expect(obj.voltage, 100.0);
      expect(obj.version, 'V4.2');
      expect(obj.weight, 30.5);
      expect(obj.electricityOfDay, 120);
      expect(obj.electricCurrent, 0.1);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusPlug', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Plug",
        "hubDeviceId": "000000000000",
        "power": "ON",
        "version": "V4.2"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.plug);
      expect(obj, isA<DeviceStatusPlug>());
      obj as DeviceStatusPlug;
      expect(obj.power, PowerState.on);
      expect(obj.version, 'V4.2');
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusStripLight', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Strip Light",
        "hubDeviceId": "000000000000",
        "power": "ON",
        "version": "V4.2",
        "brightness": 40,
        "color": "255:0:128"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.stripLight);
      expect(obj, isA<DeviceStatusStripLight>());
      obj as DeviceStatusStripLight;
      expect(obj.power, PowerState.on);
      expect(obj.version, 'V4.2');
      expect(obj.brightness, 40);
      expect(obj.color, const LightColor(0xFFFF0080));
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusColorBulb', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Color Bulb",
        "hubDeviceId": "000000000000",
        "power": "ON",
        "version": "V4.2",
        "brightness": 60,
        "color": "128:255:128",
        "colorTemperature": 6000
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.colorBulb);
      expect(obj, isA<DeviceStatusColorBulb>());
      obj as DeviceStatusColorBulb;
      expect(obj.power, PowerState.on);
      expect(obj.version, 'V4.2');
      expect(obj.brightness, 60);
      expect(obj.color, const LightColor(0xFF80FF80));
      expect(obj.colorTemperature, 6000);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusVacuumCleaner', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Robot Vacuum Cleaner S1",
        "hubDeviceId": "000000000000",
        "workingStatus": "Paused",
        "onlineStatus": "online",
        "battery": 80
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.robotVacuumCleanerS1);
      expect(obj, isA<DeviceStatusVacuumCleaner>());
      obj as DeviceStatusVacuumCleaner;
      expect(obj.battery, 80);
      expect(obj.workingStatus, VacuumCleanerStatus.paused);
      expect(obj.onlineStatus, OnlineStatus.online);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusHumidifier', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Humidifier",
        "hubDeviceId": "000000000000",
        "power": "ON",
        "humidity": 53,
        "temperature": 26.9,
        "nebulizationEfficiency": 20,
        "auto": true,
        "childLock": false,
        "sound": true,
        "lackWater": false
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.humidifier);
      expect(obj, isA<DeviceStatusHumidifier>());
      obj as DeviceStatusHumidifier;
      expect(obj.power, PowerState.on);
      expect(obj.humidity, 53);
      expect(obj.temperature, 26.9);
      expect(obj.nebulizationEfficiency, 20);
      expect(obj.auto, isTrue);
      expect(obj.childLock, isFalse);
      expect(obj.sound, isTrue);
      expect(obj.lackWater, isFalse);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusBlindTilt', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Blind Tilt",
        "hubDeviceId": "000000000000",
        "version": 10,
        "calibrate": true,
        "group": false,
        "moving": false,
        "direction": "down",
        "slidePosition": 0
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.blindTilt);
      expect(obj, isA<DeviceStatusBlindTilt>());
      obj as DeviceStatusBlindTilt;
      expect(obj.calibrate, isTrue);
      expect(obj.group, isFalse);
      expect(obj.moving, isFalse);
      expect(obj.direction, 'down');
      expect(obj.slidePosition, 0);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('DeviceStatusHub2', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceType": "Hub 2",
        "hubDeviceId": "000000000000",
        "temperature": 24.5,
        "lightLevel": 18,
        "version": "V4.2",
        "humidity": 53
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = DeviceStatus.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.hub2);
      expect(obj, isA<DeviceStatusHub2>());
      obj as DeviceStatusHub2;
      expect(obj.temperature, 24.5);
      expect(obj.lightLevel, 18);
      expect(obj.version, 'V4.2');
      expect(obj.humidity, 53);
      expect(obj.toJson(), jsonMatch(str));
    });
  });
}
