import 'dart:convert';

import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/models/request_response/request_response.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:http/http.dart' as http;

class VerifyRegistration {
  Future<void> verifyUserRegistration(String verificationCode) async {
    final String? verificationToken =
        await TokenStorage().getVerificationToken();

    final response = await http.post(
      Uri.parse(ApiEndpoints.verifySignUpEndpoint),
      headers: {
        // "Authorization": "Bearer $verificationToken",
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: json.encode({
        "code": verificationCode,
        "token": verificationToken,
      }),
    );

    try {
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final Map<String, dynamic> jsonResponse = json.decode(response.body);
          RequestResponse responseData = RequestResponse.fromJson(jsonResponse);

          if (responseData.data != null) {
            if (responseData.httpCode == 200) {
              TokenStorage().saveLoginToken(responseData.data!.token);
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
