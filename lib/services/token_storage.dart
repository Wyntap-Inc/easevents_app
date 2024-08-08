import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final FlutterSecureStorage _tokenStorage = const FlutterSecureStorage();

  final String _loginTokenKey = 'loginToken';
  final String _verificationKey = 'verificationKey';

  Future<void> saveLoginToken(String token) async {
    await _tokenStorage.write(key: _loginTokenKey, value: token);
  }

  Future<String?> getLoginToken() async {
    return await _tokenStorage.read(key: _loginTokenKey);
  }

  Future<void> deleteLoginToken() async {
    await _tokenStorage.delete(key: _loginTokenKey);
  }

  Future<bool> isUserLoggedIn() async {
    String? token = await getLoginToken();

    return token != null && token.isNotEmpty;
  }

  // Verification Token Methods

  Future<void> saveVerificationToken(String token) async {
    await _tokenStorage.write(key: _verificationKey, value: token);
  }

  Future<String?> getVerificationToken() async {
    return await _tokenStorage.read(key: _verificationKey);
  }

  Future<void> deleteVerificationToken() async {
    await _tokenStorage.delete(key: _verificationKey);
  }
}
