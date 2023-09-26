// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_DeviceStatusBase _$_DeviceStatusBaseFromJson(Map<String, dynamic> json) {
  return __DeviceStatusBase.fromJson(json);
}

/// @nodoc
mixin _$_DeviceStatusBase {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeviceStatusBaseCopyWith<_DeviceStatusBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeviceStatusBaseCopyWith<$Res> {
  factory _$DeviceStatusBaseCopyWith(
          _DeviceStatusBase value, $Res Function(_DeviceStatusBase) then) =
      __$DeviceStatusBaseCopyWithImpl<$Res, _DeviceStatusBase>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      String hubDeviceId});
}

/// @nodoc
class __$DeviceStatusBaseCopyWithImpl<$Res, $Val extends _DeviceStatusBase>
    implements _$DeviceStatusBaseCopyWith<$Res> {
  __$DeviceStatusBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? hubDeviceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__DeviceStatusBaseCopyWith<$Res>
    implements _$DeviceStatusBaseCopyWith<$Res> {
  factory _$$__DeviceStatusBaseCopyWith(_$__DeviceStatusBase value,
          $Res Function(_$__DeviceStatusBase) then) =
      __$$__DeviceStatusBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      String hubDeviceId});
}

/// @nodoc
class __$$__DeviceStatusBaseCopyWithImpl<$Res>
    extends __$DeviceStatusBaseCopyWithImpl<$Res, _$__DeviceStatusBase>
    implements _$$__DeviceStatusBaseCopyWith<$Res> {
  __$$__DeviceStatusBaseCopyWithImpl(
      _$__DeviceStatusBase _value, $Res Function(_$__DeviceStatusBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? hubDeviceId = null,
  }) {
    return _then(_$__DeviceStatusBase(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__DeviceStatusBase implements __DeviceStatusBase {
  const _$__DeviceStatusBase(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      required this.hubDeviceId});

  factory _$__DeviceStatusBase.fromJson(Map<String, dynamic> json) =>
      _$$__DeviceStatusBaseFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;
  @override
  final String hubDeviceId;

  @override
  String toString() {
    return '_DeviceStatusBase(id: $id, type: $type, hubDeviceId: $hubDeviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DeviceStatusBase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, hubDeviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__DeviceStatusBaseCopyWith<_$__DeviceStatusBase> get copyWith =>
      __$$__DeviceStatusBaseCopyWithImpl<_$__DeviceStatusBase>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__DeviceStatusBaseToJson(
      this,
    );
  }
}

abstract class __DeviceStatusBase implements _DeviceStatusBase {
  const factory __DeviceStatusBase(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required final PhysicalDeviceType type,
      required final String hubDeviceId}) = _$__DeviceStatusBase;

  factory __DeviceStatusBase.fromJson(Map<String, dynamic> json) =
      _$__DeviceStatusBase.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override
  String get hubDeviceId;
  @override
  @JsonKey(ignore: true)
  _$$__DeviceStatusBaseCopyWith<_$__DeviceStatusBase> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusBlindTilt _$DeviceStatusBlindTiltFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusBlindTilt.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusBlindTilt {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the firmware version of the device
  @JsonKey(defaultValue: 0)
  int get version => throw _privateConstructorUsedError;

  /// determines if the open and the closed positions
  /// have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate => throw _privateConstructorUsedError;

  /// determines if a Blind Tilt device is paired with or grouped with
  /// one or more devices of the same type or not
  @JsonKey(defaultValue: false)
  bool get group => throw _privateConstructorUsedError;

  /// determines if the device is moving or not
  @JsonKey(defaultValue: true)
  bool get moving => throw _privateConstructorUsedError;

  /// the opening direction of a Blind Tilt device
  @JsonKey(defaultValue: 'Down')
  String get direction => throw _privateConstructorUsedError;

  /// the current position, 0-100
  @JsonKey(defaultValue: 0)
  int get slidePosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusBlindTiltCopyWith<DeviceStatusBlindTilt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusBlindTiltCopyWith<$Res> {
  factory $DeviceStatusBlindTiltCopyWith(DeviceStatusBlindTilt value,
          $Res Function(DeviceStatusBlindTilt) then) =
      _$DeviceStatusBlindTiltCopyWithImpl<$Res, DeviceStatusBlindTilt>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int version,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool moving,
      @JsonKey(defaultValue: 'Down') String direction,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class _$DeviceStatusBlindTiltCopyWithImpl<$Res,
        $Val extends DeviceStatusBlindTilt>
    implements $DeviceStatusBlindTiltCopyWith<$Res> {
  _$DeviceStatusBlindTiltCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? version = null,
    Object? calibrate = null,
    Object? group = null,
    Object? moving = null,
    Object? direction = null,
    Object? slidePosition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DeviceStatusBlindTiltCopyWith<$Res>
    implements $DeviceStatusBlindTiltCopyWith<$Res> {
  factory _$$_DeviceStatusBlindTiltCopyWith(_$_DeviceStatusBlindTilt value,
          $Res Function(_$_DeviceStatusBlindTilt) then) =
      __$$_DeviceStatusBlindTiltCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int version,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: true) bool moving,
      @JsonKey(defaultValue: 'Down') String direction,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class __$$_DeviceStatusBlindTiltCopyWithImpl<$Res>
    extends _$DeviceStatusBlindTiltCopyWithImpl<$Res, _$_DeviceStatusBlindTilt>
    implements _$$_DeviceStatusBlindTiltCopyWith<$Res> {
  __$$_DeviceStatusBlindTiltCopyWithImpl(_$_DeviceStatusBlindTilt _value,
      $Res Function(_$_DeviceStatusBlindTilt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? version = null,
    Object? calibrate = null,
    Object? group = null,
    Object? moving = null,
    Object? direction = null,
    Object? slidePosition = null,
  }) {
    return _then(_$_DeviceStatusBlindTilt(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
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
class _$_DeviceStatusBlindTilt extends _DeviceStatusBlindTilt {
  const _$_DeviceStatusBlindTilt(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.version,
      @JsonKey(defaultValue: false) required this.calibrate,
      @JsonKey(defaultValue: false) required this.group,
      @JsonKey(defaultValue: true) required this.moving,
      @JsonKey(defaultValue: 'Down') required this.direction,
      @JsonKey(defaultValue: 0) required this.slidePosition})
      : super._();

  factory _$_DeviceStatusBlindTilt.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusBlindTiltFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// the firmware version of the device
  @override
  @JsonKey(defaultValue: 0)
  final int version;

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

  /// determines if the device is moving or not
  @override
  @JsonKey(defaultValue: true)
  final bool moving;

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
    return 'DeviceStatusBlindTilt(id: $id, hubDeviceId: $hubDeviceId, version: $version, calibrate: $calibrate, group: $group, moving: $moving, direction: $direction, slidePosition: $slidePosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusBlindTilt &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.calibrate, calibrate) ||
                other.calibrate == calibrate) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.moving, moving) || other.moving == moving) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.slidePosition, slidePosition) ||
                other.slidePosition == slidePosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, version,
      calibrate, group, moving, direction, slidePosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusBlindTiltCopyWith<_$_DeviceStatusBlindTilt> get copyWith =>
      __$$_DeviceStatusBlindTiltCopyWithImpl<_$_DeviceStatusBlindTilt>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusBlindTiltToJson(
      this,
    );
  }
}

abstract class _DeviceStatusBlindTilt extends DeviceStatusBlindTilt {
  const factory _DeviceStatusBlindTilt(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(defaultValue: 0) required final int version,
          @JsonKey(defaultValue: false) required final bool calibrate,
          @JsonKey(defaultValue: false) required final bool group,
          @JsonKey(defaultValue: true) required final bool moving,
          @JsonKey(defaultValue: 'Down') required final String direction,
          @JsonKey(defaultValue: 0) required final int slidePosition}) =
      _$_DeviceStatusBlindTilt;
  const _DeviceStatusBlindTilt._() : super._();

  factory _DeviceStatusBlindTilt.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusBlindTilt.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// the firmware version of the device
  @JsonKey(defaultValue: 0)
  int get version;
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

  /// determines if the device is moving or not
  @JsonKey(defaultValue: true)
  bool get moving;
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
  _$$_DeviceStatusBlindTiltCopyWith<_$_DeviceStatusBlindTilt> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusBot _$DeviceStatusBotFromJson(Map<String, dynamic> json) {
  return _DeviceStatusBot.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusBot {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.on)
  PowerState get power => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// pressMode, switchMode, or customizeMode
  @JsonKey(name: 'deviceMode')
  BotMode get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusBotCopyWith<DeviceStatusBot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusBotCopyWith<$Res> {
  factory $DeviceStatusBotCopyWith(
          DeviceStatusBot value, $Res Function(DeviceStatusBot) then) =
      _$DeviceStatusBotCopyWithImpl<$Res, DeviceStatusBot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.on)
      PowerState power,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(name: 'deviceMode') BotMode mode});
}

/// @nodoc
class _$DeviceStatusBotCopyWithImpl<$Res, $Val extends DeviceStatusBot>
    implements $DeviceStatusBotCopyWith<$Res> {
  _$DeviceStatusBotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? battery = null,
    Object? version = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BotMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusBotCopyWith<$Res>
    implements $DeviceStatusBotCopyWith<$Res> {
  factory _$$_DeviceStatusBotCopyWith(
          _$_DeviceStatusBot value, $Res Function(_$_DeviceStatusBot) then) =
      __$$_DeviceStatusBotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.on)
      PowerState power,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(name: 'deviceMode') BotMode mode});
}

/// @nodoc
class __$$_DeviceStatusBotCopyWithImpl<$Res>
    extends _$DeviceStatusBotCopyWithImpl<$Res, _$_DeviceStatusBot>
    implements _$$_DeviceStatusBotCopyWith<$Res> {
  __$$_DeviceStatusBotCopyWithImpl(
      _$_DeviceStatusBot _value, $Res Function(_$_DeviceStatusBot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? battery = null,
    Object? version = null,
    Object? mode = null,
  }) {
    return _then(_$_DeviceStatusBot(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BotMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusBot extends _DeviceStatusBot {
  const _$_DeviceStatusBot(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.on)
      required this.power,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(name: 'deviceMode') required this.mode})
      : super._();

  factory _$_DeviceStatusBot.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusBotFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.on)
  final PowerState power;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// pressMode, switchMode, or customizeMode
  @override
  @JsonKey(name: 'deviceMode')
  final BotMode mode;

  @override
  String toString() {
    return 'DeviceStatusBot(id: $id, hubDeviceId: $hubDeviceId, power: $power, battery: $battery, version: $version, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusBot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, hubDeviceId, power, battery, version, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusBotCopyWith<_$_DeviceStatusBot> get copyWith =>
      __$$_DeviceStatusBotCopyWithImpl<_$_DeviceStatusBot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusBotToJson(
      this,
    );
  }
}

abstract class _DeviceStatusBot extends DeviceStatusBot {
  const factory _DeviceStatusBot(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.on)
          required final PowerState power,
          @JsonKey(defaultValue: 0) required final int battery,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(name: 'deviceMode') required final BotMode mode}) =
      _$_DeviceStatusBot;
  const _DeviceStatusBot._() : super._();

  factory _DeviceStatusBot.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusBot.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.on)
  PowerState get power;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// pressMode, switchMode, or customizeMode
  @JsonKey(name: 'deviceMode')
  BotMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusBotCopyWith<_$_DeviceStatusBot> get copyWith =>
      throw _privateConstructorUsedError;
}

_DeviceStatusVacuumCleaner _$_DeviceStatusVacuumCleanerFromJson(
    Map<String, dynamic> json) {
  return __DeviceStatusVacuumCleaner.fromJson(json);
}

/// @nodoc
mixin _$_DeviceStatusVacuumCleaner {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// [PhysicalDeviceType.robotVacuumCleanerS1]
  /// or [PhysicalDeviceType.robotVacuumCleanerS1Plus]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;

  /// the working status of the device
  @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
  @VacuumCleanerStatusConverter()
  VacuumCleanerStatus get workingStatus => throw _privateConstructorUsedError;

  /// the connection status of the device. online or offline
  @JsonKey(defaultValue: OnlineStatus.offline)
  @OnlineStatusConverter()
  OnlineStatus get onlineStatus => throw _privateConstructorUsedError;

  /// the current battery level
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeviceStatusVacuumCleanerCopyWith<_DeviceStatusVacuumCleaner>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeviceStatusVacuumCleanerCopyWith<$Res> {
  factory _$DeviceStatusVacuumCleanerCopyWith(_DeviceStatusVacuumCleaner value,
          $Res Function(_DeviceStatusVacuumCleaner) then) =
      __$DeviceStatusVacuumCleanerCopyWithImpl<$Res,
          _DeviceStatusVacuumCleaner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
      @VacuumCleanerStatusConverter()
      VacuumCleanerStatus workingStatus,
      @JsonKey(defaultValue: OnlineStatus.offline)
      @OnlineStatusConverter()
      OnlineStatus onlineStatus,
      @JsonKey(defaultValue: 0) int battery});
}

/// @nodoc
class __$DeviceStatusVacuumCleanerCopyWithImpl<$Res,
        $Val extends _DeviceStatusVacuumCleaner>
    implements _$DeviceStatusVacuumCleanerCopyWith<$Res> {
  __$DeviceStatusVacuumCleanerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? workingStatus = null,
    Object? onlineStatus = null,
    Object? battery = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      workingStatus: null == workingStatus
          ? _value.workingStatus
          : workingStatus // ignore: cast_nullable_to_non_nullable
              as VacuumCleanerStatus,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as OnlineStatus,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__DeviceStatusVacuumCleanerCopyWith<$Res>
    implements _$DeviceStatusVacuumCleanerCopyWith<$Res> {
  factory _$$__DeviceStatusVacuumCleanerCopyWith(
          _$__DeviceStatusVacuumCleaner value,
          $Res Function(_$__DeviceStatusVacuumCleaner) then) =
      __$$__DeviceStatusVacuumCleanerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
      @VacuumCleanerStatusConverter()
      VacuumCleanerStatus workingStatus,
      @JsonKey(defaultValue: OnlineStatus.offline)
      @OnlineStatusConverter()
      OnlineStatus onlineStatus,
      @JsonKey(defaultValue: 0) int battery});
}

/// @nodoc
class __$$__DeviceStatusVacuumCleanerCopyWithImpl<$Res>
    extends __$DeviceStatusVacuumCleanerCopyWithImpl<$Res,
        _$__DeviceStatusVacuumCleaner>
    implements _$$__DeviceStatusVacuumCleanerCopyWith<$Res> {
  __$$__DeviceStatusVacuumCleanerCopyWithImpl(
      _$__DeviceStatusVacuumCleaner _value,
      $Res Function(_$__DeviceStatusVacuumCleaner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? workingStatus = null,
    Object? onlineStatus = null,
    Object? battery = null,
  }) {
    return _then(_$__DeviceStatusVacuumCleaner(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      workingStatus: null == workingStatus
          ? _value.workingStatus
          : workingStatus // ignore: cast_nullable_to_non_nullable
              as VacuumCleanerStatus,
      onlineStatus: null == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as OnlineStatus,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__DeviceStatusVacuumCleaner implements __DeviceStatusVacuumCleaner {
  const _$__DeviceStatusVacuumCleaner(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
      @VacuumCleanerStatusConverter()
      required this.workingStatus,
      @JsonKey(defaultValue: OnlineStatus.offline)
      @OnlineStatusConverter()
      required this.onlineStatus,
      @JsonKey(defaultValue: 0) required this.battery});

  factory _$__DeviceStatusVacuumCleaner.fromJson(Map<String, dynamic> json) =>
      _$$__DeviceStatusVacuumCleanerFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// [PhysicalDeviceType.robotVacuumCleanerS1]
  /// or [PhysicalDeviceType.robotVacuumCleanerS1Plus]
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;

  /// the working status of the device
  @override
  @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
  @VacuumCleanerStatusConverter()
  final VacuumCleanerStatus workingStatus;

  /// the connection status of the device. online or offline
  @override
  @JsonKey(defaultValue: OnlineStatus.offline)
  @OnlineStatusConverter()
  final OnlineStatus onlineStatus;

  /// the current battery level
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  @override
  String toString() {
    return '_DeviceStatusVacuumCleaner(id: $id, hubDeviceId: $hubDeviceId, type: $type, workingStatus: $workingStatus, onlineStatus: $onlineStatus, battery: $battery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DeviceStatusVacuumCleaner &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.workingStatus, workingStatus) ||
                other.workingStatus == workingStatus) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.battery, battery) || other.battery == battery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, hubDeviceId, type, workingStatus, onlineStatus, battery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__DeviceStatusVacuumCleanerCopyWith<_$__DeviceStatusVacuumCleaner>
      get copyWith => __$$__DeviceStatusVacuumCleanerCopyWithImpl<
          _$__DeviceStatusVacuumCleaner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__DeviceStatusVacuumCleanerToJson(
      this,
    );
  }
}

abstract class __DeviceStatusVacuumCleaner
    implements _DeviceStatusVacuumCleaner {
  const factory __DeviceStatusVacuumCleaner(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(name: 'deviceType')
          @PhysicalDeviceTypeConverter()
          required final PhysicalDeviceType type,
          @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
          @VacuumCleanerStatusConverter()
          required final VacuumCleanerStatus workingStatus,
          @JsonKey(defaultValue: OnlineStatus.offline)
          @OnlineStatusConverter()
          required final OnlineStatus onlineStatus,
          @JsonKey(defaultValue: 0) required final int battery}) =
      _$__DeviceStatusVacuumCleaner;

  factory __DeviceStatusVacuumCleaner.fromJson(Map<String, dynamic> json) =
      _$__DeviceStatusVacuumCleaner.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// [PhysicalDeviceType.robotVacuumCleanerS1]
  /// or [PhysicalDeviceType.robotVacuumCleanerS1Plus]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override

  /// the working status of the device
  @JsonKey(defaultValue: VacuumCleanerStatus.standBy)
  @VacuumCleanerStatusConverter()
  VacuumCleanerStatus get workingStatus;
  @override

  /// the connection status of the device. online or offline
  @JsonKey(defaultValue: OnlineStatus.offline)
  @OnlineStatusConverter()
  OnlineStatus get onlineStatus;
  @override

  /// the current battery level
  @JsonKey(defaultValue: 0)
  int get battery;
  @override
  @JsonKey(ignore: true)
  _$$__DeviceStatusVacuumCleanerCopyWith<_$__DeviceStatusVacuumCleaner>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceStatusCurtain _$DeviceStatusCurtainFromJson(Map<String, dynamic> json) {
  return _DeviceStatusCurtain.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusCurtain {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// determines if the open position and the close position of
  /// a device have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate => throw _privateConstructorUsedError;

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @JsonKey(defaultValue: false)
  bool get group => throw _privateConstructorUsedError;

  /// determines if a Curtain is moving or not
  @JsonKey(defaultValue: false)
  bool get moving => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// the percentage of the distance between the calibrated open position
  /// and closed position that Curtain has traversed
  @JsonKey(defaultValue: 0)
  int get slidePosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusCurtainCopyWith<DeviceStatusCurtain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusCurtainCopyWith<$Res> {
  factory $DeviceStatusCurtainCopyWith(
          DeviceStatusCurtain value, $Res Function(DeviceStatusCurtain) then) =
      _$DeviceStatusCurtainCopyWithImpl<$Res, DeviceStatusCurtain>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: false) bool moving,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class _$DeviceStatusCurtainCopyWithImpl<$Res, $Val extends DeviceStatusCurtain>
    implements $DeviceStatusCurtainCopyWith<$Res> {
  _$DeviceStatusCurtainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? calibrate = null,
    Object? group = null,
    Object? moving = null,
    Object? battery = null,
    Object? version = null,
    Object? slidePosition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
              as bool,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      slidePosition: null == slidePosition
          ? _value.slidePosition
          : slidePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusCurtainCopyWith<$Res>
    implements $DeviceStatusCurtainCopyWith<$Res> {
  factory _$$_DeviceStatusCurtainCopyWith(_$_DeviceStatusCurtain value,
          $Res Function(_$_DeviceStatusCurtain) then) =
      __$$_DeviceStatusCurtainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: false) bool calibrate,
      @JsonKey(defaultValue: false) bool group,
      @JsonKey(defaultValue: false) bool moving,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0) int slidePosition});
}

