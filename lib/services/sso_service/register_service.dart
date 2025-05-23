import 'package:easevents_app/exports.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  final storageManager = LocalStorageManager();

  Future<SsoResponse> userRegistration({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? password,
  }) async {
    final response = await http.post(
      Uri.parse(EvSsoApiEndpoints.signUpEndpoint),
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

    final decodedResponse = json.decode(response.body);
    final SsoResponse data = SsoResponse.fromJson(decodedResponse);

    handleResponse(response);

    return data;
  }

  void handleResponse(http.Response response) {
    try {
      if (response.statusCode == 201 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        SsoResponse responseData = SsoResponse.fromJson(jsonResponse);

        if (responseData.httpCode == 200 && responseData.data != null) {
          storageManager.saveVerificationToken(responseData.data!.accessToken!);
        } else if (responseData.httpCode == 409 &&
            responseData.statusCode == 'already-exists') {
          //handle error
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
