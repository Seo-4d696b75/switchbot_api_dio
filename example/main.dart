import 'package:switchbot_api_dio/switchbot_api_dio.dart';

void main() async {
  // init api client
  final api = SwitchBotApi(
    userToken: 'YourToken',
    userSecret: 'YourSecret',
  );

  // Get your all devices
  final collection = await api.getDevices();

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

  // Get manual scenes
  final scenes = await api.getScenes();

  // Execute a manual scene
  await api.executeScene(sceneId: scenes[0].id);

  // Error handling
  try {
    await api.getDevices();
  } on SwitchBotException catch (e) {
    // Depending on the type of error,
    // each subclass of `SwitchBotException` will be thrown
    print(e);
  }
}
