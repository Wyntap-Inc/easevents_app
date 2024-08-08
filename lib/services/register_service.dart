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

    try {
      if (response.statusCode == 201) {
        if (response.body.isNotEmpty) {
          final Map<String, dynamic> jsonResponse = json.decode(response.body);
          RequestResponse responseData = RequestResponse.fromJson(jsonResponse);

          if (responseData.data != null) {
            if (responseData.httpCode == 200) {
              TokenStorage().saveVerificationToken(responseData.data!.token);
            } else {
              throw Exception(
                  '${responseData.httpCode} + ${responseData.statusCode}');
            }
          } else {
            throw Exception('Invalid Data');
          }
        } else {
          throw Exception('No Data');
        }
      } else {
        throw Exception('Internal Server Error');
      }
    } catch (e) {
      Exception(e);
    }
  }
}
