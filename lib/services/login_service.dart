import 'dart:convert';

import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/models/consumer_account.dart';
import 'package:easevents_app/models/request_response/request_response.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final TokenStorage store = TokenStorage();

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
    handleResponse(response);
  }

  Future<void> handleResponse(http.Response response) async {
    try {
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        RequestResponse responseData = RequestResponse.fromJson(jsonResponse);

        if (responseData.httpCode == 202 && responseData.data != null) {
          store.saveLoginToken(responseData.data!.accessToken);

          store.saveUserAccountInfo(
              ConsumerAccount.fromJson(jsonResponse['data']['account']));
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
      throw Exception(
          'Invalid Data Type: ${response.statusCode} + ${response.reasonPhrase}');
    }
  }
}
