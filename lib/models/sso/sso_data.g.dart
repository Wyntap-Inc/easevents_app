// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sso_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SsoData _$SsoDataFromJson(Map<String, dynamic> json) => SsoData(
      accessToken: json['accessToken'] as String?,
      account: json['account'] == null
          ? null
          : ConsumerAccount.fromJson(json['account'] as Map<String, dynamic>),
      redirectURI: json['redirectURI'] as String?,
    );

Map<String, dynamic> _$SsoDataToJson(SsoData instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'account': instance.account,
      'redirectURI': instance.redirectURI,
    };
