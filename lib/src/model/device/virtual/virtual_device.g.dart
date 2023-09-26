// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VirtualDevice _$$_VirtualDeviceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VirtualDevice',
      json,
      ($checkedConvert) {
        final val = _$_VirtualDevice(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          type: $checkedConvert('remoteType',
              (v) => const VirtualDeviceTypeConverter().fromJson(v as String)),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'deviceId',
        'name': 'deviceName',
        'type': 'remoteType'
      },
    );

Map<String, dynamic> _$$_VirtualDeviceToJson(_$_VirtualDevice instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'deviceName': instance.name,
      'remoteType': const VirtualDeviceTypeConverter().toJson(instance.type),
      'hubDeviceId': instance.hubDeviceId,
    };
