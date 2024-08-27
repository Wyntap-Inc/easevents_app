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

    handleResponse(response);
  }

  void handleResponse(http.Response response) {
    try {
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        RequestResponse responseData = RequestResponse.fromJson(jsonResponse);

        if (responseData.httpCode == 200 && responseData.data != null) {
          TokenStorage().saveLoginToken(responseData.data!.token);
        } else {
          throw Exception(
            '${responseData.httpCode} && ${responseData.statusCode}',
          );
        }
      } else {
        handleErrorResponse(response);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  void handleErrorResponse(http.Response response) {
    if (response.body.isEmpty) {
      throw Exception('No Data');
    } else if (response.statusCode != 200) {
      throw Exception('Internal Server Error ${response.statusCode}');
    } else {
      throw Exception('Invalid Data');
    }
  }
}
