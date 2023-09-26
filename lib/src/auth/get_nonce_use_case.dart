import 'package:uuid/uuid.dart';

/// Gets nonce for auth header
abstract class GetNonceUseCase {
  /// default implementation which returns a random UUID
  const factory GetNonceUseCase.defaultImpl() = _DefaultGetNonceUseCase;

  String call();
}

class _DefaultGetNonceUseCase implements GetNonceUseCase {
  const _DefaultGetNonceUseCase();

  static String? _value;

  @override
  String call() {
    final value = _value ?? const Uuid().v1();
    _value = value;
    return value;
  }
}
