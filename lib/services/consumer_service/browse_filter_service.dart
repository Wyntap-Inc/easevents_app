import 'package:easevents_app/exports.dart';

class BrowseFilterService {
  List<Data> vendors = [];

  final Dio dio = Dio(BaseOptions(
    baseUrl: EvConsumerApiEndpoints.baseUrl,
    headers: {'Content-Type': 'application/json'},
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<List<Data>> fetchVendorsListData() async {
    dio.interceptors.add(
      LogInterceptor(responseBody: true, responseHeader: true),
    );

    try {
      final response = await dio.get(EvConsumerApiEndpoints.filterListEndpoint);

      final responseData = ConsumerResponse.fromJson(response.data);

      vendors = responseData.data;
    } on DioException catch (error) {
      ExceptionHandler.fromDioError(error);
    } catch (error) {
      throw Exception('Unexpected Error Occured $error');
    }
    return vendors;
  }
}
