// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      order: (json['order'] as num).toInt(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'order': instance.order,
      'id': instance.id,
    };
