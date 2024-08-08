import 'dart:convert';

import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/models/request_response/request_response.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<void> userLogin(String email, String password) async {
    final response = await http.post(
      Uri.parse(ApiEndpoints.signInEndpoint),
      headers: {},
      body: {
        "emailAddress": email,
        "password": password,
        "test": "1234567890",
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      RequestResponse loginResponse = RequestResponse.fromJson(responseData);
      TokenStorage().saveLoginToken(loginResponse.data!.token);
      if (response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        RequestResponse responseData = RequestResponse.fromJson(jsonResponse);
        if (responseData is Map<String, dynamic>) {
          if (responseData.httpCode == 200) {
            TokenStorage().saveLoginToken(responseData.data!.token);
            print(responseData.data!.token);
          } else {
            throw Exception(responseData.httpCode);
          }
        } else {
          throw const FormatException('Invalid Type');
        }
      } else {
        throw Exception('Response Body is Empty');
      }
    } else {
      throw Exception('Failed to verify');
    }
  }
}
