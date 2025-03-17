import 'package:easevents_app/exports.dart';
import 'package:http/http.dart' as http;

class GoogleSigninAuthenticateService {
  final LocalStorageManager storageManager = LocalStorageManager();

  Future<bool> googleAuth(String code, String state) async {
    final response = await http.post(
      Uri.parse(EvSsoApiEndpoints.googleSigninAuthEndpoint),
      headers: {},
      body: {
        "code": code,
        "state": state,
        "loginApp": 'true',
      },
    );

    final Map<String, dynamic> jsonResponse = json.decode(response.body);

    SsoResponse responseData = SsoResponse.fromJson(jsonResponse);

    handleResponse(response);

    return responseData.success;
  }

  Future<void> handleResponse(http.Response response) async {
    try {
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        SsoResponse responseData = SsoResponse.fromJson(jsonResponse);

        if (responseData.httpCode == 202 && responseData.data != null) {
          storageManager.saveLoginToken(responseData.data!.accessToken!);

          storageManager.saveUserAccountInfo(
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
