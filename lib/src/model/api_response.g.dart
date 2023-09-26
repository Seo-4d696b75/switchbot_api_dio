// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiResponse',
      json,
      ($checkedConvert) {
        final val = _$_ApiResponse(
          statusCode: $checkedConvert('statusCode', (v) => v as int),
          message: $checkedConvert('message', (v) => v as String),
          body: $checkedConvert('body', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'body': instance.body,
    };
