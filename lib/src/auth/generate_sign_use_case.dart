import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Generates a sign for SwitchBot API authorization
abstract class GenerateSignUseCase {
  /// defaults implementation using [package:crypto](https://pub.dev/packages/crypto)
  const factory GenerateSignUseCase.defaultImpl() = _DefaultGenerateSignUseCase;

  /// Calculates a sign value.
  ///
  /// [Signing algorithm is described in SwitchBot API docs](https://github.com/OpenWonderLabs/SwitchBotAPI#how-to-sign)
  String call({
    required int timestamp,
    required String nonce,
    required String userToken,
    required String userSecret,
  });
}

class _DefaultGenerateSignUseCase implements GenerateSignUseCase {
  const _DefaultGenerateSignUseCase();

  @override
  String call({
    required int timestamp,
    required String nonce,
    required String userToken,
    required String userSecret,
  }) {
    final data = '$userToken$timestamp$nonce';
    final bytes = utf8.encode(data);
    final key = utf8.encode(userSecret);
    final algorithm = Hmac(sha256, key);
    final digest = algorithm.convert(bytes);
    return base64Encode(digest.bytes);
  }
}
