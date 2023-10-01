/// State of power ON/OFF
enum PowerState {
  on,
  off,
}

/// Mode of 'Bot' device
enum BotMode {
  pressMode,
  switchMode,
  customizeMode,
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

/// Brightness sensed by "** Sensor" device
enum SensorBrightness {
  bright,
  dim,
}

/// Open state sensed by 'Contact Sensor' device
enum OpenState {
  open,
  close,
  timeOutNotClose,
}

/// Status of online/offline
enum OnlineStatus { online, offline }

/// Status of 'Robot Vacuum Cleaner S1 **' device
enum VacuumCleanerStatus {
  standBy('StandBy'),
  clearing('Clearing'),
  paused('Paused'),
  gotoChargeBase('GotoChargeBase'),
  charging('Charging'),
  dormant('Dormant'),
  inTrouble('InTrouble'),
  inRemoteControl('InRemoteControl'),
  inDustCollecting('InDustCollecting'),
  ;

  const VacuumCleanerStatus(this.value);

  final String value;
}

/// State of 'Lock' device
enum LockState {
  locked,
  unlocked,
  jammed,
}