/// @nodoc
class __$$_DeviceStatusCurtainCopyWithImpl<$Res>
    extends _$DeviceStatusCurtainCopyWithImpl<$Res, _$_DeviceStatusCurtain>
    implements _$$_DeviceStatusCurtainCopyWith<$Res> {
  __$$_DeviceStatusCurtainCopyWithImpl(_$_DeviceStatusCurtain _value,
      $Res Function(_$_DeviceStatusCurtain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? calibrate = null,
    Object? group = null,
    Object? moving = null,
    Object? battery = null,
    Object? version = null,
    Object? slidePosition = null,
  }) {
    return _then(_$_DeviceStatusCurtain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as bool,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
              as bool,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
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
class _$_DeviceStatusCurtain extends _DeviceStatusCurtain {
  const _$_DeviceStatusCurtain(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: false) required this.calibrate,
      @JsonKey(defaultValue: false) required this.group,
      @JsonKey(defaultValue: false) required this.moving,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 0) required this.slidePosition})
      : super._();

  factory _$_DeviceStatusCurtain.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusCurtainFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// determines if the open position and the close position of
  /// a device have been properly calibrated or not
  @override
  @JsonKey(defaultValue: false)
  final bool calibrate;

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @override
  @JsonKey(defaultValue: false)
  final bool group;

  /// determines if a Curtain is moving or not
  @override
  @JsonKey(defaultValue: false)
  final bool moving;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V4.2
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// the percentage of the distance between the calibrated open position
  /// and closed position that Curtain has traversed
  @override
  @JsonKey(defaultValue: 0)
  final int slidePosition;

  @override
  String toString() {
    return 'DeviceStatusCurtain(id: $id, hubDeviceId: $hubDeviceId, calibrate: $calibrate, group: $group, moving: $moving, battery: $battery, version: $version, slidePosition: $slidePosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusCurtain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.calibrate, calibrate) ||
                other.calibrate == calibrate) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.moving, moving) || other.moving == moving) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.slidePosition, slidePosition) ||
                other.slidePosition == slidePosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, calibrate,
      group, moving, battery, version, slidePosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusCurtainCopyWith<_$_DeviceStatusCurtain> get copyWith =>
      __$$_DeviceStatusCurtainCopyWithImpl<_$_DeviceStatusCurtain>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusCurtainToJson(
      this,
    );
  }
}

abstract class _DeviceStatusCurtain extends DeviceStatusCurtain {
  const factory _DeviceStatusCurtain(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(defaultValue: false) required final bool calibrate,
          @JsonKey(defaultValue: false) required final bool group,
          @JsonKey(defaultValue: false) required final bool moving,
          @JsonKey(defaultValue: 0) required final int battery,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 0) required final int slidePosition}) =
      _$_DeviceStatusCurtain;
  const _DeviceStatusCurtain._() : super._();

  factory _DeviceStatusCurtain.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusCurtain.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// determines if the open position and the close position of
  /// a device have been properly calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate;
  @override

  /// determines if a Curtain is paired with
  /// or grouped with another Curtain or not
  @JsonKey(defaultValue: false)
  bool get group;
  @override

  /// determines if a Curtain is moving or not
  @JsonKey(defaultValue: false)
  bool get moving;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// the percentage of the distance between the calibrated open position
  /// and closed position that Curtain has traversed
  @JsonKey(defaultValue: 0)
  int get slidePosition;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusCurtainCopyWith<_$_DeviceStatusCurtain> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusHub2 _$DeviceStatusHub2FromJson(Map<String, dynamic> json) {
  return _DeviceStatusHub2.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusHub2 {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// temperature in celsius
  @JsonKey(defaultValue: 0.0)
  double get temperature => throw _privateConstructorUsedError;

  /// the level of illuminance of the ambience light, 1~20
  @JsonKey(defaultValue: 1)
  int get lightLevel => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// humidity percentage
  @JsonKey(defaultValue: 0)
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusHub2CopyWith<DeviceStatusHub2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusHub2CopyWith<$Res> {
  factory $DeviceStatusHub2CopyWith(
          DeviceStatusHub2 value, $Res Function(DeviceStatusHub2) then) =
      _$DeviceStatusHub2CopyWithImpl<$Res, DeviceStatusHub2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0.0) double temperature,
      @JsonKey(defaultValue: 1) int lightLevel,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0) int humidity});
}

/// @nodoc
class _$DeviceStatusHub2CopyWithImpl<$Res, $Val extends DeviceStatusHub2>
    implements $DeviceStatusHub2CopyWith<$Res> {
  _$DeviceStatusHub2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? temperature = null,
    Object? lightLevel = null,
    Object? version = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusHub2CopyWith<$Res>
    implements $DeviceStatusHub2CopyWith<$Res> {
  factory _$$_DeviceStatusHub2CopyWith(
          _$_DeviceStatusHub2 value, $Res Function(_$_DeviceStatusHub2) then) =
      __$$_DeviceStatusHub2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0.0) double temperature,
      @JsonKey(defaultValue: 1) int lightLevel,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0) int humidity});
}

/// @nodoc
class __$$_DeviceStatusHub2CopyWithImpl<$Res>
    extends _$DeviceStatusHub2CopyWithImpl<$Res, _$_DeviceStatusHub2>
    implements _$$_DeviceStatusHub2CopyWith<$Res> {
  __$$_DeviceStatusHub2CopyWithImpl(
      _$_DeviceStatusHub2 _value, $Res Function(_$_DeviceStatusHub2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? temperature = null,
    Object? lightLevel = null,
    Object? version = null,
    Object? humidity = null,
  }) {
    return _then(_$_DeviceStatusHub2(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusHub2 extends _DeviceStatusHub2 {
  const _$_DeviceStatusHub2(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0.0) required this.temperature,
      @JsonKey(defaultValue: 1) required this.lightLevel,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 0) required this.humidity})
      : super._();

  factory _$_DeviceStatusHub2.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusHub2FromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// temperature in celsius
  @override
  @JsonKey(defaultValue: 0.0)
  final double temperature;

  /// the level of illuminance of the ambience light, 1~20
  @override
  @JsonKey(defaultValue: 1)
  final int lightLevel;

  /// the current firmware version, e.g. V4.2
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// humidity percentage
  @override
  @JsonKey(defaultValue: 0)
  final int humidity;

  @override
  String toString() {
    return 'DeviceStatusHub2(id: $id, hubDeviceId: $hubDeviceId, temperature: $temperature, lightLevel: $lightLevel, version: $version, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusHub2 &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.lightLevel, lightLevel) ||
                other.lightLevel == lightLevel) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, hubDeviceId, temperature, lightLevel, version, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusHub2CopyWith<_$_DeviceStatusHub2> get copyWith =>
      __$$_DeviceStatusHub2CopyWithImpl<_$_DeviceStatusHub2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusHub2ToJson(
      this,
    );
  }
}

abstract class _DeviceStatusHub2 extends DeviceStatusHub2 {
  const factory _DeviceStatusHub2(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(defaultValue: 0.0) required final double temperature,
          @JsonKey(defaultValue: 1) required final int lightLevel,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 0) required final int humidity}) =
      _$_DeviceStatusHub2;
  const _DeviceStatusHub2._() : super._();

  factory _DeviceStatusHub2.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusHub2.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// temperature in celsius
  @JsonKey(defaultValue: 0.0)
  double get temperature;
  @override

  /// the level of illuminance of the ambience light, 1~20
  @JsonKey(defaultValue: 1)
  int get lightLevel;
  @override

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// humidity percentage
  @JsonKey(defaultValue: 0)
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusHub2CopyWith<_$_DeviceStatusHub2> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusHumidifier _$DeviceStatusHumidifierFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusHumidifier.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusHumidifier {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power => throw _privateConstructorUsedError;

  /// humidity percentage
  @JsonKey(defaultValue: 0)
  int get humidity => throw _privateConstructorUsedError;

  /// temperature in celsius
  @JsonKey(defaultValue: 0.0)
  double get temperature => throw _privateConstructorUsedError;

  /// atomization efficiency percentage
  @JsonKey(defaultValue: 0)
  int get nebulizationEfficiency => throw _privateConstructorUsedError;

  /// determines if a Humidifier is in Auto Mode or not
  @JsonKey(defaultValue: false)
  bool get auto => throw _privateConstructorUsedError;

  /// determines if a Humidifier's safety lock is on or not
  @JsonKey(defaultValue: false)
  bool get childLock => throw _privateConstructorUsedError;

  /// determines if a Humidifier is muted or not
  @JsonKey(defaultValue: false)
  bool get sound => throw _privateConstructorUsedError;

  /// determines if the water tank is empty or not
  @JsonKey(defaultValue: false)
  bool get lackWater => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusHumidifierCopyWith<DeviceStatusHumidifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusHumidifierCopyWith<$Res> {
  factory $DeviceStatusHumidifierCopyWith(DeviceStatusHumidifier value,
          $Res Function(DeviceStatusHumidifier) then) =
      _$DeviceStatusHumidifierCopyWithImpl<$Res, DeviceStatusHumidifier>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: 0) int humidity,
      @JsonKey(defaultValue: 0.0) double temperature,
      @JsonKey(defaultValue: 0) int nebulizationEfficiency,
      @JsonKey(defaultValue: false) bool auto,
      @JsonKey(defaultValue: false) bool childLock,
      @JsonKey(defaultValue: false) bool sound,
      @JsonKey(defaultValue: false) bool lackWater});
}

