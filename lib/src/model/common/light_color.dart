/// Light color value in ARGB format.
///
/// **Note** alpha is fixed to `0xFF`
///
/// This class has same interface as `Color` in `dart:ui` package
class LightColor {
  /// Construct a color from the lower 24 bits of an int.
  const LightColor(int rgb) : value = 0xFF000000 | (rgb & 0xFFFFFF);

  const LightColor.fromRGB(int r, int g, int b)
      : value = (0xFF << 24) | (r & 0xFF) << 16 | (g & 0xFF) << 8 | b & 0xFF;

  factory LightColor.fromJson(String json) {
    final channel = json.split(':');
    if (channel.length != 3) {
      throw ArgumentError.value(
        json,
        'json',
        'invalid RGB color value: `\$red:\$green:\$blue`',
      );
    }
    return LightColor.fromRGB(
      int.parse(channel[0]),
      int.parse(channel[1]),
      int.parse(channel[2]),
    );
  }

  /// A 32 bit value representing this color.
  final int value;

  int get alpha => 0xFF;

  int get red => (value >> 16) & 0xFF;

  int get green => (value >> 8) & 0xFF;

  int get blue => value & 0xFF;

  String toJson() => '$red:$green:$blue';

  @override
  String toString() =>
      'LightColor(0x${value.toRadixString(16).padLeft(8, '0')})';

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LightColor && other.value == value);
  }

  @override
  int get hashCode => value.hashCode;
}
