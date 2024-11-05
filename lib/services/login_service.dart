import 'package:easevents_app/exports.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final LocalStorageManager storageManager = LocalStorageManager();

  Future<RequestResponse> userLogin(String email, String password) async {
    final response = await http.post(
      Uri.parse(ApiEndpoints.signInEndpoint),
      headers: {},
      body: {
        "emailAddress": email,
        "password": password,
      },
    );

    final decodedResponse = json.decode(response.body);
    final RequestResponse data = RequestResponse.fromJson(decodedResponse);

    handleResponse(response);

    return data;
  }

  Future<void> handleResponse(http.Response response) async {
    try {
      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        RequestResponse responseData = RequestResponse.fromJson(jsonResponse);

        print(jsonResponse);

        // print(responseData.httpCode);
        // print(responseData.statusCode);
        // print(responseData.message);

        if (responseData.httpCode == 409 &&
            responseData.statusCode == 'notfound') {
          //handle error
        }

        //handle 401 && request-denied

        if (responseData.httpCode == 202 && responseData.data != null) {
          storageManager.saveLoginToken(responseData.data!.accessToken!);

          storageManager.saveUserAccountInfo(
              ConsumerAccount.fromJson(jsonResponse['data']['account']));
        } else if (responseData.httpCode == 200 &&
            responseData.statusCode == 'internal-server-error') {
          print('User is registered but/...');
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
