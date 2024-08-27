import 'dart:convert';

import 'package:easevents_app/models/request_response/request_response.dart';
import 'package:http/http.dart' as http;

class ResponseHandler {
  void responseHandler({required http.Response response}) {
    try {
      if (response.statusCode != 201 || response.statusCode != 200) {
        throw Exception('Internal Server Error');
      }

      if (response.body.isEmpty) {
        throw Exception('No Data');
      }

      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      RequestResponse requestResponse = RequestResponse.fromJson(jsonResponse);

      if (requestResponse.httpCode != 200) {
        throw Exception('Server Error');
      }

      if (requestResponse.statusCode == 'pending-verification') {
        // call save verification token
      }

      if (requestResponse.data == null) {
        throw Exception('Invalid Data Type');
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
