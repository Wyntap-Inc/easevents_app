// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flat _$FlatFromJson(Map<String, dynamic> json) => Flat(
      price: (json['price'] as num?)?.toInt(),
      per: json['per'] as String?,
    );

Map<String, dynamic> _$FlatToJson(Flat instance) => <String, dynamic>{
      'price': instance.price,
      'per': instance.per,
    };