/// @nodoc
class _$DeviceStatusHumidifierCopyWithImpl<$Res,
        $Val extends DeviceStatusHumidifier>
    implements $DeviceStatusHumidifierCopyWith<$Res> {
  _$DeviceStatusHumidifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? humidity = null,
    Object? temperature = null,
    Object? nebulizationEfficiency = null,
    Object? auto = null,
    Object? childLock = null,
    Object? sound = null,
    Object? lackWater = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      nebulizationEfficiency: null == nebulizationEfficiency
          ? _value.nebulizationEfficiency
          : nebulizationEfficiency // ignore: cast_nullable_to_non_nullable
              as int,
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      childLock: null == childLock
          ? _value.childLock
          : childLock // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      lackWater: null == lackWater
          ? _value.lackWater
          : lackWater // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusHumidifierCopyWith<$Res>
    implements $DeviceStatusHumidifierCopyWith<$Res> {
  factory _$$_DeviceStatusHumidifierCopyWith(_$_DeviceStatusHumidifier value,
          $Res Function(_$_DeviceStatusHumidifier) then) =
      __$$_DeviceStatusHumidifierCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: 0) int humidity,
      @JsonKey(defaultValue: 0.0) double temperature,
      @JsonKey(defaultValue: 0) int nebulizationEfficiency,
      @JsonKey(defaultValue: false) bool auto,
      @JsonKey(defaultValue: false) bool childLock,
      @JsonKey(defaultValue: false) bool sound,
      @JsonKey(defaultValue: false) bool lackWater});
}

/// @nodoc
class __$$_DeviceStatusHumidifierCopyWithImpl<$Res>
    extends _$DeviceStatusHumidifierCopyWithImpl<$Res,
        _$_DeviceStatusHumidifier>
    implements _$$_DeviceStatusHumidifierCopyWith<$Res> {
  __$$_DeviceStatusHumidifierCopyWithImpl(_$_DeviceStatusHumidifier _value,
      $Res Function(_$_DeviceStatusHumidifier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? humidity = null,
    Object? temperature = null,
    Object? nebulizationEfficiency = null,
    Object? auto = null,
    Object? childLock = null,
    Object? sound = null,
    Object? lackWater = null,
  }) {
    return _then(_$_DeviceStatusHumidifier(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      nebulizationEfficiency: null == nebulizationEfficiency
          ? _value.nebulizationEfficiency
          : nebulizationEfficiency // ignore: cast_nullable_to_non_nullable
              as int,
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as bool,
      childLock: null == childLock
          ? _value.childLock
          : childLock // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      lackWater: null == lackWater
          ? _value.lackWater
          : lackWater // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusHumidifier extends _DeviceStatusHumidifier {
  const _$_DeviceStatusHumidifier(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      required this.power,
      @JsonKey(defaultValue: 0) required this.humidity,
      @JsonKey(defaultValue: 0.0) required this.temperature,
      @JsonKey(defaultValue: 0) required this.nebulizationEfficiency,
      @JsonKey(defaultValue: false) required this.auto,
      @JsonKey(defaultValue: false) required this.childLock,
      @JsonKey(defaultValue: false) required this.sound,
      @JsonKey(defaultValue: false) required this.lackWater})
      : super._();

  factory _$_DeviceStatusHumidifier.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusHumidifierFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  final PowerState power;

  /// humidity percentage
  @override
  @JsonKey(defaultValue: 0)
  final int humidity;

  /// temperature in celsius
  @override
  @JsonKey(defaultValue: 0.0)
  final double temperature;

  /// atomization efficiency percentage
  @override
  @JsonKey(defaultValue: 0)
  final int nebulizationEfficiency;

  /// determines if a Humidifier is in Auto Mode or not
  @override
  @JsonKey(defaultValue: false)
  final bool auto;

  /// determines if a Humidifier's safety lock is on or not
  @override
  @JsonKey(defaultValue: false)
  final bool childLock;

  /// determines if a Humidifier is muted or not
  @override
  @JsonKey(defaultValue: false)
  final bool sound;

  /// determines if the water tank is empty or not
  @override
  @JsonKey(defaultValue: false)
  final bool lackWater;

  @override
  String toString() {
    return 'DeviceStatusHumidifier(id: $id, hubDeviceId: $hubDeviceId, power: $power, humidity: $humidity, temperature: $temperature, nebulizationEfficiency: $nebulizationEfficiency, auto: $auto, childLock: $childLock, sound: $sound, lackWater: $lackWater)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusHumidifier &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.nebulizationEfficiency, nebulizationEfficiency) ||
                other.nebulizationEfficiency == nebulizationEfficiency) &&
            (identical(other.auto, auto) || other.auto == auto) &&
            (identical(other.childLock, childLock) ||
                other.childLock == childLock) &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.lackWater, lackWater) ||
                other.lackWater == lackWater));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, power, humidity,
      temperature, nebulizationEfficiency, auto, childLock, sound, lackWater);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusHumidifierCopyWith<_$_DeviceStatusHumidifier> get copyWith =>
      __$$_DeviceStatusHumidifierCopyWithImpl<_$_DeviceStatusHumidifier>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusHumidifierToJson(
      this,
    );
  }
}

abstract class _DeviceStatusHumidifier extends DeviceStatusHumidifier {
  const factory _DeviceStatusHumidifier(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.off)
          required final PowerState power,
          @JsonKey(defaultValue: 0) required final int humidity,
          @JsonKey(defaultValue: 0.0) required final double temperature,
          @JsonKey(defaultValue: 0) required final int nebulizationEfficiency,
          @JsonKey(defaultValue: false) required final bool auto,
          @JsonKey(defaultValue: false) required final bool childLock,
          @JsonKey(defaultValue: false) required final bool sound,
          @JsonKey(defaultValue: false) required final bool lackWater}) =
      _$_DeviceStatusHumidifier;
  const _DeviceStatusHumidifier._() : super._();

  factory _DeviceStatusHumidifier.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusHumidifier.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power;
  @override

  /// humidity percentage
  @JsonKey(defaultValue: 0)
  int get humidity;
  @override

  /// temperature in celsius
  @JsonKey(defaultValue: 0.0)
  double get temperature;
  @override

  /// atomization efficiency percentage
  @JsonKey(defaultValue: 0)
  int get nebulizationEfficiency;
  @override

  /// determines if a Humidifier is in Auto Mode or not
  @JsonKey(defaultValue: false)
  bool get auto;
  @override

  /// determines if a Humidifier's safety lock is on or not
  @JsonKey(defaultValue: false)
  bool get childLock;
  @override

  /// determines if a Humidifier is muted or not
  @JsonKey(defaultValue: false)
  bool get sound;
  @override

  /// determines if the water tank is empty or not
  @JsonKey(defaultValue: false)
  bool get lackWater;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusHumidifierCopyWith<_$_DeviceStatusHumidifier> get copyWith =>
      throw _privateConstructorUsedError;
}

_DeviceStatusCeilingLight _$_DeviceStatusCeilingLightFromJson(
    Map<String, dynamic> json) {
  return __DeviceStatusCeilingLight.fromJson(json);
}

/// @nodoc
mixin _$_DeviceStatusCeilingLight {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power => throw _privateConstructorUsedError;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness => throw _privateConstructorUsedError;

  /// the color temperature value, range from 2700 to 6500
  @JsonKey(defaultValue: 2700)
  int get colorTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeviceStatusCeilingLightCopyWith<_DeviceStatusCeilingLight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeviceStatusCeilingLightCopyWith<$Res> {
  factory _$DeviceStatusCeilingLightCopyWith(_DeviceStatusCeilingLight value,
          $Res Function(_DeviceStatusCeilingLight) then) =
      __$DeviceStatusCeilingLightCopyWithImpl<$Res, _DeviceStatusCeilingLight>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @JsonKey(defaultValue: 2700) int colorTemperature});
}

/// @nodoc
class __$DeviceStatusCeilingLightCopyWithImpl<$Res,
        $Val extends _DeviceStatusCeilingLight>
    implements _$DeviceStatusCeilingLightCopyWith<$Res> {
  __$DeviceStatusCeilingLightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? colorTemperature = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      colorTemperature: null == colorTemperature
          ? _value.colorTemperature
          : colorTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__DeviceStatusCeilingLightCopyWith<$Res>
    implements _$DeviceStatusCeilingLightCopyWith<$Res> {
  factory _$$__DeviceStatusCeilingLightCopyWith(
          _$__DeviceStatusCeilingLight value,
          $Res Function(_$__DeviceStatusCeilingLight) then) =
      __$$__DeviceStatusCeilingLightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @JsonKey(defaultValue: 2700) int colorTemperature});
}

