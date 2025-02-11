// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsumerResponseImpl _$$ConsumerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsumerResponseImpl(
      timeRequested: json['timeRequested'] as String,
      environment: json['environment'] as String,
      domain: json['domain'] as String,
      success: json['success'] as bool,
      httpCode: (json['httpCode'] as num).toInt(),
      statusCode: json['statusCode'] as String,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConsumerResponseImplToJson(
        _$ConsumerResponseImpl instance) =>
    <String, dynamic>{
      'timeRequested': instance.timeRequested,
      'environment': instance.environment,
      'domain': instance.domain,
      'success': instance.success,
      'httpCode': instance.httpCode,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
