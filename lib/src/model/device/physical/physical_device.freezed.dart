// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_PhysicalDeviceBase _$_PhysicalDeviceBaseFromJson(Map<String, dynamic> json) {
  return __PhysicalDeviceBase.fromJson(json);
}

/// @nodoc
mixin _$_PhysicalDeviceBase {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;
  bool get enableCloudService => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhysicalDeviceBaseCopyWith<_PhysicalDeviceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhysicalDeviceBaseCopyWith<$Res> {
  factory _$PhysicalDeviceBaseCopyWith(
          _PhysicalDeviceBase value, $Res Function(_PhysicalDeviceBase) then) =
      __$PhysicalDeviceBaseCopyWithImpl<$Res, _PhysicalDeviceBase>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      bool enableCloudService,
      String hubDeviceId});
}

/// @nodoc
class __$PhysicalDeviceBaseCopyWithImpl<$Res, $Val extends _PhysicalDeviceBase>
    implements _$PhysicalDeviceBaseCopyWith<$Res> {
  __$PhysicalDeviceBaseCopyWithImpl(this._value, this._then);

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
    Object? enableCloudService = null,
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
              as PhysicalDeviceType,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__PhysicalDeviceBaseCopyWith<$Res>
    implements _$PhysicalDeviceBaseCopyWith<$Res> {
  factory _$$__PhysicalDeviceBaseCopyWith(_$__PhysicalDeviceBase value,
          $Res Function(_$__PhysicalDeviceBase) then) =
      __$$__PhysicalDeviceBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      bool enableCloudService,
      String hubDeviceId});
}

