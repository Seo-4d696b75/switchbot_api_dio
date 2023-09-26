// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manual_scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ManualScene _$ManualSceneFromJson(Map<String, dynamic> json) {
  return _ManualScene.fromJson(json);
}

/// @nodoc
mixin _$ManualScene {
  /// a scene's ID
  @JsonKey(name: 'sceneId')
  String get id => throw _privateConstructorUsedError;

  /// a scene's name
  @JsonKey(name: 'sceneName')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManualSceneCopyWith<ManualScene> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManualSceneCopyWith<$Res> {
  factory $ManualSceneCopyWith(
          ManualScene value, $Res Function(ManualScene) then) =
      _$ManualSceneCopyWithImpl<$Res, ManualScene>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sceneId') String id,
      @JsonKey(name: 'sceneName') String name});
}

/// @nodoc
class _$ManualSceneCopyWithImpl<$Res, $Val extends ManualScene>
    implements $ManualSceneCopyWith<$Res> {
  _$ManualSceneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManualSceneCopyWith<$Res>
    implements $ManualSceneCopyWith<$Res> {
  factory _$$_ManualSceneCopyWith(
          _$_ManualScene value, $Res Function(_$_ManualScene) then) =
      __$$_ManualSceneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sceneId') String id,
      @JsonKey(name: 'sceneName') String name});
}

/// @nodoc
class __$$_ManualSceneCopyWithImpl<$Res>
    extends _$ManualSceneCopyWithImpl<$Res, _$_ManualScene>
    implements _$$_ManualSceneCopyWith<$Res> {
  __$$_ManualSceneCopyWithImpl(
      _$_ManualScene _value, $Res Function(_$_ManualScene) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ManualScene(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ManualScene implements _ManualScene {
  const _$_ManualScene(
      {@JsonKey(name: 'sceneId') required this.id,
      @JsonKey(name: 'sceneName') required this.name});

  factory _$_ManualScene.fromJson(Map<String, dynamic> json) =>
      _$$_ManualSceneFromJson(json);

  /// a scene's ID
  @override
  @JsonKey(name: 'sceneId')
  final String id;

  /// a scene's name
  @override
  @JsonKey(name: 'sceneName')
  final String name;

  @override
  String toString() {
    return 'ManualScene(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManualScene &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManualSceneCopyWith<_$_ManualScene> get copyWith =>
      __$$_ManualSceneCopyWithImpl<_$_ManualScene>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManualSceneToJson(
      this,
    );
  }
}

abstract class _ManualScene implements ManualScene {
  const factory _ManualScene(
      {@JsonKey(name: 'sceneId') required final String id,
      @JsonKey(name: 'sceneName') required final String name}) = _$_ManualScene;

  factory _ManualScene.fromJson(Map<String, dynamic> json) =
      _$_ManualScene.fromJson;

  @override

  /// a scene's ID
  @JsonKey(name: 'sceneId')
  String get id;
  @override

  /// a scene's name
  @JsonKey(name: 'sceneName')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ManualSceneCopyWith<_$_ManualScene> get copyWith =>
      throw _privateConstructorUsedError;
}
