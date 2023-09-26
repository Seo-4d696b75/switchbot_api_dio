// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_scene.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ManualScene _$$_ManualSceneFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ManualScene',
      json,
      ($checkedConvert) {
        final val = _$_ManualScene(
          id: $checkedConvert('sceneId', (v) => v as String),
          name: $checkedConvert('sceneName', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'sceneId', 'name': 'sceneName'},
    );

Map<String, dynamic> _$$_ManualSceneToJson(_$_ManualScene instance) =>
    <String, dynamic>{
      'sceneId': instance.id,
      'sceneName': instance.name,
    };