/// @nodoc
class __$$__PhysicalDeviceBaseCopyWithImpl<$Res>
    extends __$PhysicalDeviceBaseCopyWithImpl<$Res, _$__PhysicalDeviceBase>
    implements _$$__PhysicalDeviceBaseCopyWith<$Res> {
  __$$__PhysicalDeviceBaseCopyWithImpl(_$__PhysicalDeviceBase _value,
      $Res Function(_$__PhysicalDeviceBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
  }) {
    return _then(_$__PhysicalDeviceBase(
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
              as PhysicalDeviceType,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__PhysicalDeviceBase implements __PhysicalDeviceBase {
  const _$__PhysicalDeviceBase(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      required this.enableCloudService,
      required this.hubDeviceId});

  factory _$__PhysicalDeviceBase.fromJson(Map<String, dynamic> json) =>
      _$$__PhysicalDeviceBaseFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceName')
  final String name;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;
  @override
  final bool enableCloudService;
  @override
  final String hubDeviceId;

  @override
  String toString() {
    return '_PhysicalDeviceBase(id: $id, name: $name, type: $type, enableCloudService: $enableCloudService, hubDeviceId: $hubDeviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__PhysicalDeviceBase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableCloudService, enableCloudService) ||
                other.enableCloudService == enableCloudService) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, enableCloudService, hubDeviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__PhysicalDeviceBaseCopyWith<_$__PhysicalDeviceBase> get copyWith =>
      __$$__PhysicalDeviceBaseCopyWithImpl<_$__PhysicalDeviceBase>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__PhysicalDeviceBaseToJson(
      this,
    );
  }
}

abstract class __PhysicalDeviceBase implements _PhysicalDeviceBase {
  const factory __PhysicalDeviceBase(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceName') required final String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required final PhysicalDeviceType type,
      required final bool enableCloudService,
      required final String hubDeviceId}) = _$__PhysicalDeviceBase;

  factory __PhysicalDeviceBase.fromJson(Map<String, dynamic> json) =
      _$__PhysicalDeviceBase.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceName')
  String get name;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override
  bool get enableCloudService;
  @override
  String get hubDeviceId;
  @override
  @JsonKey(ignore: true)
  _$$__PhysicalDeviceBaseCopyWith<_$__PhysicalDeviceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

PhysicalDeviceBlindTilt _$PhysicalDeviceBlindTiltFromJson(
    Map<String, dynamic> json) {
  return _PhysicalDeviceBlindTilt.fromJson(json);
}

/// @nodoc
mixin _$PhysicalDeviceBlindTilt {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;
  bool get enableCloudService => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the version of the device
  @JsonKey(defaultValue: 0)
  int get version => throw _privateConstructorUsedError;

  /// a list of Blind Tilt device IDs
  /// such that the Blind Tilt devices are being paired or grouped
  @JsonKey(defaultValue: [])
  List<String> get blindTiltDevicesIds => throw _privateConstructorUsedError;

  /// determines if the open and the closed positions
  /// have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate => throw _privateConstructorUsedError;

  /// determines if a Blind Tilt device is paired with or grouped with
  /// one or more devices of the same type or not
  @JsonKey(defaultValue: false)
  bool get group => throw _privateConstructorUsedError;

  /// determines if a Blind Tilt device is the master device or not
  /// when paired with or grouped with one or more devices of the same type
  @JsonKey(defaultValue: true)
  bool get master => throw _privateConstructorUsedError;

  /// the opening direction of a Blind Tilt device
  @JsonKey(defaultValue: 'Down')
  String get direction => throw _privateConstructorUsedError;

  /// the current position, 0-100
  @JsonKey(defaultValue: 0)
  int get slidePosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalDeviceBlindTiltCopyWith<PhysicalDeviceBlindTilt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalDeviceBlindTiltCopyWith<$Res> {
  factory $PhysicalDeviceBlindTiltCopyWith(PhysicalDeviceBlindTilt value,
          $Res Function(PhysicalDeviceBlindTilt) then) =
      _$PhysicalDeviceBlindTiltCopyWithImpl<$Res, PhysicalDeviceBlindTilt>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int version,
      @JsonKey(defaultValue: []) List<String> blindTiltDevicesIds,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: 'Down') String direction,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class _$PhysicalDeviceBlindTiltCopyWithImpl<$Res,
        $Val extends PhysicalDeviceBlindTilt>
    implements $PhysicalDeviceBlindTiltCopyWith<$Res> {
  _$PhysicalDeviceBlindTiltCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? version = null,
    Object? blindTiltDevicesIds = null,
    Object? calibrate = null,
    Object? group = null,
    Object? master = null,
    Object? direction = null,
    Object? slidePosition = null,
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
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      blindTiltDevicesIds: null == blindTiltDevicesIds
          ? _value.blindTiltDevicesIds
          : blindTiltDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      slidePosition: null == slidePosition
          ? _value.slidePosition
          : slidePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhysicalDeviceBlindTiltCopyWith<$Res>
    implements $PhysicalDeviceBlindTiltCopyWith<$Res> {
  factory _$$_PhysicalDeviceBlindTiltCopyWith(_$_PhysicalDeviceBlindTilt value,
          $Res Function(_$_PhysicalDeviceBlindTilt) then) =
      __$$_PhysicalDeviceBlindTiltCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int version,
      @JsonKey(defaultValue: []) List<String> blindTiltDevicesIds,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: 'Down') String direction,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class __$$_PhysicalDeviceBlindTiltCopyWithImpl<$Res>
    extends _$PhysicalDeviceBlindTiltCopyWithImpl<$Res,
        _$_PhysicalDeviceBlindTilt>
    implements _$$_PhysicalDeviceBlindTiltCopyWith<$Res> {
  __$$_PhysicalDeviceBlindTiltCopyWithImpl(_$_PhysicalDeviceBlindTilt _value,
      $Res Function(_$_PhysicalDeviceBlindTilt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? version = null,
    Object? blindTiltDevicesIds = null,
    Object? calibrate = null,
    Object? group = null,
    Object? master = null,
    Object? direction = null,
    Object? slidePosition = null,
  }) {
    return _then(_$_PhysicalDeviceBlindTilt(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      blindTiltDevicesIds: null == blindTiltDevicesIds
          ? _value._blindTiltDevicesIds
          : blindTiltDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      slidePosition: null == slidePosition
          ? _value.slidePosition
          : slidePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhysicalDeviceBlindTilt extends _PhysicalDeviceBlindTilt {
  const _$_PhysicalDeviceBlindTilt(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      required this.enableCloudService,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.version,
      @JsonKey(defaultValue: [])
      required final List<String> blindTiltDevicesIds,
      @JsonKey(defaultValue: false) required this.calibrate,
      @JsonKey(defaultValue: false) required this.group,
      @JsonKey(defaultValue: true) required this.master,
      @JsonKey(defaultValue: 'Down') required this.direction,
      @JsonKey(defaultValue: 0) required this.slidePosition})
      : _blindTiltDevicesIds = blindTiltDevicesIds,
        super._();

  factory _$_PhysicalDeviceBlindTilt.fromJson(Map<String, dynamic> json) =>
      _$$_PhysicalDeviceBlindTiltFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceName')
  final String name;
  @override
  final bool enableCloudService;
  @override
  final String hubDeviceId;

  /// the version of the device
  @override
  @JsonKey(defaultValue: 0)
  final int version;

  /// a list of Blind Tilt device IDs
  /// such that the Blind Tilt devices are being paired or grouped
  final List<String> _blindTiltDevicesIds;

  /// a list of Blind Tilt device IDs
  /// such that the Blind Tilt devices are being paired or grouped
  @override
  @JsonKey(defaultValue: [])
  List<String> get blindTiltDevicesIds {
    if (_blindTiltDevicesIds is EqualUnmodifiableListView)
      return _blindTiltDevicesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blindTiltDevicesIds);
  }

  /// determines if the open and the closed positions
  /// have been properly calibrated or not
  @override
  @JsonKey(defaultValue: false)
  final bool calibrate;

  /// determines if a Blind Tilt device is paired with or grouped with
  /// one or more devices of the same type or not
  @override
  @JsonKey(defaultValue: false)
  final bool group;

  /// determines if a Blind Tilt device is the master device or not
  /// when paired with or grouped with one or more devices of the same type
  @override
  @JsonKey(defaultValue: true)
  final bool master;

  /// the opening direction of a Blind Tilt device
  @override
  @JsonKey(defaultValue: 'Down')
  final String direction;

  /// the current position, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int slidePosition;

  @override
  String toString() {
    return 'PhysicalDeviceBlindTilt(id: $id, name: $name, enableCloudService: $enableCloudService, hubDeviceId: $hubDeviceId, version: $version, blindTiltDevicesIds: $blindTiltDevicesIds, calibrate: $calibrate, group: $group, master: $master, direction: $direction, slidePosition: $slidePosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhysicalDeviceBlindTilt &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enableCloudService, enableCloudService) ||
                other.enableCloudService == enableCloudService) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._blindTiltDevicesIds, _blindTiltDevicesIds) &&
            (identical(other.calibrate, calibrate) ||
                other.calibrate == calibrate) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.master, master) || other.master == master) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.slidePosition, slidePosition) ||
                other.slidePosition == slidePosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      enableCloudService,
      hubDeviceId,
      version,
      const DeepCollectionEquality().hash(_blindTiltDevicesIds),
      calibrate,
      group,
      master,
      direction,
      slidePosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhysicalDeviceBlindTiltCopyWith<_$_PhysicalDeviceBlindTilt>
      get copyWith =>
          __$$_PhysicalDeviceBlindTiltCopyWithImpl<_$_PhysicalDeviceBlindTilt>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhysicalDeviceBlindTiltToJson(
      this,
    );
  }
}

abstract class _PhysicalDeviceBlindTilt extends PhysicalDeviceBlindTilt {
  const factory _PhysicalDeviceBlindTilt(
          {@JsonKey(name: 'deviceId') required final String id,
          @JsonKey(name: 'deviceName') required final String name,
          required final bool enableCloudService,
          required final String hubDeviceId,
          @JsonKey(defaultValue: 0) required final int version,
          @JsonKey(defaultValue: [])
          required final List<String> blindTiltDevicesIds,
          @JsonKey(defaultValue: false) required final bool calibrate,
          @JsonKey(defaultValue: false) required final bool group,
          @JsonKey(defaultValue: true) required final bool master,
          @JsonKey(defaultValue: 'Down') required final String direction,
          @JsonKey(defaultValue: 0) required final int slidePosition}) =
      _$_PhysicalDeviceBlindTilt;
  const _PhysicalDeviceBlindTilt._() : super._();

  factory _PhysicalDeviceBlindTilt.fromJson(Map<String, dynamic> json) =
      _$_PhysicalDeviceBlindTilt.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceName')
  String get name;
  @override
  bool get enableCloudService;
  @override
  String get hubDeviceId;
  @override

  /// the version of the device
  @JsonKey(defaultValue: 0)
  int get version;
  @override

  /// a list of Blind Tilt device IDs
  /// such that the Blind Tilt devices are being paired or grouped
  @JsonKey(defaultValue: [])
  List<String> get blindTiltDevicesIds;
  @override

  /// determines if the open and the closed positions
  /// have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate;
  @override

  /// determines if a Blind Tilt device is paired with or grouped with
  /// one or more devices of the same type or not
  @JsonKey(defaultValue: false)
  bool get group;
  @override

  /// determines if a Blind Tilt device is the master device or not
  /// when paired with or grouped with one or more devices of the same type
  @JsonKey(defaultValue: true)
  bool get master;
  @override

  /// the opening direction of a Blind Tilt device
  @JsonKey(defaultValue: 'Down')
  String get direction;
  @override

  /// the current position, 0-100
  @JsonKey(defaultValue: 0)
  int get slidePosition;
  @override
  @JsonKey(ignore: true)
  _$$_PhysicalDeviceBlindTiltCopyWith<_$_PhysicalDeviceBlindTilt>
      get copyWith => throw _privateConstructorUsedError;
}

PhysicalDeviceCurtain _$PhysicalDeviceCurtainFromJson(
    Map<String, dynamic> json) {
  return _PhysicalDeviceCurtain.fromJson(json);
}

/// @nodoc
mixin _$PhysicalDeviceCurtain {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;
  bool get enableCloudService => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// a list of Curtain device IDs
  /// such that the Curtain devices are being paired or grouped
  @JsonKey(defaultValue: [])
  List<String> get curtainDevicesIds => throw _privateConstructorUsedError;

  /// determines if the open position and
  /// the close position of a device have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate => throw _privateConstructorUsedError;

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @JsonKey(defaultValue: false)
  bool get group => throw _privateConstructorUsedError;

  /// determines if a Curtain is the master device or not
  /// when paired with or grouped with another Curtain
  @JsonKey(defaultValue: true)
  bool get master => throw _privateConstructorUsedError;

  /// the opening direction of a Curtain
  @JsonKey(defaultValue: '')
  String get openDirection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalDeviceCurtainCopyWith<PhysicalDeviceCurtain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalDeviceCurtainCopyWith<$Res> {
  factory $PhysicalDeviceCurtainCopyWith(PhysicalDeviceCurtain value,
          $Res Function(PhysicalDeviceCurtain) then) =
      _$PhysicalDeviceCurtainCopyWithImpl<$Res, PhysicalDeviceCurtain>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: []) List<String> curtainDevicesIds,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: '') String openDirection});
}

