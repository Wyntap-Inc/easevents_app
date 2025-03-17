import 'package:http/http.dart' as http;
import 'package:easevents_app/exports.dart';

class GoogleSigninRedirectService {
  String redirectUri = '';

  Future<String> googleSignInService() async {
    final response = await http.post(
      Uri.parse(EvSsoApiEndpoints.googleSigninEndpoint),
      headers: {},
      body: {
        'provider': 'google',
        'client': 'app',
        'redirectUrl': 'https://easevents.app/social-login-redirect',
      },
    );

    handleResponse(response);

    return redirectUri;
  }

  Future<void> handleResponse(http.Response response) async {
    try {
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        SsoResponse responseData = SsoResponse.fromJson(jsonResponse);

        if (responseData.httpCode == 200 && responseData.data != null) {
          redirectUri = responseData.data!.redirectURI!;
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
