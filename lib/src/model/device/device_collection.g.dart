// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceCollection _$$_DeviceCollectionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceCollection',
      json,
      ($checkedConvert) {
        final val = _$_DeviceCollection(
          deviceList: $checkedConvert(
              'deviceList',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => PhysicalDevice.fromJson(e as Map<String, dynamic>))
                  .toList()),
          infraredRemoteList: $checkedConvert(
              'infraredRemoteList',
              (v) => (v as List<dynamic>)
                  .map((e) => VirtualDevice.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DeviceCollectionToJson(_$_DeviceCollection instance) =>
    <String, dynamic>{
      'deviceList': instance.deviceList.map((e) => e.toJson()).toList(),
      'infraredRemoteList':
          instance.infraredRemoteList.map((e) => e.toJson()).toList(),
    };
