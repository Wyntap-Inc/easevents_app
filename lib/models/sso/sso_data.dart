import 'package:easevents_app/exports.dart';

part 'sso_data.g.dart';

@JsonSerializable()
class SsoData {
  final String? accessToken;
  final ConsumerAccount? account;
  final String? redirectURI;
  SsoData({
    required this.accessToken,
    required this.account,
    required this.redirectURI,
  });

  factory SsoData.fromJson(Map<String, dynamic> json) =>
      _$SsoDataFromJson(json);

  Map<String, dynamic> toJson() => _$SsoDataToJson(this);
}
