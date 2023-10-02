# switchbot_api_dio

[![Pub](https://img.shields.io/pub/v/switchbot_api_dio.svg)](https://pub.dev/packages/switchbot_api_dio)
[![test](https://github.com/Seo-4d696b75/switchbot_api_dio/actions/workflows/test.yaml/badge.svg)](https://github.com/Seo-4d696b75/switchbot_api_dio/actions/workflows/test.yaml)


A simple implementation of [SwitchBotAPI (v1.1)](https://github.com/OpenWonderLabs/SwitchBotAPI) 
client with [dio library](https://pub.dev/packages/dio).

**Note**: This is a 3rd party library 

## Features

- ✅ Get device list
- ✅ Get device status
- ✅ Send device control command
- ✅ Get scene list
- ✅ Execute manual scenes
- ❌ Webhook

Details of each API endpoint are described 
in [SwitchBotAPI docs](https://github.com/OpenWonderLabs/SwitchBotAPI/blob/main/README.md).

## Getting started

Add `switchbot_api_dio` package to your pubspec dependencies.

## Usage

### Initialize client

User token and secret are required for api authorization.  
These credentials are available in developer options of SwitchBot official app.
[Please follow the steps described in SwitchBotAPI docs.](https://github.com/OpenWonderLabs/SwitchBotAPI/tree/main#getting-started)

```dart
import 'package:switchbot_api_dio/switchbot_api_dio.dart';

final api = SwitchBotApi(
  userToken: 'token', 
  userSecret: 'secret',
);
```

### Get devices and send control command

```dart
void main() async {
  final collection = await api.getDevices();
  
  // A list of physical devices
  print(collection.deviceList);
  // A list of virtual infrared remote devices
  print(collection.infraredRemoteList);

  // Almost all devices support 'turnOn' command
  await api.controlVirtualDevice(
    device: collection.infraredRemoteList[0],
    command: VirtualDeviceCommand.turnOn(),
  );
  // Send 'press' command to physical device 'Bot'
  await api.controlPhysicalDevice(
    device: collection.deviceList[0],
    command: PhysicalDeviceCommand.bot.press(),
  );
}
```

### Get manual scenes and execute

```dart
void main() async {
  final scenes = await api.getScenes();
  await api.executeScene(sceneId: scenes[0].id);
}
```

### Error handling

```dart
void main() async {
  try {
    await api.getDevices();
  } on SwitchBotException catch (e) {
    // Depending on the type of error,
    // each subclass of `SwitchBotException` will be thrown
    print(e);
  }
}
```
