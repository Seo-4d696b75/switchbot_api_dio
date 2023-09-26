import 'dart:convert';
import 'dart:io';

import 'package:switchbot_api_dio/src/model/api_response.dart';
import 'package:switchbot_api_dio/switchbot_api_dio.dart';
import 'package:test/test.dart';

void main() {
  test('ManualScene', () {
    final str = File('assets/test/json/scenes.json').readAsStringSync();
    final json = jsonDecode(str) as Map<String, dynamic>;
    final response = ApiResponse.fromJson(json);
    final list = ManualScene.parseListJson(response.body as List<dynamic>);

    expect(list.length, 5);
    final scene = list[0];
    expect(scene.id, 'T02-20200804130110');
    expect(scene.name, 'Close Office Devices');
  });
}