/// @nodoc
class __$$__DeviceStatusCeilingLightCopyWithImpl<$Res>
    extends __$DeviceStatusCeilingLightCopyWithImpl<$Res,
        _$__DeviceStatusCeilingLight>
    implements _$$__DeviceStatusCeilingLightCopyWith<$Res> {
  __$$__DeviceStatusCeilingLightCopyWithImpl(
      _$__DeviceStatusCeilingLight _value,
      $Res Function(_$__DeviceStatusCeilingLight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? colorTemperature = null,
  }) {
    return _then(_$__DeviceStatusCeilingLight(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      colorTemperature: null == colorTemperature
          ? _value.colorTemperature
          : colorTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__DeviceStatusCeilingLight implements __DeviceStatusCeilingLight {
  const _$__DeviceStatusCeilingLight(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      required this.power,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 100) required this.brightness,
      @JsonKey(defaultValue: 2700) required this.colorTemperature});

  factory _$__DeviceStatusCeilingLight.fromJson(Map<String, dynamic> json) =>
      _$$__DeviceStatusCeilingLightFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  final PowerState power;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// the brightness value, range from 1 to 100
  @override
  @JsonKey(defaultValue: 100)
  final int brightness;

  /// the color temperature value, range from 2700 to 6500
  @override
  @JsonKey(defaultValue: 2700)
  final int colorTemperature;

  @override
  String toString() {
    return '_DeviceStatusCeilingLight(id: $id, hubDeviceId: $hubDeviceId, type: $type, power: $power, version: $version, brightness: $brightness, colorTemperature: $colorTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DeviceStatusCeilingLight &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.colorTemperature, colorTemperature) ||
                other.colorTemperature == colorTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, type, power,
      version, brightness, colorTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__DeviceStatusCeilingLightCopyWith<_$__DeviceStatusCeilingLight>
      get copyWith => __$$__DeviceStatusCeilingLightCopyWithImpl<
          _$__DeviceStatusCeilingLight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__DeviceStatusCeilingLightToJson(
      this,
    );
  }
}

abstract class __DeviceStatusCeilingLight implements _DeviceStatusCeilingLight {
  const factory __DeviceStatusCeilingLight(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(name: 'deviceType')
          @PhysicalDeviceTypeConverter()
          required final PhysicalDeviceType type,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.off)
          required final PowerState power,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 100) required final int brightness,
          @JsonKey(defaultValue: 2700) required final int colorTemperature}) =
      _$__DeviceStatusCeilingLight;

  factory __DeviceStatusCeilingLight.fromJson(Map<String, dynamic> json) =
      _$__DeviceStatusCeilingLight.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power;
  @override

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness;
  @override

  /// the color temperature value, range from 2700 to 6500
  @JsonKey(defaultValue: 2700)
  int get colorTemperature;
  @override
  @JsonKey(ignore: true)
  _$$__DeviceStatusCeilingLightCopyWith<_$__DeviceStatusCeilingLight>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceStatusStripLight _$DeviceStatusStripLightFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusStripLight.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusStripLight {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power => throw _privateConstructorUsedError;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness => throw _privateConstructorUsedError;

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusStripLightCopyWith<DeviceStatusStripLight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusStripLightCopyWith<$Res> {
  factory $DeviceStatusStripLightCopyWith(DeviceStatusStripLight value,
          $Res Function(DeviceStatusStripLight) then) =
      _$DeviceStatusStripLightCopyWithImpl<$Res, DeviceStatusStripLight>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @ColorConverter() Color color});
}

/// @nodoc
class _$DeviceStatusStripLightCopyWithImpl<$Res,
        $Val extends DeviceStatusStripLight>
    implements $DeviceStatusStripLightCopyWith<$Res> {
  _$DeviceStatusStripLightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusStripLightCopyWith<$Res>
    implements $DeviceStatusStripLightCopyWith<$Res> {
  factory _$$_DeviceStatusStripLightCopyWith(_$_DeviceStatusStripLight value,
          $Res Function(_$_DeviceStatusStripLight) then) =
      __$$_DeviceStatusStripLightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @ColorConverter() Color color});
}

/// @nodoc
class __$$_DeviceStatusStripLightCopyWithImpl<$Res>
    extends _$DeviceStatusStripLightCopyWithImpl<$Res,
        _$_DeviceStatusStripLight>
    implements _$$_DeviceStatusStripLightCopyWith<$Res> {
  __$$_DeviceStatusStripLightCopyWithImpl(_$_DeviceStatusStripLight _value,
      $Res Function(_$_DeviceStatusStripLight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? color = null,
  }) {
    return _then(_$_DeviceStatusStripLight(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusStripLight extends _DeviceStatusStripLight {
  const _$_DeviceStatusStripLight(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      required this.power,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 100) required this.brightness,
      @ColorConverter() required this.color})
      : super._();

  factory _$_DeviceStatusStripLight.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusStripLightFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  final PowerState power;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// the brightness value, range from 1 to 100
  @override
  @JsonKey(defaultValue: 100)
  final int brightness;

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @override
  @ColorConverter()
  final Color color;

  @override
  String toString() {
    return 'DeviceStatusStripLight(id: $id, hubDeviceId: $hubDeviceId, power: $power, version: $version, brightness: $brightness, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusStripLight &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, hubDeviceId, power, version, brightness, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusStripLightCopyWith<_$_DeviceStatusStripLight> get copyWith =>
      __$$_DeviceStatusStripLightCopyWithImpl<_$_DeviceStatusStripLight>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusStripLightToJson(
      this,
    );
  }
}

abstract class _DeviceStatusStripLight extends DeviceStatusStripLight {
  const factory _DeviceStatusStripLight(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.off)
          required final PowerState power,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 100) required final int brightness,
          @ColorConverter() required final Color color}) =
      _$_DeviceStatusStripLight;
  const _DeviceStatusStripLight._() : super._();

  factory _DeviceStatusStripLight.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusStripLight.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power;
  @override

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness;
  @override

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @ColorConverter()
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusStripLightCopyWith<_$_DeviceStatusStripLight> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusColorBulb _$DeviceStatusColorBulbFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusColorBulb.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusColorBulb {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power => throw _privateConstructorUsedError;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness => throw _privateConstructorUsedError;

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  /// the color temperature value, range from 2700 to 6500
  @JsonKey(defaultValue: 2700)
  int get colorTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusColorBulbCopyWith<DeviceStatusColorBulb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusColorBulbCopyWith<$Res> {
  factory $DeviceStatusColorBulbCopyWith(DeviceStatusColorBulb value,
          $Res Function(DeviceStatusColorBulb) then) =
      _$DeviceStatusColorBulbCopyWithImpl<$Res, DeviceStatusColorBulb>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @ColorConverter() Color color,
      @JsonKey(defaultValue: 2700) int colorTemperature});
}

/// @nodoc
class _$DeviceStatusColorBulbCopyWithImpl<$Res,
        $Val extends DeviceStatusColorBulb>
    implements $DeviceStatusColorBulbCopyWith<$Res> {
  _$DeviceStatusColorBulbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? color = null,
    Object? colorTemperature = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      colorTemperature: null == colorTemperature
          ? _value.colorTemperature
          : colorTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusColorBulbCopyWith<$Res>
    implements $DeviceStatusColorBulbCopyWith<$Res> {
  factory _$$_DeviceStatusColorBulbCopyWith(_$_DeviceStatusColorBulb value,
          $Res Function(_$_DeviceStatusColorBulb) then) =
      __$$_DeviceStatusColorBulbCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 100) int brightness,
      @ColorConverter() Color color,
      @JsonKey(defaultValue: 2700) int colorTemperature});
}

/// @nodoc
class __$$_DeviceStatusColorBulbCopyWithImpl<$Res>
    extends _$DeviceStatusColorBulbCopyWithImpl<$Res, _$_DeviceStatusColorBulb>
    implements _$$_DeviceStatusColorBulbCopyWith<$Res> {
  __$$_DeviceStatusColorBulbCopyWithImpl(_$_DeviceStatusColorBulb _value,
      $Res Function(_$_DeviceStatusColorBulb) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
    Object? brightness = null,
    Object? color = null,
    Object? colorTemperature = null,
  }) {
    return _then(_$_DeviceStatusColorBulb(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      colorTemperature: null == colorTemperature
          ? _value.colorTemperature
          : colorTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusColorBulb extends _DeviceStatusColorBulb {
  const _$_DeviceStatusColorBulb(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      required this.power,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 100) required this.brightness,
      @ColorConverter() required this.color,
      @JsonKey(defaultValue: 2700) required this.colorTemperature})
      : super._();

  factory _$_DeviceStatusColorBulb.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusColorBulbFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  final PowerState power;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// the brightness value, range from 1 to 100
  @override
  @JsonKey(defaultValue: 100)
  final int brightness;

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @override
  @ColorConverter()
  final Color color;

  /// the color temperature value, range from 2700 to 6500
  @override
  @JsonKey(defaultValue: 2700)
  final int colorTemperature;

  @override
  String toString() {
    return 'DeviceStatusColorBulb(id: $id, hubDeviceId: $hubDeviceId, power: $power, version: $version, brightness: $brightness, color: $color, colorTemperature: $colorTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusColorBulb &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorTemperature, colorTemperature) ||
                other.colorTemperature == colorTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, power, version,
      brightness, color, colorTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusColorBulbCopyWith<_$_DeviceStatusColorBulb> get copyWith =>
      __$$_DeviceStatusColorBulbCopyWithImpl<_$_DeviceStatusColorBulb>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusColorBulbToJson(
      this,
    );
  }
}

abstract class _DeviceStatusColorBulb extends DeviceStatusColorBulb {
  const factory _DeviceStatusColorBulb(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.off)
          required final PowerState power,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 100) required final int brightness,
          @ColorConverter() required final Color color,
          @JsonKey(defaultValue: 2700) required final int colorTemperature}) =
      _$_DeviceStatusColorBulb;
  const _DeviceStatusColorBulb._() : super._();

  factory _DeviceStatusColorBulb.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusColorBulb.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power;
  @override

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// the brightness value, range from 1 to 100
  @JsonKey(defaultValue: 100)
  int get brightness;
  @override

  /// the color value, RGB "255:255:255"
  ///
  /// the alpha channel is 0xFF
  @ColorConverter()
  Color get color;
  @override

  /// the color temperature value, range from 2700 to 6500
  @JsonKey(defaultValue: 2700)
  int get colorTemperature;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusColorBulbCopyWith<_$_DeviceStatusColorBulb> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusLock _$DeviceStatusLockFromJson(Map<String, dynamic> json) {
  return _DeviceStatusLock.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusLock {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// determines if locked or not
  @LockStateConverter()
  LockState get lockState =>
      throw _privateConstructorUsedError; // TODO change to enum if possible
  /// determines if the door is closed or not
  String get doorState => throw _privateConstructorUsedError;

  /// determines if Lock has been calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusLockCopyWith<DeviceStatusLock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusLockCopyWith<$Res> {
  factory $DeviceStatusLockCopyWith(
          DeviceStatusLock value, $Res Function(DeviceStatusLock) then) =
      _$DeviceStatusLockCopyWithImpl<$Res, DeviceStatusLock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @LockStateConverter() LockState lockState,
      String doorState,
      @JsonKey(defaultValue: false) bool calibrate});
}

