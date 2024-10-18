import 'package:easevents_app/exports.dart';

class Data {
  final String? accessToken;
  final ConsumerAccount? account;
  final String? redirectUri;

  Data({
    required this.accessToken,
    required this.account,
    required this.redirectUri,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json['accessToken'],
        account: json['account'] != null
            ? ConsumerAccount.fromJson(json['account'])
            : null,
        redirectUri: json['redirectURI'],
      );
}
