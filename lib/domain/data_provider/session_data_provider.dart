import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _Key {
  static const sessionId = 'session_id';
}

class SessionDataProvider {
  final _storage = FlutterSecureStorage();

  Future<String?> getSessionId() => _storage.read(key: _Key.sessionId);

  void setSessionId(String value) {
    _storage.write(key: _Key.sessionId, value: value);
  }
}