/// @nodoc
class _$DeviceStatusLockCopyWithImpl<$Res, $Val extends DeviceStatusLock>
    implements $DeviceStatusLockCopyWith<$Res> {
  _$DeviceStatusLockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? lockState = null,
    Object? doorState = null,
    Object? calibrate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lockState: null == lockState
          ? _value.lockState
          : lockState // ignore: cast_nullable_to_non_nullable
              as LockState,
      doorState: null == doorState
          ? _value.doorState
          : doorState // ignore: cast_nullable_to_non_nullable
              as String,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusLockCopyWith<$Res>
    implements $DeviceStatusLockCopyWith<$Res> {
  factory _$$_DeviceStatusLockCopyWith(
          _$_DeviceStatusLock value, $Res Function(_$_DeviceStatusLock) then) =
      __$$_DeviceStatusLockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @LockStateConverter() LockState lockState,
      String doorState,
      @JsonKey(defaultValue: false) bool calibrate});
}

/// @nodoc
class __$$_DeviceStatusLockCopyWithImpl<$Res>
    extends _$DeviceStatusLockCopyWithImpl<$Res, _$_DeviceStatusLock>
    implements _$$_DeviceStatusLockCopyWith<$Res> {
  __$$_DeviceStatusLockCopyWithImpl(
      _$_DeviceStatusLock _value, $Res Function(_$_DeviceStatusLock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? lockState = null,
    Object? doorState = null,
    Object? calibrate = null,
  }) {
    return _then(_$_DeviceStatusLock(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lockState: null == lockState
          ? _value.lockState
          : lockState // ignore: cast_nullable_to_non_nullable
              as LockState,
      doorState: null == doorState
          ? _value.doorState
          : doorState // ignore: cast_nullable_to_non_nullable
              as String,
      calibrate: null == calibrate
          ? _value.calibrate
          : calibrate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusLock extends _DeviceStatusLock {
  const _$_DeviceStatusLock(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      @LockStateConverter() required this.lockState,
      required this.doorState,
      @JsonKey(defaultValue: false) required this.calibrate})
      : super._();

  factory _$_DeviceStatusLock.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusLockFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// determines if locked or not
  @override
  @LockStateConverter()
  final LockState lockState;
// TODO change to enum if possible
  /// determines if the door is closed or not
  @override
  final String doorState;

  /// determines if Lock has been calibrated or not
  @override
  @JsonKey(defaultValue: false)
  final bool calibrate;

  @override
  String toString() {
    return 'DeviceStatusLock(id: $id, hubDeviceId: $hubDeviceId, battery: $battery, version: $version, lockState: $lockState, doorState: $doorState, calibrate: $calibrate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusLock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lockState, lockState) ||
                other.lockState == lockState) &&
            (identical(other.doorState, doorState) ||
                other.doorState == doorState) &&
            (identical(other.calibrate, calibrate) ||
                other.calibrate == calibrate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, battery,
      version, lockState, doorState, calibrate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusLockCopyWith<_$_DeviceStatusLock> get copyWith =>
      __$$_DeviceStatusLockCopyWithImpl<_$_DeviceStatusLock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusLockToJson(
      this,
    );
  }
}

abstract class _DeviceStatusLock extends DeviceStatusLock {
  const factory _DeviceStatusLock(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(defaultValue: 0) required final int battery,
          @JsonKey(defaultValue: '') required final String version,
          @LockStateConverter() required final LockState lockState,
          required final String doorState,
          @JsonKey(defaultValue: false) required final bool calibrate}) =
      _$_DeviceStatusLock;
  const _DeviceStatusLock._() : super._();

  factory _DeviceStatusLock.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusLock.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// determines if locked or not
  @LockStateConverter()
  LockState get lockState;
  @override // TODO change to enum if possible
  /// determines if the door is closed or not
  String get doorState;
  @override

  /// determines if Lock has been calibrated or not
  @JsonKey(defaultValue: false)
  bool get calibrate;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusLockCopyWith<_$_DeviceStatusLock> get copyWith =>
      throw _privateConstructorUsedError;
}

_DeviceStatusMeter _$_DeviceStatusMeterFromJson(Map<String, dynamic> json) {
  return __DeviceStatusMeter.fromJson(json);
}

/// @nodoc
mixin _$_DeviceStatusMeter {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// temperature in celsius
  double get temperature => throw _privateConstructorUsedError;

  /// humidity percentage
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeviceStatusMeterCopyWith<_DeviceStatusMeter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeviceStatusMeterCopyWith<$Res> {
  factory _$DeviceStatusMeterCopyWith(
          _DeviceStatusMeter value, $Res Function(_DeviceStatusMeter) then) =
      __$DeviceStatusMeterCopyWithImpl<$Res, _DeviceStatusMeter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      double temperature,
      int humidity});
}

/// @nodoc
class __$DeviceStatusMeterCopyWithImpl<$Res, $Val extends _DeviceStatusMeter>
    implements _$DeviceStatusMeterCopyWith<$Res> {
  __$DeviceStatusMeterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__DeviceStatusMeterCopyWith<$Res>
    implements _$DeviceStatusMeterCopyWith<$Res> {
  factory _$$__DeviceStatusMeterCopyWith(_$__DeviceStatusMeter value,
          $Res Function(_$__DeviceStatusMeter) then) =
      __$$__DeviceStatusMeterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      double temperature,
      int humidity});
}

/// @nodoc
class __$$__DeviceStatusMeterCopyWithImpl<$Res>
    extends __$DeviceStatusMeterCopyWithImpl<$Res, _$__DeviceStatusMeter>
    implements _$$__DeviceStatusMeterCopyWith<$Res> {
  __$$__DeviceStatusMeterCopyWithImpl(
      _$__DeviceStatusMeter _value, $Res Function(_$__DeviceStatusMeter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_$__DeviceStatusMeter(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__DeviceStatusMeter implements __DeviceStatusMeter {
  const _$__DeviceStatusMeter(
      {@JsonKey(name: 'deviceId') required this.id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      required this.temperature,
      required this.humidity});

  factory _$__DeviceStatusMeter.fromJson(Map<String, dynamic> json) =>
      _$$__DeviceStatusMeterFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;
  @override
  final String hubDeviceId;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V4.2
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// temperature in celsius
  @override
  final double temperature;

  /// humidity percentage
  @override
  final int humidity;

  @override
  String toString() {
    return '_DeviceStatusMeter(id: $id, type: $type, hubDeviceId: $hubDeviceId, battery: $battery, version: $version, temperature: $temperature, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DeviceStatusMeter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, hubDeviceId, battery,
      version, temperature, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__DeviceStatusMeterCopyWith<_$__DeviceStatusMeter> get copyWith =>
      __$$__DeviceStatusMeterCopyWithImpl<_$__DeviceStatusMeter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__DeviceStatusMeterToJson(
      this,
    );
  }
}

abstract class __DeviceStatusMeter implements _DeviceStatusMeter {
  const factory __DeviceStatusMeter(
      {@JsonKey(name: 'deviceId') required final String id,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required final PhysicalDeviceType type,
      required final String hubDeviceId,
      @JsonKey(defaultValue: 0) required final int battery,
      @JsonKey(defaultValue: '') required final String version,
      required final double temperature,
      required final int humidity}) = _$__DeviceStatusMeter;

  factory __DeviceStatusMeter.fromJson(Map<String, dynamic> json) =
      _$__DeviceStatusMeter.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override
  String get hubDeviceId;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// temperature in celsius
  double get temperature;
  @override

  /// humidity percentage
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$__DeviceStatusMeterCopyWith<_$__DeviceStatusMeter> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusPlug _$DeviceStatusPlugFromJson(Map<String, dynamic> json) {
  return _DeviceStatusPlug.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusPlug {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power => throw _privateConstructorUsedError;

  /// the current Wi-Fi firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusPlugCopyWith<DeviceStatusPlug> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusPlugCopyWith<$Res> {
  factory $DeviceStatusPlugCopyWith(
          DeviceStatusPlug value, $Res Function(DeviceStatusPlug) then) =
      _$DeviceStatusPlugCopyWithImpl<$Res, DeviceStatusPlug>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version});
}

/// @nodoc
class _$DeviceStatusPlugCopyWithImpl<$Res, $Val extends DeviceStatusPlug>
    implements $DeviceStatusPlugCopyWith<$Res> {
  _$DeviceStatusPlugCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusPlugCopyWith<$Res>
    implements $DeviceStatusPlugCopyWith<$Res> {
  factory _$$_DeviceStatusPlugCopyWith(
          _$_DeviceStatusPlug value, $Res Function(_$_DeviceStatusPlug) then) =
      __$$_DeviceStatusPlugCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      PowerState power,
      @JsonKey(defaultValue: '') String version});
}

/// @nodoc
class __$$_DeviceStatusPlugCopyWithImpl<$Res>
    extends _$DeviceStatusPlugCopyWithImpl<$Res, _$_DeviceStatusPlug>
    implements _$$_DeviceStatusPlugCopyWith<$Res> {
  __$$_DeviceStatusPlugCopyWithImpl(
      _$_DeviceStatusPlug _value, $Res Function(_$_DeviceStatusPlug) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? power = null,
    Object? version = null,
  }) {
    return _then(_$_DeviceStatusPlug(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as PowerState,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusPlug extends _DeviceStatusPlug {
  const _$_DeviceStatusPlug(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @PowerStateConverter()
      @JsonKey(defaultValue: PowerState.off)
      required this.power,
      @JsonKey(defaultValue: '') required this.version})
      : super._();

  factory _$_DeviceStatusPlug.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusPlugFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// ON/OFF state
  @override
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  final PowerState power;

  /// the current Wi-Fi firmware version, e.g. V4.2
  @override
  @JsonKey(defaultValue: '')
  final String version;

  @override
  String toString() {
    return 'DeviceStatusPlug(id: $id, hubDeviceId: $hubDeviceId, power: $power, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusPlug &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, power, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusPlugCopyWith<_$_DeviceStatusPlug> get copyWith =>
      __$$_DeviceStatusPlugCopyWithImpl<_$_DeviceStatusPlug>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusPlugToJson(
      this,
    );
  }
}

abstract class _DeviceStatusPlug extends DeviceStatusPlug {
  const factory _DeviceStatusPlug(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @PowerStateConverter()
          @JsonKey(defaultValue: PowerState.off)
          required final PowerState power,
          @JsonKey(defaultValue: '') required final String version}) =
      _$_DeviceStatusPlug;
  const _DeviceStatusPlug._() : super._();

  factory _DeviceStatusPlug.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusPlug.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// ON/OFF state
  @PowerStateConverter()
  @JsonKey(defaultValue: PowerState.off)
  PowerState get power;
  @override

  /// the current Wi-Fi firmware version, e.g. V4.2
  @JsonKey(defaultValue: '')
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusPlugCopyWith<_$_DeviceStatusPlug> get copyWith =>
      throw _privateConstructorUsedError;
}

_DeviceStatusPlugMini _$_DeviceStatusPlugMiniFromJson(
    Map<String, dynamic> json) {
  return __DeviceStatusPlugMini.fromJson(json);
}

/// @nodoc
mixin _$_DeviceStatusPlugMini {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type => throw _privateConstructorUsedError;

  /// the voltage of the device, measured in Volt
  @JsonKey(defaultValue: 0.0)
  double get voltage => throw _privateConstructorUsedError;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// the power consumed in a day, measured in Watts
  @JsonKey(defaultValue: 0.0)
  double get weight => throw _privateConstructorUsedError;

  /// the duration that the device has been used during a day, measured in minutes
  @JsonKey(defaultValue: 0)
  int get electricityOfDay => throw _privateConstructorUsedError;

  /// the current of the device at the moment, measured in Amp
  @JsonKey(defaultValue: 0.0)
  double get electricCurrent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeviceStatusPlugMiniCopyWith<_DeviceStatusPlugMini> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeviceStatusPlugMiniCopyWith<$Res> {
  factory _$DeviceStatusPlugMiniCopyWith(_DeviceStatusPlugMini value,
          $Res Function(_DeviceStatusPlugMini) then) =
      __$DeviceStatusPlugMiniCopyWithImpl<$Res, _DeviceStatusPlugMini>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @JsonKey(defaultValue: 0.0) double voltage,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0.0) double weight,
      @JsonKey(defaultValue: 0) int electricityOfDay,
      @JsonKey(defaultValue: 0.0) double electricCurrent});
}

/// @nodoc
class __$DeviceStatusPlugMiniCopyWithImpl<$Res,
        $Val extends _DeviceStatusPlugMini>
    implements _$DeviceStatusPlugMiniCopyWith<$Res> {
  __$DeviceStatusPlugMiniCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? voltage = null,
    Object? version = null,
    Object? weight = null,
    Object? electricityOfDay = null,
    Object? electricCurrent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      electricityOfDay: null == electricityOfDay
          ? _value.electricityOfDay
          : electricityOfDay // ignore: cast_nullable_to_non_nullable
              as int,
      electricCurrent: null == electricCurrent
          ? _value.electricCurrent
          : electricCurrent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__DeviceStatusPlugMiniCopyWith<$Res>
    implements _$DeviceStatusPlugMiniCopyWith<$Res> {
  factory _$$__DeviceStatusPlugMiniCopyWith(_$__DeviceStatusPlugMini value,
          $Res Function(_$__DeviceStatusPlugMini) then) =
      __$$__DeviceStatusPlugMiniCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      PhysicalDeviceType type,
      @JsonKey(defaultValue: 0.0) double voltage,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: 0.0) double weight,
      @JsonKey(defaultValue: 0) int electricityOfDay,
      @JsonKey(defaultValue: 0.0) double electricCurrent});
}

