// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__PhysicalDeviceBase _$$__PhysicalDeviceBaseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__PhysicalDeviceBase',
      json,
      ($checkedConvert) {
        final val = _$__PhysicalDeviceBase(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          enableCloudService:
              $checkedConvert('enableCloudService', (v) => v as bool),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'deviceId',
        'name': 'deviceName',
        'type': 'deviceType'
      },
    );

Map<String, dynamic> _$$__PhysicalDeviceBaseToJson(
        _$__PhysicalDeviceBase instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'deviceName': instance.name,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'enableCloudService': instance.enableCloudService,
      'hubDeviceId': instance.hubDeviceId,
    };

_$_PhysicalDeviceBlindTilt _$$_PhysicalDeviceBlindTiltFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PhysicalDeviceBlindTilt',
      json,
      ($checkedConvert) {
        final val = _$_PhysicalDeviceBlindTilt(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          enableCloudService:
              $checkedConvert('enableCloudService', (v) => v as bool),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          version: $checkedConvert('version', (v) => v as int? ?? 0),
          blindTiltDevicesIds: $checkedConvert(
              'blindTiltDevicesIds',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  []),
          calibrate: $checkedConvert('calibrate', (v) => v as bool? ?? false),
          group: $checkedConvert('group', (v) => v as bool? ?? false),
          master: $checkedConvert('master', (v) => v as bool? ?? true),
          direction:
              $checkedConvert('direction', (v) => v as String? ?? 'Down'),
          slidePosition:
              $checkedConvert('slidePosition', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'name': 'deviceName'},
    );

Map<String, dynamic> _$$_PhysicalDeviceBlindTiltToJson(
        _$_PhysicalDeviceBlindTilt instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'deviceName': instance.name,
      'enableCloudService': instance.enableCloudService,
      'hubDeviceId': instance.hubDeviceId,
      'version': instance.version,
      'blindTiltDevicesIds': instance.blindTiltDevicesIds,
      'calibrate': instance.calibrate,
      'group': instance.group,
      'master': instance.master,
      'direction': instance.direction,
      'slidePosition': instance.slidePosition,
    };

_$_PhysicalDeviceCurtain _$$_PhysicalDeviceCurtainFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PhysicalDeviceCurtain',
      json,
      ($checkedConvert) {
        final val = _$_PhysicalDeviceCurtain(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          enableCloudService:
              $checkedConvert('enableCloudService', (v) => v as bool),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          curtainDevicesIds: $checkedConvert(
              'curtainDevicesIds',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  []),
          calibrate: $checkedConvert('calibrate', (v) => v as bool? ?? false),
          group: $checkedConvert('group', (v) => v as bool? ?? false),
          master: $checkedConvert('master', (v) => v as bool? ?? true),
          openDirection:
              $checkedConvert('openDirection', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'name': 'deviceName'},
    );

Map<String, dynamic> _$$_PhysicalDeviceCurtainToJson(
        _$_PhysicalDeviceCurtain instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'deviceName': instance.name,
      'enableCloudService': instance.enableCloudService,
      'hubDeviceId': instance.hubDeviceId,
      'curtainDevicesIds': instance.curtainDevicesIds,
      'calibrate': instance.calibrate,
      'group': instance.group,
      'master': instance.master,
      'openDirection': instance.openDirection,
    };

_$__PhysicalDeviceKeypad _$$__PhysicalDeviceKeypadFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__PhysicalDeviceKeypad',
      json,
      ($checkedConvert) {
        final val = _$__PhysicalDeviceKeypad(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          enableCloudService:
              $checkedConvert('enableCloudService', (v) => v as bool),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          lockDeviceId: $checkedConvert('lockDeviceId', (v) => v as String),
          keyList: $checkedConvert(
              'keyList',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          LockPasscode.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'deviceId',
        'name': 'deviceName',
        'type': 'deviceType'
      },
    );

Map<String, dynamic> _$$__PhysicalDeviceKeypadToJson(
        _$__PhysicalDeviceKeypad instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'deviceName': instance.name,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'enableCloudService': instance.enableCloudService,
      'hubDeviceId': instance.hubDeviceId,
      'lockDeviceId': instance.lockDeviceId,
      'keyList': instance.keyList.map((e) => e.toJson()).toList(),
    };

_$_PhysicalDeviceLock _$$_PhysicalDeviceLockFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PhysicalDeviceLock',
      json,
      ($checkedConvert) {
        final val = _$_PhysicalDeviceLock(
          id: $checkedConvert('deviceId', (v) => v as String),
          name: $checkedConvert('deviceName', (v) => v as String),
          enableCloudService:
              $checkedConvert('enableCloudService', (v) => v as bool),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          group: $checkedConvert('group', (v) => v as bool? ?? false),
          master: $checkedConvert('master', (v) => v as bool? ?? true),
          groupName: $checkedConvert('groupName', (v) => v as String?),
          lockDevicesIds: $checkedConvert(
              'lockDevicesIds',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  []),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'name': 'deviceName'},
    );

Map<String, dynamic> _$$_PhysicalDeviceLockToJson(
        _$_PhysicalDeviceLock instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'deviceName': instance.name,
      'enableCloudService': instance.enableCloudService,
      'hubDeviceId': instance.hubDeviceId,
      'group': instance.group,
      'master': instance.master,
      'groupName': instance.groupName,
      'lockDevicesIds': instance.lockDevicesIds,
    };

_$_LockPasscode _$$_LockPasscodeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_LockPasscode',
      json,
      ($checkedConvert) {
        final val = _$_LockPasscode(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type',
              (v) => const PasscodeTypeConverter().fromJson(v as String)),
          password: $checkedConvert('password', (v) => v as String),
          iv: $checkedConvert('iv', (v) => v as String),
          status: $checkedConvert('status',
              (v) => const PasscodeStatusConverter().fromJson(v as String)),
          createTime: $checkedConvert('createTime', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LockPasscodeToJson(_$_LockPasscode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': const PasscodeTypeConverter().toJson(instance.type),
      'password': instance.password,
      'iv': instance.iv,
      'status': const PasscodeStatusConverter().toJson(instance.status),
      'createTime': instance.createTime,
    };
