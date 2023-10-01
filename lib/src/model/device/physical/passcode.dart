// ignore_for_file: invalid_annotation_target

part of 'physical_device.dart';

/// Passcode registered in 'Keypad' and 'Keypad Touch' device
@freezed
class LockPasscode with _$LockPasscode {
  const factory LockPasscode({
    /// passcode ID
    required int id,

    /// name of the passcode
    required String name,

    /// type of the passcode
    @PasscodeTypeConverter() required PasscodeType type,

    /// encrypted passcode
    ///
    /// the passcode string encrypted with the developer secret key
    /// using the aes-128-cbc algorithm
    required String password,

    /// initial vector
    ///
    /// an arbitrary number used for the encryption
    required String iv,

    /// validity of the passcode
    @PasscodeStatusConverter() required PasscodeStatus status,

    /// the time when the passcode is generated
    required int createTime,
  }) = _LockPasscode;

  factory LockPasscode.fromJson(Map<String, dynamic> json) =>
      _$LockPasscodeFromJson(json);
}

/// Type of passcode registered in 'Keypad' and 'Keypad Touch' device
enum PasscodeType {
  /// a permanent passcode
  permanent,

  /// a temporary passcode
  timeLimit,

  /// a one-time passcode
  disposable,

  /// an emergency passcode
  urgent,
}

/// Expire state of passcode registered in 'Keypad' and 'Keypad Touch' device
enum PasscodeStatus {
  normal,
  expired,
}
