// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sso_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SsoResponse _$SsoResponseFromJson(Map<String, dynamic> json) => SsoResponse(
      timeRequested: json['timeRequested'] as String,
      environment: json['environment'] as String,
      domain: json['domain'] as String,
      success: json['success'] as bool,
      statusCode: json['statusCode'] as String,
      message: json['message'] as String?,
      httpCode: (json['httpCode'] as num).toInt(),
      data: SsoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SsoResponseToJson(SsoResponse instance) =>
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