/// @nodoc
class __$$__DeviceStatusPlugMiniCopyWithImpl<$Res>
    extends __$DeviceStatusPlugMiniCopyWithImpl<$Res, _$__DeviceStatusPlugMini>
    implements _$$__DeviceStatusPlugMiniCopyWith<$Res> {
  __$$__DeviceStatusPlugMiniCopyWithImpl(_$__DeviceStatusPlugMini _value,
      $Res Function(_$__DeviceStatusPlugMini) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? type = null,
    Object? voltage = null,
    Object? version = null,
    Object? weight = null,
    Object? electricityOfDay = null,
    Object? electricCurrent = null,
  }) {
    return _then(_$__DeviceStatusPlugMini(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PhysicalDeviceType,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      electricityOfDay: null == electricityOfDay
          ? _value.electricityOfDay
          : electricityOfDay // ignore: cast_nullable_to_non_nullable
              as int,
      electricCurrent: null == electricCurrent
          ? _value.electricCurrent
          : electricCurrent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__DeviceStatusPlugMini implements __DeviceStatusPlugMini {
  const _$__DeviceStatusPlugMini(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(name: 'deviceType')
      @PhysicalDeviceTypeConverter()
      required this.type,
      @JsonKey(defaultValue: 0.0) required this.voltage,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: 0.0) required this.weight,
      @JsonKey(defaultValue: 0) required this.electricityOfDay,
      @JsonKey(defaultValue: 0.0) required this.electricCurrent});

  factory _$__DeviceStatusPlugMini.fromJson(Map<String, dynamic> json) =>
      _$$__DeviceStatusPlugMiniFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @override
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  final PhysicalDeviceType type;

  /// the voltage of the device, measured in Volt
  @override
  @JsonKey(defaultValue: 0.0)
  final double voltage;

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// the power consumed in a day, measured in Watts
  @override
  @JsonKey(defaultValue: 0.0)
  final double weight;

  /// the duration that the device has been used during a day, measured in minutes
  @override
  @JsonKey(defaultValue: 0)
  final int electricityOfDay;

  /// the current of the device at the moment, measured in Amp
  @override
  @JsonKey(defaultValue: 0.0)
  final double electricCurrent;

  @override
  String toString() {
    return '_DeviceStatusPlugMini(id: $id, hubDeviceId: $hubDeviceId, type: $type, voltage: $voltage, version: $version, weight: $weight, electricityOfDay: $electricityOfDay, electricCurrent: $electricCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__DeviceStatusPlugMini &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.electricityOfDay, electricityOfDay) ||
                other.electricityOfDay == electricityOfDay) &&
            (identical(other.electricCurrent, electricCurrent) ||
                other.electricCurrent == electricCurrent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, type, voltage,
      version, weight, electricityOfDay, electricCurrent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__DeviceStatusPlugMiniCopyWith<_$__DeviceStatusPlugMini> get copyWith =>
      __$$__DeviceStatusPlugMiniCopyWithImpl<_$__DeviceStatusPlugMini>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__DeviceStatusPlugMiniToJson(
      this,
    );
  }
}

abstract class __DeviceStatusPlugMini implements _DeviceStatusPlugMini {
  const factory __DeviceStatusPlugMini(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(name: 'deviceType')
          @PhysicalDeviceTypeConverter()
          required final PhysicalDeviceType type,
          @JsonKey(defaultValue: 0.0) required final double voltage,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: 0.0) required final double weight,
          @JsonKey(defaultValue: 0) required final int electricityOfDay,
          @JsonKey(defaultValue: 0.0) required final double electricCurrent}) =
      _$__DeviceStatusPlugMini;

  factory __DeviceStatusPlugMini.fromJson(Map<String, dynamic> json) =
      _$__DeviceStatusPlugMini.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// [PhysicalDeviceType.plugMiniUS] or [PhysicalDeviceType.plugMiniJP]
  @JsonKey(name: 'deviceType')
  @PhysicalDeviceTypeConverter()
  PhysicalDeviceType get type;
  @override

  /// the voltage of the device, measured in Volt
  @JsonKey(defaultValue: 0.0)
  double get voltage;
  @override

  /// the current BLE and Wi-Fi firmware version, e.g. V3.1-6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// the power consumed in a day, measured in Watts
  @JsonKey(defaultValue: 0.0)
  double get weight;
  @override

  /// the duration that the device has been used during a day, measured in minutes
  @JsonKey(defaultValue: 0)
  int get electricityOfDay;
  @override

  /// the current of the device at the moment, measured in Amp
  @JsonKey(defaultValue: 0.0)
  double get electricCurrent;
  @override
  @JsonKey(ignore: true)
  _$$__DeviceStatusPlugMiniCopyWith<_$__DeviceStatusPlugMini> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceStatusMotionSensor _$DeviceStatusMotionSensorFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusMotionSensor.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusMotionSensor {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// determines if motion is detected
  @JsonKey(defaultValue: false)
  bool get motionDetected => throw _privateConstructorUsedError;

  /// the ambient brightness picked up by the sensor. bright or dim
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  SensorBrightness get brightness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusMotionSensorCopyWith<DeviceStatusMotionSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusMotionSensorCopyWith<$Res> {
  factory $DeviceStatusMotionSensorCopyWith(DeviceStatusMotionSensor value,
          $Res Function(DeviceStatusMotionSensor) then) =
      _$DeviceStatusMotionSensorCopyWithImpl<$Res, DeviceStatusMotionSensor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: false) bool motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      SensorBrightness brightness});
}

/// @nodoc
class _$DeviceStatusMotionSensorCopyWithImpl<$Res,
        $Val extends DeviceStatusMotionSensor>
    implements $DeviceStatusMotionSensorCopyWith<$Res> {
  _$DeviceStatusMotionSensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? motionDetected = null,
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      motionDetected: null == motionDetected
          ? _value.motionDetected
          : motionDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as SensorBrightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusMotionSensorCopyWith<$Res>
    implements $DeviceStatusMotionSensorCopyWith<$Res> {
  factory _$$_DeviceStatusMotionSensorCopyWith(
          _$_DeviceStatusMotionSensor value,
          $Res Function(_$_DeviceStatusMotionSensor) then) =
      __$$_DeviceStatusMotionSensorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: false) bool motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      SensorBrightness brightness});
}