/// @nodoc
class _$PhysicalDeviceCurtainCopyWithImpl<$Res,
        $Val extends PhysicalDeviceCurtain>
    implements $PhysicalDeviceCurtainCopyWith<$Res> {
  _$PhysicalDeviceCurtainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? curtainDevicesIds = null,
    Object? calibrate = null,
    Object? group = null,
    Object? master = null,
    Object? openDirection = null,
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
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      curtainDevicesIds: null == curtainDevicesIds
          ? _value.curtainDevicesIds
          : curtainDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      openDirection: null == openDirection
          ? _value.openDirection
          : openDirection // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhysicalDeviceCurtainCopyWith<$Res>
    implements $PhysicalDeviceCurtainCopyWith<$Res> {
  factory _$$_PhysicalDeviceCurtainCopyWith(_$_PhysicalDeviceCurtain value,
          $Res Function(_$_PhysicalDeviceCurtain) then) =
      __$$_PhysicalDeviceCurtainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: []) List<String> curtainDevicesIds,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: '') String openDirection});
}

/// @nodoc
class __$$_PhysicalDeviceCurtainCopyWithImpl<$Res>
    extends _$PhysicalDeviceCurtainCopyWithImpl<$Res, _$_PhysicalDeviceCurtain>
    implements _$$_PhysicalDeviceCurtainCopyWith<$Res> {
  __$$_PhysicalDeviceCurtainCopyWithImpl(_$_PhysicalDeviceCurtain _value,
      $Res Function(_$_PhysicalDeviceCurtain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? curtainDevicesIds = null,
    Object? calibrate = null,
    Object? group = null,
    Object? master = null,
    Object? openDirection = null,
  }) {
    return _then(_$_PhysicalDeviceCurtain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      curtainDevicesIds: null == curtainDevicesIds
          ? _value._curtainDevicesIds
          : curtainDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      openDirection: null == openDirection
          ? _value.openDirection
          : openDirection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhysicalDeviceCurtain extends _PhysicalDeviceCurtain {
  const _$_PhysicalDeviceCurtain(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      required this.enableCloudService,
      required this.hubDeviceId,
      @JsonKey(defaultValue: []) required final List<String> curtainDevicesIds,
      @JsonKey(defaultValue: false) required this.calibrate,
      @JsonKey(defaultValue: false) required this.group,
      @JsonKey(defaultValue: true) required this.master,
      @JsonKey(defaultValue: '') required this.openDirection})
      : _curtainDevicesIds = curtainDevicesIds,
        super._();

  factory _$_PhysicalDeviceCurtain.fromJson(Map<String, dynamic> json) =>
      _$$_PhysicalDeviceCurtainFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceName')
  final String name;
  @override
  final bool enableCloudService;
  @override
  final String hubDeviceId;

  /// a list of Curtain device IDs
  /// such that the Curtain devices are being paired or grouped
  final List<String> _curtainDevicesIds;

  /// a list of Curtain device IDs
  /// such that the Curtain devices are being paired or grouped
  @override
  @JsonKey(defaultValue: [])
  List<String> get curtainDevicesIds {
    if (_curtainDevicesIds is EqualUnmodifiableListView)
      return _curtainDevicesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_curtainDevicesIds);
  }

  /// determines if the open position and
  /// the close position of a device have been properly calibrated or not
  @override
  @JsonKey(defaultValue: false)
  final bool calibrate;

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @override
  @JsonKey(defaultValue: false)
  final bool group;

  /// determines if a Curtain is the master device or not
  /// when paired with or grouped with another Curtain
  @override
  @JsonKey(defaultValue: true)
  final bool master;

  /// the opening direction of a Curtain
  @override
  @JsonKey(defaultValue: '')
  final String openDirection;

  @override
  String toString() {
    return 'PhysicalDeviceCurtain(id: $id, name: $name, enableCloudService: $enableCloudService, hubDeviceId: $hubDeviceId, curtainDevicesIds: $curtainDevicesIds, calibrate: $calibrate, group: $group, master: $master, openDirection: $openDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhysicalDeviceCurtain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enableCloudService, enableCloudService) ||
                other.enableCloudService == enableCloudService) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            const DeepCollectionEquality()
                .equals(other._curtainDevicesIds, _curtainDevicesIds) &&
            (identical(other.calibrate, calibrate) ||
                other.calibrate == calibrate) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.master, master) || other.master == master) &&
            (identical(other.openDirection, openDirection) ||
                other.openDirection == openDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      enableCloudService,
      hubDeviceId,
      const DeepCollectionEquality().hash(_curtainDevicesIds),
      calibrate,
      group,
      master,
      openDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhysicalDeviceCurtainCopyWith<_$_PhysicalDeviceCurtain> get copyWith =>
      __$$_PhysicalDeviceCurtainCopyWithImpl<_$_PhysicalDeviceCurtain>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhysicalDeviceCurtainToJson(
      this,
    );
  }
}

