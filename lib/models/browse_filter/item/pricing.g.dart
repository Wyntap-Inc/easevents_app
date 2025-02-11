// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pricing _$PricingFromJson(Map<String, dynamic> json) => Pricing(
      type: json['type'] as String,
      securityDeposit: (json['securityDeposit'] as num?)?.toInt(),
      flat: Flat.fromJson(json['flat'] as Map<String, dynamic>),
      fixed: Fixed.fromJson(json['fixed'] as Map<String, dynamic>),
      structure: json['structure'],
    );

Map<String, dynamic> _$PricingToJson(Pricing instance) => <String, dynamic>{
      'type': instance.type,
      'securityDeposit': instance.securityDeposit,
      'flat': instance.flat,
      'fixed': instance.fixed,
      'structure': instance.structure,
    };
