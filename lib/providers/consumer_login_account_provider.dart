import 'package:easevents_app/exports.dart';

class ConsumerLoginAccountProvider with ChangeNotifier {
  ConsumerAccount? _accountInfo;

  final LocalStorageManager _storageManager;

  ConsumerLoginAccountProvider(this._storageManager);

  ConsumerAccount? get accountGetter => _accountInfo;

  Future<void> loadConsumerAccountData() async {
    _accountInfo = await _storageManager.getUserAccountInfo();
    notifyListeners();
  }

  Future<void> setConsumerAccount(ConsumerAccount account) async {
    _accountInfo = account;
    notifyListeners();
  }
}
