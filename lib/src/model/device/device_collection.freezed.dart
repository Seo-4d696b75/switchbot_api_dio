// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceCollection _$DeviceCollectionFromJson(Map<String, dynamic> json) {
  return _DeviceCollection.fromJson(json);
}

/// @nodoc
mixin _$DeviceCollection {
  List<PhysicalDevice> get deviceList => throw _privateConstructorUsedError;
  List<VirtualDevice> get infraredRemoteList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCollectionCopyWith<DeviceCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCollectionCopyWith<$Res> {
  factory $DeviceCollectionCopyWith(
          DeviceCollection value, $Res Function(DeviceCollection) then) =
      _$DeviceCollectionCopyWithImpl<$Res, DeviceCollection>;
  @useResult
  $Res call(
      {List<PhysicalDevice> deviceList,
      List<VirtualDevice> infraredRemoteList});
}

/// @nodoc
class _$DeviceCollectionCopyWithImpl<$Res, $Val extends DeviceCollection>
    implements $DeviceCollectionCopyWith<$Res> {
  _$DeviceCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceList = null,
    Object? infraredRemoteList = null,
  }) {
    return _then(_value.copyWith(
      deviceList: null == deviceList
          ? _value.deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<PhysicalDevice>,
      infraredRemoteList: null == infraredRemoteList
          ? _value.infraredRemoteList
          : infraredRemoteList // ignore: cast_nullable_to_non_nullable
              as List<VirtualDevice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceCollectionCopyWith<$Res>
    implements $DeviceCollectionCopyWith<$Res> {
  factory _$$_DeviceCollectionCopyWith(
          _$_DeviceCollection value, $Res Function(_$_DeviceCollection) then) =
      __$$_DeviceCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PhysicalDevice> deviceList,
      List<VirtualDevice> infraredRemoteList});
}

/// @nodoc
class __$$_DeviceCollectionCopyWithImpl<$Res>
    extends _$DeviceCollectionCopyWithImpl<$Res, _$_DeviceCollection>
    implements _$$_DeviceCollectionCopyWith<$Res> {
  __$$_DeviceCollectionCopyWithImpl(
      _$_DeviceCollection _value, $Res Function(_$_DeviceCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceList = null,
    Object? infraredRemoteList = null,
  }) {
    return _then(_$_DeviceCollection(
      deviceList: null == deviceList
          ? _value._deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<PhysicalDevice>,
      infraredRemoteList: null == infraredRemoteList
          ? _value._infraredRemoteList
          : infraredRemoteList // ignore: cast_nullable_to_non_nullable
              as List<VirtualDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceCollection implements _DeviceCollection {
  const _$_DeviceCollection(
      {required final List<PhysicalDevice> deviceList,
      required final List<VirtualDevice> infraredRemoteList})
      : _deviceList = deviceList,
        _infraredRemoteList = infraredRemoteList;

  factory _$_DeviceCollection.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceCollectionFromJson(json);

  final List<PhysicalDevice> _deviceList;
  @override
  List<PhysicalDevice> get deviceList {
    if (_deviceList is EqualUnmodifiableListView) return _deviceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceList);
  }

  final List<VirtualDevice> _infraredRemoteList;
  @override
  List<VirtualDevice> get infraredRemoteList {
    if (_infraredRemoteList is EqualUnmodifiableListView)
      return _infraredRemoteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infraredRemoteList);
  }

  @override
  String toString() {
    return 'DeviceCollection(deviceList: $deviceList, infraredRemoteList: $infraredRemoteList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceCollection &&
            const DeepCollectionEquality()
                .equals(other._deviceList, _deviceList) &&
            const DeepCollectionEquality()
                .equals(other._infraredRemoteList, _infraredRemoteList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deviceList),
      const DeepCollectionEquality().hash(_infraredRemoteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceCollectionCopyWith<_$_DeviceCollection> get copyWith =>
      __$$_DeviceCollectionCopyWithImpl<_$_DeviceCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceCollectionToJson(
      this,
    );
  }
}

abstract class _DeviceCollection implements DeviceCollection {
  const factory _DeviceCollection(
          {required final List<PhysicalDevice> deviceList,
          required final List<VirtualDevice> infraredRemoteList}) =
      _$_DeviceCollection;

  factory _DeviceCollection.fromJson(Map<String, dynamic> json) =
      _$_DeviceCollection.fromJson;

  @override
  List<PhysicalDevice> get deviceList;
  @override
  List<VirtualDevice> get infraredRemoteList;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCollectionCopyWith<_$_DeviceCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
