/// Gets unix timestamp (milliseconds) for auth header
abstract class GetTimeUseCase {
  /// default implementation which returns real-current time
  const factory GetTimeUseCase.defaultImpl() = _DefaultGetTimeUseCase;

  int call();
}

class _DefaultGetTimeUseCase implements GetTimeUseCase {
  const _DefaultGetTimeUseCase();

  @override
  int call() {
    return DateTime.now().millisecondsSinceEpoch;
  }
}
