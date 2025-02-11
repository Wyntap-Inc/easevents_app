import 'package:easevents_app/exports.dart';

class ExceptionHandler implements Exception {
  String? message;
  ExceptionHandler.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = 'Request to API Server was cancelled';
        break;
      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout with API Server';
      case DioExceptionType.unknown:
        message = 'Unexpected error Occured';
      case DioExceptionType.receiveTimeout:
        message = 'Connection error Timed Out';
      case DioExceptionType.badResponse:
        message = _handleError(dioError.response!.statusCode);
      case DioExceptionType.sendTimeout:
        message = 'Send timeout connection with API Server';
      default:
        message = 'Something went wrong';
    }
  }

  String _handleError(statusCode) {
    switch (statusCode) {
      case 400:
        return 'Please check your input and try again';
      case 404:
        return '404 not found, Try refreshing or checking your internet connection';
      case 500:
        return 'Something went wrong on our end. Please try again later.';
      default:
        return 'Something went wrong';
    }
  }

  @override
  String toString() => message.toString();
}
