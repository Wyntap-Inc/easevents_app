import 'package:easevents_app/exports.dart';

part 'sso_response.g.dart';

@JsonSerializable()
class SsoResponse {
  final String timeRequested;
  final String environment;
  final String domain;
  final bool success;
  final int httpCode;
  final String statusCode;
  final String? message;
  final SsoData data;

  SsoResponse({
    required this.timeRequested,
    required this.environment,
    required this.domain,
    required this.success,
    required this.statusCode,
    required this.message,
    required this.httpCode,
    required this.data,
  });

  factory SsoResponse.fromJson(Map<String, dynamic> json) =>
      _$SsoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SsoResponseToJson(this);
}