abstract class _PhysicalDeviceCurtain extends PhysicalDeviceCurtain {
  const factory _PhysicalDeviceCurtain(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceName') required final String name,
      required final bool enableCloudService,
      required final String hubDeviceId,
      @JsonKey(defaultValue: []) required final List<String> curtainDevicesIds,
      @JsonKey(defaultValue: false) required final bool calibrate,
      @JsonKey(defaultValue: false) required final bool group,
      @JsonKey(defaultValue: true) required final bool master,
      @JsonKey(defaultValue: '')
      required final String openDirection}) = _$_PhysicalDeviceCurtain;
  const _PhysicalDeviceCurtain._() : super._();

  factory _PhysicalDeviceCurtain.fromJson(Map<String, dynamic> json) =
      _$_PhysicalDeviceCurtain.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceName')
  String get name;
  @override
  bool get enableCloudService;
  @override
  String get hubDeviceId;
  @override

  /// a list of Curtain device IDs
  /// such that the Curtain devices are being paired or grouped
  @JsonKey(defaultValue: [])
  List<String> get curtainDevicesIds;
  @override

  /// determines if the open position and
  /// the close position of a device have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate;
  @override

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @JsonKey(defaultValue: false)
  bool get group;
  @override

  /// determines if a Curtain is the master device or not
  /// when paired with or grouped with another Curtain
  @JsonKey(defaultValue: true)
  bool get master;
  @override

  /// the opening direction of a Curtain
  @JsonKey(defaultValue: '')
  String get openDirection;
  @override
  @JsonKey(ignore: true)
  _$$_PhysicalDeviceCurtainCopyWith<_$_PhysicalDeviceCurtain> get copyWith =>
      throw _privateConstructorUsedError;
}

