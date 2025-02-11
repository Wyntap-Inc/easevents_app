// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      sku: json['sku'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      status: json['status'] as String?,
      type: json['type'] as String?,
      rental: json['rental'] as bool?,
      pricing: json['pricing'] == null
          ? null
          : Pricing.fromJson(json['pricing'] as Map<String, dynamic>),
      createdBy: json['createdBy'] as String,
      workspace: json['workspace'] as String,
      workspaceSpace: json['workspaceSpace'] as String,
      organization: json['organization'] as String,
      deleted: json['deleted'] as bool,
      dataType: json['dataType'] as String,
      urlCode: json['urlCode'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'media': instance.media,
      'tags': instance.tags,
      'status': instance.status,
      'type': instance.type,
      'rental': instance.rental,
      'pricing': instance.pricing,
      'createdBy': instance.createdBy,
      'workspace': instance.workspace,
      'workspaceSpace': instance.workspaceSpace,
      'organization': instance.organization,
      'deleted': instance.deleted,
      'dataType': instance.dataType,
      'urlCode': instance.urlCode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };

_$SiteImpl _$$SiteImplFromJson(Map<String, dynamic> json) => _$SiteImpl(
      name: json['name'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      logo: json['logo'] as String,
      covers: (json['covers'] as List<dynamic>?)
          ?.map((e) => Covers.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdBy: json['createdBy'] as String,
      workspace: json['workspace'] as String,
      workspaceSpace: json['workspaceSpace'] as String,
      organization: json['organization'] as String,
      deleted: json['deleted'] as bool,
      dataType: json['dataType'] as String,
      urlCode: json['urlCode'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SiteImplToJson(_$SiteImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'logo': instance.logo,
      'covers': instance.covers,
      'status': instance.status,
      'sections': instance.sections,
      'createdBy': instance.createdBy,
      'workspace': instance.workspace,
      'workspaceSpace': instance.workspaceSpace,
      'organization': instance.organization,
      'deleted': instance.deleted,
      'dataType': instance.dataType,
      'urlCode': instance.urlCode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };
