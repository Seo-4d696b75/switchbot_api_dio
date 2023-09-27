import 'package:switchbot_api_dio/switchbot_api_dio.dart';

void main() async {
  // init api client
  final api = SwitchBotApi(
    userToken: 'YourToken',
    userSecret: 'YourSecret',
  );

  // Get your all devices
  final devices = await api.getDevices();

  // Send control command
  await api.controlVirtualDevice(
    device: devices.infraredRemoteList[0],
    command: VirtualDeviceCommand.turnOn(),
  );
}
