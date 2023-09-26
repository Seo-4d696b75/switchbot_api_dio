import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/model/device/physical/physical_device.dart';
import 'package:switchbot_api_dio/src/model/device/virtual/virtual_device.dart';

export 'physical/physical_device.dart';
export 'virtual/virtual_device.dart';

part 'device_collection.freezed.dart';

part 'device_collection.g.dart';

@freezed
class DeviceCollection with _$DeviceCollection {
  const factory DeviceCollection({
    required List<PhysicalDevice> deviceList,
    required List<VirtualDevice> infraredRemoteList,
  }) = _DeviceCollection;

  factory DeviceCollection.fromJson(Map<String, dynamic> json) =>
      _$DeviceCollectionFromJson(json);
}
