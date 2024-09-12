import 'dart:convert';
import 'package:easevents_app/models/consumer_account.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageManager {
  final FlutterSecureStorage _tokenStorage = const FlutterSecureStorage();

  final String _loginTokenKey = 'loginToken';
  final String _verificationKey = 'verificationKey';
  final String _userAccountInfoKey = 'userAccountKey';

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

  // for debugging print all data in localstorage
  // Future<void> readAllData() async {
  //   final Map<String, String> allValues = await _tokenStorage.readAll();

  //   print(allValues.entries);
  // }

  Future<void> clearUserData() async {
    try {
      await _tokenStorage.deleteAll();
    } catch (error) {
      throw Exception('Failed to clear Storage');
    }
  }

  Future<void> saveUserAccountInfo(ConsumerAccount user) async {
    final accountJson = json.encode(user.toJson());
    await _tokenStorage.write(key: _userAccountInfoKey, value: accountJson);
  }

  Future<ConsumerAccount?> getUserAccountInfo() async {
    final accountInfoJson = await _tokenStorage.read(key: _userAccountInfoKey);

    if (accountInfoJson != null) {
      final Map<String, dynamic> accountInfoMap = json.decode(accountInfoJson);
      return ConsumerAccount.fromJson(accountInfoMap);
    } else {
      return null;
    }
  }
}
