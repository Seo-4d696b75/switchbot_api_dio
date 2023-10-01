import 'dart:convert';

import 'package:switchbot_api_dio/src/model/common/enum.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

import 'json_matcher.dart';

void main() {
  group('PhysicalDevice', () {
    test('PhysicalDeviceBase', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Living Room Humidifier",
        "deviceType": "Humidifier",
        "enableCloudService": true,
        "hubDeviceId": "000000000000"
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.toJson(), jsonMatch(str));
    });
    test('PhysicalDeviceCurtain', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Living Room Curtain",
        "deviceType": "Curtain",
        "enableCloudService": true,
        "hubDeviceId": "000000000000",
        "curtainDevicesIds": [
          "000000000001",
          "000000000002"
        ],
        "calibrate": false,
        "group": true,
        "master": true,
        "openDirection": ""
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      expect(obj, isA<PhysicalDeviceCurtain>());
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.curtain);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('PhysicalDeviceLock', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Door Lock",
        "deviceType": "Smart Lock",
        "enableCloudService": true,
        "hubDeviceId": "000000000000",
        "group": true,
        "groupName": "Door",
        "master": true,
        "lockDevicesIds": [
          "000000000001",
          "000000000002"
        ]
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      expect(obj, isA<PhysicalDeviceLock>());
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.lock);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('PhysicalDeviceKeypad', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Door Lock Keypad",
        "deviceType": "Keypad Touch",
        "enableCloudService": true,
        "hubDeviceId": "000000000000",
        "lockDeviceId": "00:03:93:FF:FF:00",
        "keyList": [
          {
            "id": 123456,
            "name": "Main Passcode",
            "type": "permanent",
            "password": "k4MdsGfgBIqiFmBN+QgdsZB3lQswqVllUWOUZTNu/Kc=",
            "iv": "36353439373038383732393333373034",
            "status": "normal",
            "createTime": 1693459610
          },
          {
            "id": 123457,
            "name": "One Time Passcode",
            "type": "disposable",
            "password": "k4MdsGfgBIqiFmBN+QgdsZB3lQswqVllUWOUZTNu/Kc=",
            "iv": "36353439373038383732393333373034",
            "status": "expired",
            "createTime": 1693459610
          }
        ]
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      expect(obj, isA<PhysicalDeviceKeypad>());
      obj as PhysicalDeviceKeypad;
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.keypadTouch);
      expect(obj.keyList.length, 2);
      final passcode = obj.keyList[1];
      expect(passcode.type, PasscodeType.disposable);
      expect(passcode.status, PasscodeStatus.expired);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('PhysicalDeviceBlindTilt', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Living Room Blind",
        "deviceType": "Blind Tilt",
        "enableCloudService": true,
        "hubDeviceId": "000000000000",
        "version": 123,
        "blindTiltDevicesIds": [
          "000000000001",
          "000000000002"
        ],
        "calibrate": false,
        "group": true,
        "master": false,
        "direction": "up",
        "slidePosition": 20
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      expect(obj.id, '500291B269BE');
      expect(obj.type, PhysicalDeviceType.blindTilt);
      expect(obj, isA<PhysicalDeviceBlindTilt>());
      obj as PhysicalDeviceBlindTilt;
      expect(obj.blindTiltDevicesIds.length, 2);
      expect(obj.toJson(), jsonMatch(str));
    });
    test('extension', () {
      const str = '''
      {
        "deviceId": "500291B269BE",
        "deviceName": "Living Room Curtain",
        "deviceType": "Curtain",
        "enableCloudService": true,
        "hubDeviceId": "000000000000",
        "curtainDevicesIds": [
          "000000000001",
          "000000000002"
        ],
        "calibrate": false,
        "group": true,
        "master": true,
        "openDirection": ""
      }
      ''';
      final json = jsonDecode(str) as Map<String, dynamic>;
      final obj = PhysicalDevice.fromJson(json);
      final copy = obj.copyWith(id: '123456789');
      expect(copy, isA<PhysicalDeviceCurtain>());
      expect(copy.id, '123456789');
      expect(obj.type, PhysicalDeviceType.curtain);

      final r1 = obj.map(
        curtain: (_) => true,
        lock: (_) => false,
        keypad: (_) => false,
        blindTilt: (_) => false,
        other: (_) => false,
      );
      expect(r1, isTrue);
      final r2 = obj.maybeMap(
        lock: (_) => true,
        orElse: (_) => false,
      );
      expect(r2, isFalse);
    });
  });
}