_PhysicalDeviceKeypad _$_PhysicalDeviceKeypadFromJson(
    Map<String, dynamic> json) {
  return __PhysicalDeviceKeypad.fromJson(json);
}

/// @nodoc
mixin _$_PhysicalDeviceKeypad {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;

  /// device type:
  /// [PhysicalDeviceType.keypad] or [PhysicalDeviceType.keypadTouch]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;
  bool get enableCloudService => throw _privateConstructorUsedError;
  String get hubDeviceId =>
      throw _privateConstructorUsedError; // keypad must be paired with a Lock device,
// to be registered in SwitchBot app
  /// MAC address of the Lock that the current device is paired with
  String get lockDeviceId => throw _privateConstructorUsedError;

  /// a list of passcodes
  @JsonKey(defaultValue: [])
  List<LockPasscode> get keyList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhysicalDeviceKeypadCopyWith<_PhysicalDeviceKeypad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhysicalDeviceKeypadCopyWith<$Res> {
  factory _$PhysicalDeviceKeypadCopyWith(_PhysicalDeviceKeypad value,
          $Res Function(_PhysicalDeviceKeypad) then) =
      __$PhysicalDeviceKeypadCopyWithImpl<$Res, _PhysicalDeviceKeypad>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      bool enableCloudService,
      String hubDeviceId,
      String lockDeviceId,
      @JsonKey(defaultValue: []) List<LockPasscode> keyList});
}

/// @nodoc
class __$PhysicalDeviceKeypadCopyWithImpl<$Res,
        $Val extends _PhysicalDeviceKeypad>
    implements _$PhysicalDeviceKeypadCopyWith<$Res> {
  __$PhysicalDeviceKeypadCopyWithImpl(this._value, this._then);

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
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? lockDeviceId = null,
    Object? keyList = null,
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
              as PhysicalDeviceType,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      lockDeviceId: null == lockDeviceId
          ? _value.lockDeviceId
          : lockDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      keyList: null == keyList
          ? _value.keyList
          : keyList // ignore: cast_nullable_to_non_nullable
              as List<LockPasscode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__PhysicalDeviceKeypadCopyWith<$Res>
    implements _$PhysicalDeviceKeypadCopyWith<$Res> {
  factory _$$__PhysicalDeviceKeypadCopyWith(_$__PhysicalDeviceKeypad value,
          $Res Function(_$__PhysicalDeviceKeypad) then) =
      __$$__PhysicalDeviceKeypadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      bool enableCloudService,
      String hubDeviceId,
      String lockDeviceId,
      @JsonKey(defaultValue: []) List<LockPasscode> keyList});
}

