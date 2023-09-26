// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__DeviceStatusBase _$$__DeviceStatusBaseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__DeviceStatusBase',
      json,
      ($checkedConvert) {
        final val = _$__DeviceStatusBase(
          id: $checkedConvert('deviceId', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'type': 'deviceType'},
    );

Map<String, dynamic> _$$__DeviceStatusBaseToJson(
        _$__DeviceStatusBase instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'hubDeviceId': instance.hubDeviceId,
    };

_$_DeviceStatusBlindTilt _$$_DeviceStatusBlindTiltFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusBlindTilt',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusBlindTilt(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          version: $checkedConvert('version', (v) => v as int? ?? 0),
          calibrate: $checkedConvert('calibrate', (v) => v as bool? ?? false),
          group: $checkedConvert('group', (v) => v as bool? ?? false),
          moving: $checkedConvert('moving', (v) => v as bool? ?? true),
          direction:
              $checkedConvert('direction', (v) => v as String? ?? 'Down'),
          slidePosition:
              $checkedConvert('slidePosition', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusBlindTiltToJson(
        _$_DeviceStatusBlindTilt instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'version': instance.version,
      'calibrate': instance.calibrate,
      'group': instance.group,
      'moving': instance.moving,
      'direction': instance.direction,
      'slidePosition': instance.slidePosition,
    };

_$_DeviceStatusBot _$$_DeviceStatusBotFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusBot',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusBot(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.on
                  : const PowerStateConverter().fromJson(v as String)),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          mode: $checkedConvert(
              'deviceMode', (v) => $enumDecode(_$BotModeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'mode': 'deviceMode'},
    );

Map<String, dynamic> _$$_DeviceStatusBotToJson(_$_DeviceStatusBot instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'power': const PowerStateConverter().toJson(instance.power),
      'battery': instance.battery,
      'version': instance.version,
      'deviceMode': _$BotModeEnumMap[instance.mode]!,
    };

const _$BotModeEnumMap = {
  BotMode.pressMode: 'pressMode',
  BotMode.switchMode: 'switchMode',
  BotMode.customizeMode: 'customizeMode',
};

_$__DeviceStatusVacuumCleaner _$$__DeviceStatusVacuumCleanerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__DeviceStatusVacuumCleaner',
      json,
      ($checkedConvert) {
        final val = _$__DeviceStatusVacuumCleaner(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          workingStatus: $checkedConvert(
              'workingStatus',
              (v) => v == null
                  ? VacuumCleanerStatus.standBy
                  : const VacuumCleanerStatusConverter().fromJson(v as String)),
          onlineStatus: $checkedConvert(
              'onlineStatus',
              (v) => v == null
                  ? OnlineStatus.offline
                  : const OnlineStatusConverter().fromJson(v as String)),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'type': 'deviceType'},
    );

Map<String, dynamic> _$$__DeviceStatusVacuumCleanerToJson(
        _$__DeviceStatusVacuumCleaner instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'workingStatus':
          const VacuumCleanerStatusConverter().toJson(instance.workingStatus),
      'onlineStatus':
          const OnlineStatusConverter().toJson(instance.onlineStatus),
      'battery': instance.battery,
    };

_$_DeviceStatusCurtain _$$_DeviceStatusCurtainFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusCurtain',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusCurtain(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          calibrate: $checkedConvert('calibrate', (v) => v as bool? ?? false),
          group: $checkedConvert('group', (v) => v as bool? ?? false),
          moving: $checkedConvert('moving', (v) => v as bool? ?? false),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          slidePosition:
              $checkedConvert('slidePosition', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusCurtainToJson(
        _$_DeviceStatusCurtain instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'calibrate': instance.calibrate,
      'group': instance.group,
      'moving': instance.moving,
      'battery': instance.battery,
      'version': instance.version,
      'slidePosition': instance.slidePosition,
    };

_$_DeviceStatusHub2 _$$_DeviceStatusHub2FromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusHub2',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusHub2(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          temperature: $checkedConvert(
              'temperature', (v) => (v as num?)?.toDouble() ?? 0.0),
          lightLevel: $checkedConvert('lightLevel', (v) => v as int? ?? 1),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          humidity: $checkedConvert('humidity', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusHub2ToJson(_$_DeviceStatusHub2 instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'temperature': instance.temperature,
      'lightLevel': instance.lightLevel,
      'version': instance.version,
      'humidity': instance.humidity,
    };

_$_DeviceStatusHumidifier _$$_DeviceStatusHumidifierFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusHumidifier',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusHumidifier(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.off
                  : const PowerStateConverter().fromJson(v as String)),
          humidity: $checkedConvert('humidity', (v) => v as int? ?? 0),
          temperature: $checkedConvert(
              'temperature', (v) => (v as num?)?.toDouble() ?? 0.0),
          nebulizationEfficiency:
              $checkedConvert('nebulizationEfficiency', (v) => v as int? ?? 0),
          auto: $checkedConvert('auto', (v) => v as bool? ?? false),
          childLock: $checkedConvert('childLock', (v) => v as bool? ?? false),
          sound: $checkedConvert('sound', (v) => v as bool? ?? false),
          lackWater: $checkedConvert('lackWater', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusHumidifierToJson(
        _$_DeviceStatusHumidifier instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'power': const PowerStateConverter().toJson(instance.power),
      'humidity': instance.humidity,
      'temperature': instance.temperature,
      'nebulizationEfficiency': instance.nebulizationEfficiency,
      'auto': instance.auto,
      'childLock': instance.childLock,
      'sound': instance.sound,
      'lackWater': instance.lackWater,
    };

_$__DeviceStatusCeilingLight _$$__DeviceStatusCeilingLightFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__DeviceStatusCeilingLight',
      json,
      ($checkedConvert) {
        final val = _$__DeviceStatusCeilingLight(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.off
                  : const PowerStateConverter().fromJson(v as String)),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          brightness: $checkedConvert('brightness', (v) => v as int? ?? 100),
          colorTemperature:
              $checkedConvert('colorTemperature', (v) => v as int? ?? 2700),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'type': 'deviceType'},
    );

Map<String, dynamic> _$$__DeviceStatusCeilingLightToJson(
        _$__DeviceStatusCeilingLight instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'power': const PowerStateConverter().toJson(instance.power),
      'version': instance.version,
      'brightness': instance.brightness,
      'colorTemperature': instance.colorTemperature,
    };

_$_DeviceStatusStripLight _$$_DeviceStatusStripLightFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusStripLight',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusStripLight(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.off
                  : const PowerStateConverter().fromJson(v as String)),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          brightness: $checkedConvert('brightness', (v) => v as int? ?? 100),
          color: $checkedConvert('color',
              (v) => const LightColorConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusStripLightToJson(
        _$_DeviceStatusStripLight instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'power': const PowerStateConverter().toJson(instance.power),
      'version': instance.version,
      'brightness': instance.brightness,
      'color': const LightColorConverter().toJson(instance.color),
    };

_$_DeviceStatusColorBulb _$$_DeviceStatusColorBulbFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusColorBulb',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusColorBulb(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.off
                  : const PowerStateConverter().fromJson(v as String)),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          brightness: $checkedConvert('brightness', (v) => v as int? ?? 100),
          color: $checkedConvert('color',
              (v) => const LightColorConverter().fromJson(v as String)),
          colorTemperature:
              $checkedConvert('colorTemperature', (v) => v as int? ?? 2700),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusColorBulbToJson(
        _$_DeviceStatusColorBulb instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'power': const PowerStateConverter().toJson(instance.power),
      'version': instance.version,
      'brightness': instance.brightness,
      'color': const LightColorConverter().toJson(instance.color),
      'colorTemperature': instance.colorTemperature,
    };