/// @nodoc
class __$$_DeviceStatusMotionSensorCopyWithImpl<$Res>
    extends _$DeviceStatusMotionSensorCopyWithImpl<$Res,
        _$_DeviceStatusMotionSensor>
    implements _$$_DeviceStatusMotionSensorCopyWith<$Res> {
  __$$_DeviceStatusMotionSensorCopyWithImpl(_$_DeviceStatusMotionSensor _value,
      $Res Function(_$_DeviceStatusMotionSensor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? motionDetected = null,
    Object? brightness = null,
  }) {
    return _then(_$_DeviceStatusMotionSensor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      motionDetected: null == motionDetected
          ? _value.motionDetected
          : motionDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as SensorBrightness,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusMotionSensor extends _DeviceStatusMotionSensor {
  const _$_DeviceStatusMotionSensor(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: false) required this.motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      required this.brightness})
      : super._();

  factory _$_DeviceStatusMotionSensor.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusMotionSensorFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// determines if motion is detected
  @override
  @JsonKey(defaultValue: false)
  final bool motionDetected;

  /// the ambient brightness picked up by the sensor. bright or dim
  @override
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  final SensorBrightness brightness;

  @override
  String toString() {
    return 'DeviceStatusMotionSensor(id: $id, hubDeviceId: $hubDeviceId, battery: $battery, version: $version, motionDetected: $motionDetected, brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusMotionSensor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.motionDetected, motionDetected) ||
                other.motionDetected == motionDetected) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, battery,
      version, motionDetected, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusMotionSensorCopyWith<_$_DeviceStatusMotionSensor>
      get copyWith => __$$_DeviceStatusMotionSensorCopyWithImpl<
          _$_DeviceStatusMotionSensor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusMotionSensorToJson(
      this,
    );
  }
}

abstract class _DeviceStatusMotionSensor extends DeviceStatusMotionSensor {
  const factory _DeviceStatusMotionSensor(
          {@JsonKey(name: 'deviceId') required final String id,
          required final String hubDeviceId,
          @JsonKey(defaultValue: 0) required final int battery,
          @JsonKey(defaultValue: '') required final String version,
          @JsonKey(defaultValue: false) required final bool motionDetected,
          @BrightnessConverter()
          @JsonKey(defaultValue: SensorBrightness.dim)
          required final SensorBrightness brightness}) =
      _$_DeviceStatusMotionSensor;
  const _DeviceStatusMotionSensor._() : super._();

  factory _DeviceStatusMotionSensor.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusMotionSensor.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// determines if motion is detected
  @JsonKey(defaultValue: false)
  bool get motionDetected;
  @override

  /// the ambient brightness picked up by the sensor. bright or dim
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  SensorBrightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusMotionSensorCopyWith<_$_DeviceStatusMotionSensor>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceStatusContactSensor _$DeviceStatusContactSensorFromJson(
    Map<String, dynamic> json) {
  return _DeviceStatusContactSensor.fromJson(json);
}

/// @nodoc
mixin _$DeviceStatusContactSensor {
  @JsonKey(name: 'deviceId')
  String get id => throw _privateConstructorUsedError;
  String get hubDeviceId => throw _privateConstructorUsedError;

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery => throw _privateConstructorUsedError;

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version => throw _privateConstructorUsedError;

  /// determines if motion is detected
  @JsonKey(defaultValue: false)
  bool get motionDetected => throw _privateConstructorUsedError;

  /// the ambient brightness picked up by the sensor. bright or dim
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  SensorBrightness get brightness => throw _privateConstructorUsedError;

  /// the open state of the sensor. open, close, or timeOutNotClose
  @OpenStateConverter()
  @JsonKey(defaultValue: OpenState.close)
  OpenState get openState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStatusContactSensorCopyWith<DeviceStatusContactSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStatusContactSensorCopyWith<$Res> {
  factory $DeviceStatusContactSensorCopyWith(DeviceStatusContactSensor value,
          $Res Function(DeviceStatusContactSensor) then) =
      _$DeviceStatusContactSensorCopyWithImpl<$Res, DeviceStatusContactSensor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: false) bool motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      SensorBrightness brightness,
      @OpenStateConverter()
      @JsonKey(defaultValue: OpenState.close)
      OpenState openState});
}

/// @nodoc
class _$DeviceStatusContactSensorCopyWithImpl<$Res,
        $Val extends DeviceStatusContactSensor>
    implements $DeviceStatusContactSensorCopyWith<$Res> {
  _$DeviceStatusContactSensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? motionDetected = null,
    Object? brightness = null,
    Object? openState = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      motionDetected: null == motionDetected
          ? _value.motionDetected
          : motionDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as SensorBrightness,
      openState: null == openState
          ? _value.openState
          : openState // ignore: cast_nullable_to_non_nullable
              as OpenState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceStatusContactSensorCopyWith<$Res>
    implements $DeviceStatusContactSensorCopyWith<$Res> {
  factory _$$_DeviceStatusContactSensorCopyWith(
          _$_DeviceStatusContactSensor value,
          $Res Function(_$_DeviceStatusContactSensor) then) =
      __$$_DeviceStatusContactSensorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') String id,
      String hubDeviceId,
      @JsonKey(defaultValue: 0) int battery,
      @JsonKey(defaultValue: '') String version,
      @JsonKey(defaultValue: false) bool motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      SensorBrightness brightness,
      @OpenStateConverter()
      @JsonKey(defaultValue: OpenState.close)
      OpenState openState});
}

/// @nodoc
class __$$_DeviceStatusContactSensorCopyWithImpl<$Res>
    extends _$DeviceStatusContactSensorCopyWithImpl<$Res,
        _$_DeviceStatusContactSensor>
    implements _$$_DeviceStatusContactSensorCopyWith<$Res> {
  __$$_DeviceStatusContactSensorCopyWithImpl(
      _$_DeviceStatusContactSensor _value,
      $Res Function(_$_DeviceStatusContactSensor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hubDeviceId = null,
    Object? battery = null,
    Object? version = null,
    Object? motionDetected = null,
    Object? brightness = null,
    Object? openState = null,
  }) {
    return _then(_$_DeviceStatusContactSensor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hubDeviceId: null == hubDeviceId
          ? _value.hubDeviceId
          : hubDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      motionDetected: null == motionDetected
          ? _value.motionDetected
          : motionDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as SensorBrightness,
      openState: null == openState
          ? _value.openState
          : openState // ignore: cast_nullable_to_non_nullable
              as OpenState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceStatusContactSensor extends _DeviceStatusContactSensor {
  const _$_DeviceStatusContactSensor(
      {@JsonKey(name: 'deviceId') required this.id,
      required this.hubDeviceId,
      @JsonKey(defaultValue: 0) required this.battery,
      @JsonKey(defaultValue: '') required this.version,
      @JsonKey(defaultValue: false) required this.motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      required this.brightness,
      @OpenStateConverter()
      @JsonKey(defaultValue: OpenState.close)
      required this.openState})
      : super._();

  factory _$_DeviceStatusContactSensor.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStatusContactSensorFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final String id;
  @override
  final String hubDeviceId;

  /// the current battery level, 0-100
  @override
  @JsonKey(defaultValue: 0)
  final int battery;

  /// the current firmware version, e.g. V6.3
  @override
  @JsonKey(defaultValue: '')
  final String version;

  /// determines if motion is detected
  @override
  @JsonKey(defaultValue: false)
  final bool motionDetected;

  /// the ambient brightness picked up by the sensor. bright or dim
  @override
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  final SensorBrightness brightness;

  /// the open state of the sensor. open, close, or timeOutNotClose
  @override
  @OpenStateConverter()
  @JsonKey(defaultValue: OpenState.close)
  final OpenState openState;

  @override
  String toString() {
    return 'DeviceStatusContactSensor(id: $id, hubDeviceId: $hubDeviceId, battery: $battery, version: $version, motionDetected: $motionDetected, brightness: $brightness, openState: $openState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceStatusContactSensor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hubDeviceId, hubDeviceId) ||
                other.hubDeviceId == hubDeviceId) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.motionDetected, motionDetected) ||
                other.motionDetected == motionDetected) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.openState, openState) ||
                other.openState == openState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hubDeviceId, battery,
      version, motionDetected, brightness, openState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceStatusContactSensorCopyWith<_$_DeviceStatusContactSensor>
      get copyWith => __$$_DeviceStatusContactSensorCopyWithImpl<
          _$_DeviceStatusContactSensor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStatusContactSensorToJson(
      this,
    );
  }
}

abstract class _DeviceStatusContactSensor extends DeviceStatusContactSensor {
  const factory _DeviceStatusContactSensor(
      {@JsonKey(name: 'deviceId') required final String id,
      required final String hubDeviceId,
      @JsonKey(defaultValue: 0) required final int battery,
      @JsonKey(defaultValue: '') required final String version,
      @JsonKey(defaultValue: false) required final bool motionDetected,
      @BrightnessConverter()
      @JsonKey(defaultValue: SensorBrightness.dim)
      required final SensorBrightness brightness,
      @OpenStateConverter()
      @JsonKey(defaultValue: OpenState.close)
      required final OpenState openState}) = _$_DeviceStatusContactSensor;
  const _DeviceStatusContactSensor._() : super._();

  factory _DeviceStatusContactSensor.fromJson(Map<String, dynamic> json) =
      _$_DeviceStatusContactSensor.fromJson;

  @override
  @JsonKey(name: 'deviceId')
  String get id;
  @override
  String get hubDeviceId;
  @override

  /// the current battery level, 0-100
  @JsonKey(defaultValue: 0)
  int get battery;
  @override

  /// the current firmware version, e.g. V6.3
  @JsonKey(defaultValue: '')
  String get version;
  @override

  /// determines if motion is detected
  @JsonKey(defaultValue: false)
  bool get motionDetected;
  @override

  /// the ambient brightness picked up by the sensor. bright or dim
  @BrightnessConverter()
  @JsonKey(defaultValue: SensorBrightness.dim)
  SensorBrightness get brightness;
  @override

  /// the open state of the sensor. open, close, or timeOutNotClose
  @OpenStateConverter()
  @JsonKey(defaultValue: OpenState.close)
  OpenState get openState;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceStatusContactSensorCopyWith<_$_DeviceStatusContactSensor>
      get copyWith => throw _privateConstructorUsedError;
}
