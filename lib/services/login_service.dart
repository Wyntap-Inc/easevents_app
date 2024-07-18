import 'dart:convert';

import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/models/login_response/login_response.dart';
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
      LoginResponse loginService = LoginResponse.fromJson(responseData);
      TokenStorage().saveToken(loginService.data.token);
    }
  }
}