/// @nodoc
class __$$__PhysicalDeviceKeypadCopyWithImpl<$Res>
    extends __$PhysicalDeviceKeypadCopyWithImpl<$Res, _$__PhysicalDeviceKeypad>
    implements _$$__PhysicalDeviceKeypadCopyWith<$Res> {
  __$$__PhysicalDeviceKeypadCopyWithImpl(_$__PhysicalDeviceKeypad _value,
      $Res Function(_$__PhysicalDeviceKeypad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? lockDeviceId = null,
    Object? keyList = null,
  }) {
    return _then(_$__PhysicalDeviceKeypad(
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
              as PhysicalDeviceType,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      lockDeviceId: null == lockDeviceId
          ? _value.lockDeviceId
          : lockDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      keyList: null == keyList
          ? _value._keyList
          : keyList // ignore: cast_nullable_to_non_nullable
              as List<LockPasscode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__PhysicalDeviceKeypad implements __PhysicalDeviceKeypad {
  const _$__PhysicalDeviceKeypad(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      required this.enableCloudService,
      required this.hubDeviceId,
      required this.lockDeviceId,
      @JsonKey(defaultValue: []) required final List<LockPasscode> keyList})
      : _keyList = keyList;

  factory _$__PhysicalDeviceKeypad.fromJson(Map<String, dynamic> json) =>
      _$$__PhysicalDeviceKeypadFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceName')
  final String name;

  /// device type:
  /// [PhysicalDeviceType.keypad] or [PhysicalDeviceType.keypadTouch]
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;
  @override
  final bool enableCloudService;
  @override
  final String hubDeviceId;
// keypad must be paired with a Lock device,
// to be registered in SwitchBot app
  /// MAC address of the Lock that the current device is paired with
  @override
  final String lockDeviceId;

  /// a list of passcodes
  final List<LockPasscode> _keyList;

  /// a list of passcodes
  @override
  @JsonKey(defaultValue: [])
  List<LockPasscode> get keyList {
    if (_keyList is EqualUnmodifiableListView) return _keyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyList);
  }

  @override
  String toString() {
    return '_PhysicalDeviceKeypad(id: $id, name: $name, type: $type, enableCloudService: $enableCloudService, hubDeviceId: $hubDeviceId, lockDeviceId: $lockDeviceId, keyList: $keyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__PhysicalDeviceKeypad &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableCloudService, enableCloudService) ||
                other.enableCloudService == enableCloudService) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.lockDeviceId, lockDeviceId) ||
                other.lockDeviceId == lockDeviceId) &&
            const DeepCollectionEquality().equals(other._keyList, _keyList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      enableCloudService,
      hubDeviceId,
      lockDeviceId,
      const DeepCollectionEquality().hash(_keyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__PhysicalDeviceKeypadCopyWith<_$__PhysicalDeviceKeypad> get copyWith =>
      __$$__PhysicalDeviceKeypadCopyWithImpl<_$__PhysicalDeviceKeypad>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__PhysicalDeviceKeypadToJson(
      this,
    );
  }
}

abstract class __PhysicalDeviceKeypad implements _PhysicalDeviceKeypad {
  const factory __PhysicalDeviceKeypad(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceName') required final String name,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required final PhysicalDeviceType type,
      required final bool enableCloudService,
      required final String hubDeviceId,
      required final String lockDeviceId,
      @JsonKey(defaultValue: [])
      required final List<LockPasscode> keyList}) = _$__PhysicalDeviceKeypad;

  factory __PhysicalDeviceKeypad.fromJson(Map<String, dynamic> json) =
      _$__PhysicalDeviceKeypad.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceName')
  String get name;
  @override

  /// device type:
  /// [PhysicalDeviceType.keypad] or [PhysicalDeviceType.keypadTouch]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override
  bool get enableCloudService;
  @override
  String get hubDeviceId;
  @override // keypad must be paired with a Lock device,
// to be registered in SwitchBot app
  /// MAC address of the Lock that the current device is paired with
  String get lockDeviceId;
  @override

  /// a list of passcodes
  @JsonKey(defaultValue: [])
  List<LockPasscode> get keyList;
  @override
  @JsonKey(ignore: true)
  _$$__PhysicalDeviceKeypadCopyWith<_$__PhysicalDeviceKeypad> get copyWith =>
      throw _privateConstructorUsedError;
}

PhysicalDeviceLock _$PhysicalDeviceLockFromJson(Map<String, dynamic> json) {
  return _PhysicalDeviceLock.fromJson(json);
}

/// @nodoc
mixin _$PhysicalDeviceLock {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceName')
  String get name => throw _privateConstructorUsedError;
  bool get enableCloudService => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// determines if a Lock is grouped with another Lock or not
  @JsonKey(defaultValue: false)
  bool get group => throw _privateConstructorUsedError;

  /// determines if a Lock is the master device or not
  /// when grouped with another Lock in Dual Lock mode
  @JsonKey(defaultValue: true)
  bool get master => throw _privateConstructorUsedError;

  /// the name of the Lock group
  @JsonKey(defaultValue: null)
  String? get groupName => throw _privateConstructorUsedError;

  /// a list of Lock device IDs
  /// such that the Lock devices are being grouped in Dual Lock mode
  @JsonKey(defaultValue: [])
  List<String> get lockDevicesIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalDeviceLockCopyWith<PhysicalDeviceLock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalDeviceLockCopyWith<$Res> {
  factory $PhysicalDeviceLockCopyWith(
          PhysicalDeviceLock value, $Res Function(PhysicalDeviceLock) then) =
      _$PhysicalDeviceLockCopyWithImpl<$Res, PhysicalDeviceLock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: null) String? groupName,
      @JsonKey(defaultValue: []) List<String> lockDevicesIds});
}

/// @nodoc
class _$PhysicalDeviceLockCopyWithImpl<$Res, $Val extends PhysicalDeviceLock>
    implements $PhysicalDeviceLockCopyWith<$Res> {
  _$PhysicalDeviceLockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? group = null,
    Object? master = null,
    Object? groupName = freezed,
    Object? lockDevicesIds = null,
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
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      lockDevicesIds: null == lockDevicesIds
          ? _value.lockDevicesIds
          : lockDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhysicalDeviceLockCopyWith<$Res>
    implements $PhysicalDeviceLockCopyWith<$Res> {
  factory _$$_PhysicalDeviceLockCopyWith(_$_PhysicalDeviceLock value,
          $Res Function(_$_PhysicalDeviceLock) then) =
      __$$_PhysicalDeviceLockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceName') String name,
      bool enableCloudService,
      String hubDeviceId,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool master,
      @JsonKey(defaultValue: null) String? groupName,
      @JsonKey(defaultValue: []) List<String> lockDevicesIds});
}

