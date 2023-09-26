// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'virtual_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VirtualDevice _$VirtualDeviceFromJson(Map<String, dynamic> json) {
  return _VirtualDevice.fromJson(json);
}

/// @nodoc
mixin _$VirtualDevice {
  /// device ID
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;

  /// device name
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;

  /// device type
  @JsonKey(name: 'remoteType')
  @VirtualDeviceTypeConverter()
  VirtualDeviceType get type => throw _privateConstructorUsedError;

  /// device's parent Hub ID
  String get hubDeviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VirtualDeviceCopyWith<VirtualDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualDeviceCopyWith<$Res> {
  factory $VirtualDeviceCopyWith(
          VirtualDevice value, $Res Function(VirtualDevice) then) =
      _$VirtualDeviceCopyWithImpl<$Res, VirtualDevice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'remoteType')
      @VirtualDeviceTypeConverter()
      VirtualDeviceType type,
      String hubDeviceId});
}

/// @nodoc
class _$VirtualDeviceCopyWithImpl<$Res, $Val extends VirtualDevice>
    implements $VirtualDeviceCopyWith<$Res> {
  _$VirtualDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? hubDeviceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VirtualDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VirtualDeviceCopyWith<$Res>
    implements $VirtualDeviceCopyWith<$Res> {
  factory _$$_VirtualDeviceCopyWith(
          _$_VirtualDevice value, $Res Function(_$_VirtualDevice) then) =
      __$$_VirtualDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'remoteType')
      @VirtualDeviceTypeConverter()
      VirtualDeviceType type,
      String hubDeviceId});
}

/// @nodoc
class __$$_VirtualDeviceCopyWithImpl<$Res>
    extends _$VirtualDeviceCopyWithImpl<$Res, _$_VirtualDevice>
    implements _$$_VirtualDeviceCopyWith<$Res> {
  __$$_VirtualDeviceCopyWithImpl(
      _$_VirtualDevice _value, $Res Function(_$_VirtualDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? hubDeviceId = null,
  }) {
    return _then(_$_VirtualDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VirtualDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VirtualDevice implements _VirtualDevice {
  const _$_VirtualDevice(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      @JsonKey(name: 'remoteType')
      @VirtualDeviceTypeConverter()
      required this.type,
      required this.hubDeviceId});

  factory _$_VirtualDevice.fromJson(Map<String, dynamic> json) =>
      _$$_VirtualDeviceFromJson(json);

  /// device ID
  @override
  @JsonKey(name: 'deviceId')
  final String id;

  /// device name
  @override
  @JsonKey(name: 'deviceName')
  final String name;

  /// device type
  @override
  @JsonKey(name: 'remoteType')
  @VirtualDeviceTypeConverter()
  final VirtualDeviceType type;

  /// device's parent Hub ID
  @override
  final String hubDeviceId;

  @override
  String toString() {
    return 'VirtualDevice(id: $id, name: $name, type: $type, hubDeviceId: $hubDeviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VirtualDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, hubDeviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VirtualDeviceCopyWith<_$_VirtualDevice> get copyWith =>
      __$$_VirtualDeviceCopyWithImpl<_$_VirtualDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VirtualDeviceToJson(
      this,
    );
  }
}

abstract class _VirtualDevice implements VirtualDevice {
  const factory _VirtualDevice(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceName') required final String name,
      @JsonKey(name: 'remoteType')
      @VirtualDeviceTypeConverter()
      required final VirtualDeviceType type,
      required final String hubDeviceId}) = _$_VirtualDevice;

  factory _VirtualDevice.fromJson(Map<String, dynamic> json) =
      _$_VirtualDevice.fromJson;

  @override

  /// device ID
  @JsonKey(name: 'deviceId')
  String get id;
  @override

  /// device name
  @JsonKey(name: 'deviceName')
  String get name;
  @override

  /// device type
  @JsonKey(name: 'remoteType')
  @VirtualDeviceTypeConverter()
  VirtualDeviceType get type;
  @override

  /// device's parent Hub ID
  String get hubDeviceId;
  @override
  @JsonKey(ignore: true)
  _$$_VirtualDeviceCopyWith<_$_VirtualDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
