import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switchbot_api_dio/src/model/common/enum.dart';
import 'package:switchbot_api_dio/src/model/common/light_color.dart';
import 'package:switchbot_api_dio/src/model/device/device_collection.dart';

extension _StringNormalizeExt on String {
  String get normalized => replaceAll(' ', '').toLowerCase();
}

class _EnumConverter<T extends Enum> implements JsonConverter<T, String> {
  const _EnumConverter({
    required this.values,
    this.defaultValue,
    this.isUpperCaseToJson = false,
  });

  final List<T> values;
  final T? defaultValue;
  final bool isUpperCaseToJson;

  @override
  T fromJson(String json) {
    final value = json.normalized;
    return values.firstWhere(
      (t) => convertEnum(t).normalized == value,
      orElse: () {
        if (defaultValue != null) {
          return defaultValue!;
        }
        throw ArgumentError(
          'Could not recognize "$json", '
          'even though ignoring space and upper/lower case.\n'
          'supported values: '
          '${values.map((t) => '"${convertEnum(t)}"').join(', ')}',
        );
      },
    );
  }

  String convertEnum(T item) {
    return item.name;
  }

  @override
  String toJson(T object) {
    final str = convertEnum(object);
    return isUpperCaseToJson ? str.toUpperCase() : str;
  }
}

class PhysicalDeviceTypeConverter extends _EnumConverter<PhysicalDeviceType> {
  const PhysicalDeviceTypeConverter()
      : super(
          values: PhysicalDeviceType.values,
          isUpperCaseToJson: false,
        );

  @override
  String convertEnum(PhysicalDeviceType item) {
    return item.value;
  }
}

class PasscodeTypeConverter extends _EnumConverter<PasscodeType> {
  const PasscodeTypeConverter()
      : super(
          values: PasscodeType.values,
          isUpperCaseToJson: false,
        );
}

class PasscodeStatusConverter extends _EnumConverter<PasscodeStatus> {
  const PasscodeStatusConverter()
      : super(
          values: PasscodeStatus.values,
          isUpperCaseToJson: false,
        );
}

class PowerStateConverter extends _EnumConverter<PowerState> {
  const PowerStateConverter()
      : super(
          values: PowerState.values,
          isUpperCaseToJson: true,
        );
}

class LockStateConverter extends _EnumConverter<LockState> {
  const LockStateConverter()
      : super(
          values: LockState.values,
          isUpperCaseToJson: true,
        );
}

class BrightnessConverter extends _EnumConverter<SensorBrightness> {
  const BrightnessConverter()
      : super(
          values: SensorBrightness.values,
          isUpperCaseToJson: false,
        );
}

class OpenStateConverter extends _EnumConverter<OpenState> {
  const OpenStateConverter()
      : super(
          values: OpenState.values,
          isUpperCaseToJson: false,
        );
}

class VirtualDeviceTypeConverter extends _EnumConverter<VirtualDeviceType> {
  const VirtualDeviceTypeConverter()
      : super(
          values: VirtualDeviceType.values,
          defaultValue: VirtualDeviceType.unknown,
          isUpperCaseToJson: false,
        );

  @override
  String convertEnum(VirtualDeviceType item) {
    return item.value;
  }
}

class OnlineStatusConverter extends _EnumConverter<OnlineStatus> {
  const OnlineStatusConverter()
      : super(
          values: OnlineStatus.values,
          isUpperCaseToJson: false,
        );
}

class VacuumCleanerStatusConverter extends _EnumConverter<VacuumCleanerStatus> {
  const VacuumCleanerStatusConverter()
      : super(
          values: VacuumCleanerStatus.values,
          isUpperCaseToJson: false,
        );

  @override
  String convertEnum(VacuumCleanerStatus item) {
    return item.value;
  }
}

class LightColorConverter extends JsonConverter<LightColor, String> {
  const LightColorConverter();

  @override
  LightColor fromJson(String json) => LightColor.fromJson(json);

  @override
  String toJson(LightColor object) => object.toJson();
}