/// @nodoc
class __$$_PhysicalDeviceLockCopyWithImpl<$Res>
    extends _$PhysicalDeviceLockCopyWithImpl<$Res, _$_PhysicalDeviceLock>
    implements _$$_PhysicalDeviceLockCopyWith<$Res> {
  __$$_PhysicalDeviceLockCopyWithImpl(
      _$_PhysicalDeviceLock _value, $Res Function(_$_PhysicalDeviceLock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enableCloudService = null,
    Object? hubDeviceId = null,
    Object? group = null,
    Object? master = null,
    Object? groupName = freezed,
    Object? lockDevicesIds = null,
  }) {
    return _then(_$_PhysicalDeviceLock(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enableCloudService: null == enableCloudService
          ? _value.enableCloudService
          : enableCloudService // ignore: cast_nullable_to_non_nullable
              as bool,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as bool,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      lockDevicesIds: null == lockDevicesIds
          ? _value._lockDevicesIds
          : lockDevicesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhysicalDeviceLock extends _PhysicalDeviceLock {
  const _$_PhysicalDeviceLock(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceName') required this.name,
      required this.enableCloudService,
      required this.hubDeviceId,
      @JsonKey(defaultValue: false) required this.group,
      @JsonKey(defaultValue: true) required this.master,
      @JsonKey(defaultValue: null) required this.groupName,
      @JsonKey(defaultValue: []) required final List<String> lockDevicesIds})
      : _lockDevicesIds = lockDevicesIds,
        super._();

  factory _$_PhysicalDeviceLock.fromJson(Map<String, dynamic> json) =>
      _$$_PhysicalDeviceLockFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceName')
  final String name;
  @override
  final bool enableCloudService;
  @override
  final String hubDeviceId;

  /// determines if a Lock is grouped with another Lock or not
  @override
  @JsonKey(defaultValue: false)
  final bool group;

  /// determines if a Lock is the master device or not
  /// when grouped with another Lock in Dual Lock mode
  @override
  @JsonKey(defaultValue: true)
  final bool master;

  /// the name of the Lock group
  @override
  @JsonKey(defaultValue: null)
  final String? groupName;

  /// a list of Lock device IDs
  /// such that the Lock devices are being grouped in Dual Lock mode
  final List<String> _lockDevicesIds;

  /// a list of Lock device IDs
  /// such that the Lock devices are being grouped in Dual Lock mode
  @override
  @JsonKey(defaultValue: [])
  List<String> get lockDevicesIds {
    if (_lockDevicesIds is EqualUnmodifiableListView) return _lockDevicesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lockDevicesIds);
  }

  @override
  String toString() {
    return 'PhysicalDeviceLock(id: $id, name: $name, enableCloudService: $enableCloudService, hubDeviceId: $hubDeviceId, group: $group, master: $master, groupName: $groupName, lockDevicesIds: $lockDevicesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhysicalDeviceLock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enableCloudService, enableCloudService) ||
                other.enableCloudService == enableCloudService) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.master, master) || other.master == master) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._lockDevicesIds, _lockDevicesIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      enableCloudService,
      hubDeviceId,
      group,
      master,
      groupName,
      const DeepCollectionEquality().hash(_lockDevicesIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhysicalDeviceLockCopyWith<_$_PhysicalDeviceLock> get copyWith =>
      __$$_PhysicalDeviceLockCopyWithImpl<_$_PhysicalDeviceLock>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhysicalDeviceLockToJson(
      this,
    );
  }
}

abstract class _PhysicalDeviceLock extends PhysicalDeviceLock {
  const factory _PhysicalDeviceLock(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceName') required final String name,
      required final bool enableCloudService,
      required final String hubDeviceId,
      @JsonKey(defaultValue: false) required final bool group,
      @JsonKey(defaultValue: true) required final bool master,
      @JsonKey(defaultValue: null) required final String? groupName,
      @JsonKey(defaultValue: [])
      required final List<String> lockDevicesIds}) = _$_PhysicalDeviceLock;
  const _PhysicalDeviceLock._() : super._();

  factory _PhysicalDeviceLock.fromJson(Map<String, dynamic> json) =
      _$_PhysicalDeviceLock.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceName')
  String get name;
  @override
  bool get enableCloudService;
  @override
  String get hubDeviceId;
  @override

  /// determines if a Lock is grouped with another Lock or not
  @JsonKey(defaultValue: false)
  bool get group;
  @override

  /// determines if a Lock is the master device or not
  /// when grouped with another Lock in Dual Lock mode
  @JsonKey(defaultValue: true)
  bool get master;
  @override

  /// the name of the Lock group
  @JsonKey(defaultValue: null)
  String? get groupName;
  @override

  /// a list of Lock device IDs
  /// such that the Lock devices are being grouped in Dual Lock mode
  @JsonKey(defaultValue: [])
  List<String> get lockDevicesIds;
  @override
  @JsonKey(ignore: true)
  _$$_PhysicalDeviceLockCopyWith<_$_PhysicalDeviceLock> get copyWith =>
      throw _privateConstructorUsedError;
}

LockPasscode _$LockPasscodeFromJson(Map<String, dynamic> json) {
  return _LockPasscode.fromJson(json);
}