_$_DeviceStatusLock _$$_DeviceStatusLockFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusLock',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusLock(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          lockState: $checkedConvert('lockState',
              (v) => const LockStateConverter().fromJson(v as String)),
          doorState: $checkedConvert('doorState', (v) => v as String),
          calibrate: $checkedConvert('calibrate', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusLockToJson(_$_DeviceStatusLock instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'battery': instance.battery,
      'version': instance.version,
      'lockState': const LockStateConverter().toJson(instance.lockState),
      'doorState': instance.doorState,
      'calibrate': instance.calibrate,
    };

_$__DeviceStatusMeter _$$__DeviceStatusMeterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__DeviceStatusMeter',
      json,
      ($checkedConvert) {
        final val = _$__DeviceStatusMeter(
          id: $checkedConvert('deviceId', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          temperature:
              $checkedConvert('temperature', (v) => (v as num).toDouble()),
          humidity: $checkedConvert('humidity', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'type': 'deviceType'},
    );

Map<String, dynamic> _$$__DeviceStatusMeterToJson(
        _$__DeviceStatusMeter instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'hubDeviceId': instance.hubDeviceId,
      'battery': instance.battery,
      'version': instance.version,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
    };

_$_DeviceStatusPlug _$$_DeviceStatusPlugFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusPlug',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusPlug(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          power: $checkedConvert(
              'power',
              (v) => v == null
                  ? PowerState.off
                  : const PowerStateConverter().fromJson(v as String)),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusPlugToJson(_$_DeviceStatusPlug instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'power': const PowerStateConverter().toJson(instance.power),
      'version': instance.version,
    };

_$__DeviceStatusPlugMini _$$__DeviceStatusPlugMiniFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$__DeviceStatusPlugMini',
      json,
      ($checkedConvert) {
        final val = _$__DeviceStatusPlugMini(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          type: $checkedConvert('deviceType',
              (v) => const PhysicalDeviceTypeConverter().fromJson(v as String)),
          voltage:
              $checkedConvert('voltage', (v) => (v as num?)?.toDouble() ?? 0.0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          weight:
              $checkedConvert('weight', (v) => (v as num?)?.toDouble() ?? 0.0),
          electricityOfDay:
              $checkedConvert('electricityOfDay', (v) => v as int? ?? 0),
          electricCurrent: $checkedConvert(
              'electricCurrent', (v) => (v as num?)?.toDouble() ?? 0.0),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId', 'type': 'deviceType'},
    );

Map<String, dynamic> _$$__DeviceStatusPlugMiniToJson(
        _$__DeviceStatusPlugMini instance) =>
    <String, dynamic>{
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'voltage': instance.voltage,
      'version': instance.version,
      'weight': instance.weight,
      'electricityOfDay': instance.electricityOfDay,
      'electricCurrent': instance.electricCurrent,
    };

_$_DeviceStatusMotionSensor _$$_DeviceStatusMotionSensorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusMotionSensor',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusMotionSensor(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          motionDetected:
              $checkedConvert('motionDetected', (v) => v as bool? ?? false),
          brightness: $checkedConvert(
              'brightness',
              (v) => v == null
                  ? SensorBrightness.dim
                  : const BrightnessConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusMotionSensorToJson(
        _$_DeviceStatusMotionSensor instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'battery': instance.battery,
      'version': instance.version,
      'motionDetected': instance.motionDetected,
      'brightness': const BrightnessConverter().toJson(instance.brightness),
    };

_$_DeviceStatusContactSensor _$$_DeviceStatusContactSensorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeviceStatusContactSensor',
      json,
      ($checkedConvert) {
        final val = _$_DeviceStatusContactSensor(
          id: $checkedConvert('deviceId', (v) => v as String),
          hubDeviceId: $checkedConvert('hubDeviceId', (v) => v as String),
          battery: $checkedConvert('battery', (v) => v as int? ?? 0),
          version: $checkedConvert('version', (v) => v as String? ?? ''),
          motionDetected:
              $checkedConvert('motionDetected', (v) => v as bool? ?? false),
          brightness: $checkedConvert(
              'brightness',
              (v) => v == null
                  ? SensorBrightness.dim
                  : const BrightnessConverter().fromJson(v as String)),
          openState: $checkedConvert(
              'openState',
              (v) => v == null
                  ? OpenState.close
                  : const OpenStateConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'deviceId'},
    );

Map<String, dynamic> _$$_DeviceStatusContactSensorToJson(
        _$_DeviceStatusContactSensor instance) =>
    <String, dynamic>{
      'deviceType': const PhysicalDeviceTypeConverter().toJson(instance.type),
      'deviceId': instance.id,
      'hubDeviceId': instance.hubDeviceId,
      'battery': instance.battery,
      'version': instance.version,
      'motionDetected': instance.motionDetected,
      'brightness': const BrightnessConverter().toJson(instance.brightness),
      'openState': const OpenStateConverter().toJson(instance.openState),
    };
