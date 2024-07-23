import 'dart:convert';

import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/models/request_response/request_response.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  Future<void> userRegistration(String firstName, String lastName,
      String emailAddress, String password) async {
    final response = await http.post(
      Uri.parse(ApiEndpoints.signUpEndpoint),
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode({
        "firstName": firstName,
        "lastName": lastName,
        "emailAddress": emailAddress,
        "password": password,
      }),
    );

    if (response.statusCode == 201) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      RequestResponse registerResponse = RequestResponse.fromJson(responseData);
      TokenStorage().saveToken(registerResponse.data.token);
    }
  }
}