/// @nodoc
mixin _$LockPasscode {
  /// passcode ID
  int get id => throw _privateConstructorUsedError;

  /// name of the passcode
  String get name => throw _privateConstructorUsedError;

  /// type of the passcode
  @PasscodeTypeConverter()
  PasscodeType get type => throw _privateConstructorUsedError;

  /// encrypted passcode
  ///
  /// the passcode string encrypted with the developer secret key
  /// using the aes-128-cbc algorithm
  String get password => throw _privateConstructorUsedError;

  /// initial vector
  ///
  /// an arbitrary number used for the encryption
  String get iv => throw _privateConstructorUsedError;

  /// validity of the passcode
  @PasscodeStatusConverter()
  PasscodeStatus get status => throw _privateConstructorUsedError;

  /// the time when the passcode is generated
  int get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LockPasscodeCopyWith<LockPasscode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockPasscodeCopyWith<$Res> {
  factory $LockPasscodeCopyWith(
          LockPasscode value, $Res Function(LockPasscode) then) =
      _$LockPasscodeCopyWithImpl<$Res, LockPasscode>;
  @useResult
  $Res call(
      {int id,
      String name,
      @PasscodeTypeConverter() PasscodeType type,
      String password,
      String iv,
      @PasscodeStatusConverter() PasscodeStatus status,
      int createTime});
}

/// @nodoc
class _$LockPasscodeCopyWithImpl<$Res, $Val extends LockPasscode>
    implements $LockPasscodeCopyWith<$Res> {
  _$LockPasscodeCopyWithImpl(this._value, this._then);

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
    Object? password = null,
    Object? iv = null,
    Object? status = null,
    Object? createTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PasscodeType,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      iv: null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasscodeStatus,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LockPasscodeCopyWith<$Res>
    implements $LockPasscodeCopyWith<$Res> {
  factory _$$_LockPasscodeCopyWith(
          _$_LockPasscode value, $Res Function(_$_LockPasscode) then) =
      __$$_LockPasscodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @PasscodeTypeConverter() PasscodeType type,
      String password,
      String iv,
      @PasscodeStatusConverter() PasscodeStatus status,
      int createTime});
}

/// @nodoc
class __$$_LockPasscodeCopyWithImpl<$Res>
    extends _$LockPasscodeCopyWithImpl<$Res, _$_LockPasscode>
    implements _$$_LockPasscodeCopyWith<$Res> {
  __$$_LockPasscodeCopyWithImpl(
      _$_LockPasscode _value, $Res Function(_$_LockPasscode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? password = null,
    Object? iv = null,
    Object? status = null,
    Object? createTime = null,
  }) {
    return _then(_$_LockPasscode(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PasscodeType,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      iv: null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasscodeStatus,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LockPasscode implements _LockPasscode {
  const _$_LockPasscode(
      {required this.id,
      required this.name,
      @PasscodeTypeConverter() required this.type,
      required this.password,
      required this.iv,
      @PasscodeStatusConverter() required this.status,
      required this.createTime});

  factory _$_LockPasscode.fromJson(Map<String, dynamic> json) =>
      _$$_LockPasscodeFromJson(json);

  /// passcode ID
  @override
  final int id;

  /// name of the passcode
  @override
  final String name;

  /// type of the passcode
  @override
  @PasscodeTypeConverter()
  final PasscodeType type;

  /// encrypted passcode
  ///
  /// the passcode string encrypted with the developer secret key
  /// using the aes-128-cbc algorithm
  @override
  final String password;

  /// initial vector
  ///
  /// an arbitrary number used for the encryption
  @override
  final String iv;

  /// validity of the passcode
  @override
  @PasscodeStatusConverter()
  final PasscodeStatus status;

  /// the time when the passcode is generated
  @override
  final int createTime;

  @override
  String toString() {
    return 'LockPasscode(id: $id, name: $name, type: $type, password: $password, iv: $iv, status: $status, createTime: $createTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockPasscode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.iv, iv) || other.iv == iv) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, password, iv, status, createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockPasscodeCopyWith<_$_LockPasscode> get copyWith =>
      __$$_LockPasscodeCopyWithImpl<_$_LockPasscode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LockPasscodeToJson(
      this,
    );
  }
}

abstract class _LockPasscode implements LockPasscode {
  const factory _LockPasscode(
      {required final int id,
      required final String name,
      @PasscodeTypeConverter() required final PasscodeType type,
      required final String password,
      required final String iv,
      @PasscodeStatusConverter() required final PasscodeStatus status,
      required final int createTime}) = _$_LockPasscode;

  factory _LockPasscode.fromJson(Map<String, dynamic> json) =
      _$_LockPasscode.fromJson;

  @override

  /// passcode ID
  int get id;
  @override

  /// name of the passcode
  String get name;
  @override

  /// type of the passcode
  @PasscodeTypeConverter()
  PasscodeType get type;
  @override

  /// encrypted passcode
  ///
  /// the passcode string encrypted with the developer secret key
  /// using the aes-128-cbc algorithm
  String get password;
  @override

  /// initial vector
  ///
  /// an arbitrary number used for the encryption
  String get iv;
  @override

  /// validity of the passcode
  @PasscodeStatusConverter()
  PasscodeStatus get status;
  @override

  /// the time when the passcode is generated
  int get createTime;
  @override
  @JsonKey(ignore: true)
  _$$_LockPasscodeCopyWith<_$_LockPasscode> get copyWith =>
      throw _privateConstructorUsedError;
}
