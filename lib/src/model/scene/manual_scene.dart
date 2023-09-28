import 'package:freezed_annotation/freezed_annotation.dart';

part 'manual_scene.freezed.dart';

part 'manual_scene.g.dart';

// ignore_for_file: invalid_annotation_target

/// A smart scene created by a user
@freezed
class ManualScene with _$ManualScene {
  const factory ManualScene({
    /// a scene's ID
    @JsonKey(name: 'sceneId') required String id,

    /// a scene's name
    @JsonKey(name: 'sceneName') required String name,
  }) = _ManualScene;

  factory ManualScene.fromJson(Map<String, dynamic> json) =>
      _$ManualSceneFromJson(json);

  static List<ManualScene> parseListJson(List<dynamic> json) =>
      json.map((e) => ManualScene.fromJson(e as Map<String, dynamic>)).toList();
}
