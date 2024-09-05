import 'package:easevents_app/models/consumer_account.dart';

class Data {
  final String accessToken;
  final ConsumerAccount? account;

  Data({
    required this.accessToken,
    required this.account,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json['accessToken'],
        account: json['account'] != null
            ? ConsumerAccount.fromJson(json['account'])
            : null,
      );
}
