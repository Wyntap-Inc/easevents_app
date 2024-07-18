import 'package:easevents_app/models/login_response/login_response_data.dart';

class LoginResponse {
  String timeRequested;
  String environment;
  String domain;
  bool success;
  int httpCode;
  String statusCode;
  Data data;

  LoginResponse({
    required this.timeRequested,
    required this.environment,
    required this.domain,
    required this.success,
    required this.statusCode,
    required this.httpCode,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        timeRequested: json['timeRequested'],
        environment: json['environment'],
        domain: json['domain'],
        success: json['success'],
        statusCode: json['statusCode'],
        httpCode: json['httpCode'],
        data: Data.fromJson(json['data']),
      );
}
