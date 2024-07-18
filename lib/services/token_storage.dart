import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final tokenStorage = const FlutterSecureStorage();

  final storageKey = 'verificationToken';

  Future<void> saveToken(String token) async {
    await tokenStorage.write(key: storageKey, value: token);
  }

  Future<String?> getToken() async {
    return await tokenStorage.read(key: storageKey);
  }

  Future<void> deleteToken() async {
    await tokenStorage.delete(key: storageKey);
  }

  Future<bool> isUserLoggedIn() async {
    String? token = await getToken();

    if (token == null || token.isEmpty) {
      return false;
    }
    return true;
  }
}
