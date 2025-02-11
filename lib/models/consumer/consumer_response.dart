import 'package:easevents_app/exports.dart';

part 'consumer_response.g.dart';
part 'consumer_response.freezed.dart';

@freezed
class ConsumerResponse with _$ConsumerResponse {
  const factory ConsumerResponse({
    required String timeRequested,
    required String environment,
    required String domain,
    required bool success,
    required int httpCode,
    required String statusCode,
    final String? message,
    required List<Data> data,
  }) = _ConsumerResponse;

  factory ConsumerResponse.fromJson(Map<String, dynamic> json) =>
      _$ConsumerResponseFromJson(json);
}
