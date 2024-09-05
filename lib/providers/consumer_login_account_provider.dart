import 'package:easevents_app/models/consumer_account.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:flutter/material.dart';

class ConsumerAccountProvider with ChangeNotifier {
  ConsumerAccount? _accountInfo;

  final TokenStorage _tokenStorage;

  ConsumerAccountProvider(this._tokenStorage);

  ConsumerAccount? get accountGetter => _accountInfo;

  Future<void> loadConsumerAccountData() async {
    _accountInfo = await _tokenStorage.getUserAccountInfo();
    notifyListeners();
  }

  Future<void> setConsumerAccount(ConsumerAccount account) async {
    _accountInfo = account;
    notifyListeners();
  }
}
