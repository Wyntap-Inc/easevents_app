import 'dart:convert';

import 'package:easevents_app/models/vendor_model.dart';
import 'package:http/http.dart' as http;

class VendorService {

  Future<List<Vendor>> fetchVendors() async{
    final baseURL = "https://consumer-api.easevents.app/api/v1/browse/filter";
    final response = await http.get(Uri.parse(baseURL));

    return handleResponse(response);
    
  }

  Future<List<Vendor>> handleResponse(http.Response response) async{
    // existing code...
    List<Vendor> vendorList = [];
    try{
        if(response.statusCode == 200 && response.body.isNotEmpty){
        final List<dynamic> vendors = jsonDecode(response.body)['data'];
        vendorList = vendors.map((data)=>Vendor.fromJson(data)).toList(); 
      } else{
        handleErrorResponse(response);
      }
    } catch(error){
      throw Exception(error);
    }
    return vendorList;
  }

  void handleErrorResponse(http.Response response) {
    if (response.body.isEmpty){
      throw Exception('No Data');
    } else if(response.statusCode != 200){
      throw Exception("Internal Sever Error ${response.statusCode}");
    } else{
      throw Exception(
        "Invalid Data Type: ${response.statusCode} + ${response.reasonPhrase}"
      );
    }
  }
}