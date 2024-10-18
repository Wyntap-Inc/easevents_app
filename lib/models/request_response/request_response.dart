import 'package:easevents_app/exports.dart';

class RequestResponse {
  String timeRequested;
  String environment;
  String domain;
  bool success;
  int httpCode;
  String statusCode;
  Data? data;

  RequestResponse({
    required this.timeRequested,
    required this.environment,
    required this.domain,
    required this.success,
    required this.statusCode,
    required this.httpCode,
    this.data,
  });

  factory RequestResponse.fromJson(Map<String, dynamic> json) =>
      RequestResponse(
        timeRequested: json['timeRequested'],
        environment: json['environment'],
        domain: json['domain'],
        success: json['success'],
        statusCode: json['statusCode'],
        httpCode: json['httpCode'],
        data: json['data'] != null ? Data.fromJson(json['data']) : null,
      );
}
