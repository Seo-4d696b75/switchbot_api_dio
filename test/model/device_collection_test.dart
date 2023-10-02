import 'dart:convert';
import 'dart:io';

import 'package:switchbot_api_dio/src/model/common/api_response.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

void main() {
  test('DeviceCollection', () {
    final str = File('assets/test/json/devices.json').readAsStringSync();
    final json = jsonDecode(str) as Map<String, dynamic>;
    final response = ApiResponse.fromJson(json);
    final collection = DeviceCollection.fromJson(
      response.body as Map<String, dynamic>,
    );

    expect(collection.deviceList.length, 1);
    final physicalDevice = collection.deviceList[0];
    expect(physicalDevice.id, '500291B269BE');
    expect(physicalDevice.type, PhysicalDeviceType.humidifier);

    expect(collection.infraredRemoteList.length, 1);
    final virtualDevice = collection.infraredRemoteList[0];
    expect(virtualDevice.id, '02-202008110034-13');
  });
}
