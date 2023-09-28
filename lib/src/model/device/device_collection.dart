import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/client.dart';
import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';
import 'package:switchbot_api_dio/src/model/device/virtual/virtual_device.dart';

export 'physical/physical_device.dart';
export 'virtual/virtual_device.dart';

part 'device_collection.freezed.dart';

part 'device_collection.g.dart';

/// Set of all devices returned from [SwitchBotApi.getDevices]
@freezed
class DeviceCollection with _$DeviceCollection {
  const factory DeviceCollection({
    /// a list of physical devices
    required List<PhysicalDevice> deviceList,

    /// a list of virtual infrared remote devices
    required List<VirtualDevice> infraredRemoteList,
  }) = _DeviceCollection;

  factory DeviceCollection.fromJson(Map<String, dynamic> json) =>
      _$DeviceCollectionFromJson(json);
}
