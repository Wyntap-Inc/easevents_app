import 'package:easevents_app/constants/api_endpoints.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:http/http.dart' as http;

class VerifyRegistration {
  Future<void> verifyUserRegistration(String verificationCode) async {
    final token = await TokenStorage().getToken();

    final response = await http.post(
      Uri.parse(ApiEndpoints.verifySignUpEndpoint),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      },
      body: {
        "code": verificationCode,
      },
    );

    if (response.statusCode == 200) {
      print('Success');
    }
  }
}
