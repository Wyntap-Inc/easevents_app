// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  switch (json['dataType']) {
    case 'item':
      return _Item.fromJson(json);
    case 'site':
      return _Site.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'dataType', 'Data',
          'Invalid union type "${json['dataType']}"!');
  }
}

/// @nodoc
mixin _$Data {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get workspace => throw _privateConstructorUsedError;
  String get workspaceSpace => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get dataType => throw _privateConstructorUsedError;
  String get urlCode => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        item,
    required TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        site,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult? Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Item value) item,
    required TResult Function(_Site value) site,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Item value)? item,
    TResult? Function(_Site value)? site,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Item value)? item,
    TResult Function(_Site value)? site,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String name,
      String description,
      String status,
      String createdBy,
      String workspace,
      String workspaceSpace,
      String organization,
      bool deleted,
      String dataType,
      String urlCode,
      String createdAt,
      String updatedAt,
      String id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? createdBy = null,
    Object? workspace = null,
    Object? workspaceSpace = null,
    Object? organization = null,
    Object? deleted = null,
    Object? dataType = null,
    Object? urlCode = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description!
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status!
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as String,
      workspaceSpace: null == workspaceSpace
          ? _value.workspaceSpace
          : workspaceSpace // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      urlCode: null == urlCode
          ? _value.urlCode
          : urlCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sku,
      String name,
      String? description,
      List<Media>? media,
      List<String> tags,
      String? status,
      String type,
      bool? rental,
      Pricing? pricing,
      String createdBy,
      String workspace,
      String workspaceSpace,
      String organization,
      bool deleted,
      String dataType,
      String urlCode,
      String createdAt,
      String updatedAt,
      String id});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? media = freezed,
    Object? tags = null,
    Object? status = freezed,
    Object? type = null,
    Object? rental = freezed,
    Object? pricing = freezed,
    Object? createdBy = null,
    Object? workspace = null,
    Object? workspaceSpace = null,
    Object? organization = null,
    Object? deleted = null,
    Object? dataType = null,
    Object? urlCode = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_$ItemImpl(
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rental: freezed == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as bool?,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as String,
      workspaceSpace: null == workspaceSpace
          ? _value.workspaceSpace
          : workspaceSpace // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      urlCode: null == urlCode
          ? _value.urlCode
          : urlCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {this.sku,
      required this.name,
      this.description,
      final List<Media>? media,
      final List<String> tags = const [],
      this.status,
      required this.type,
      this.rental,
      this.pricing,
      required this.createdBy,
      required this.workspace,
      required this.workspaceSpace,
      required this.organization,
      required this.deleted,
      required this.dataType,
      required this.urlCode,
      required this.createdAt,
      required this.updatedAt,
      required this.id})
      : _media = media,
        _tags = tags;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? sku;
  @override
  final String name;
  @override
  final String? description;
  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? status;
  @override
  final String type;
  @override
  final bool? rental;
  @override
  final Pricing? pricing;
  @override
  final String createdBy;
  @override
  final String workspace;
  @override
  final String workspaceSpace;
  @override
  final String organization;
  @override
  final bool deleted;
  @override
  final String dataType;
  @override
  final String urlCode;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String id;

  @override
  String toString() {
    return 'Data.item(sku: $sku, name: $name, description: $description, media: $media, tags: $tags, status: $status, type: $type, rental: $rental, pricing: $pricing, createdBy: $createdBy, workspace: $workspace, workspaceSpace: $workspaceSpace, organization: $organization, deleted: $deleted, dataType: $dataType, urlCode: $urlCode, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rental, rental) || other.rental == rental) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace) &&
            (identical(other.workspaceSpace, workspaceSpace) ||
                other.workspaceSpace == workspaceSpace) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.urlCode, urlCode) || other.urlCode == urlCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        sku,
        name,
        description,
        const DeepCollectionEquality().hash(_media),
        const DeepCollectionEquality().hash(_tags),
        status,
        type,
        rental,
        pricing,
        createdBy,
        workspace,
        workspaceSpace,
        organization,
        deleted,
        dataType,
        urlCode,
        createdAt,
        updatedAt,
        id
      ]);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        item,
    required TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        site,
  }) {
    return item(
        sku,
        name,
        description,
        media,
        tags,
        status,
        type,
        rental,
        pricing,
        createdBy,
        workspace,
        workspaceSpace,
        organization,
        deleted,
        dataType,
        urlCode,
        createdAt,
        updatedAt,
        id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult? Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
  }) {
    return item?.call(
        sku,
        name,
        description,
        media,
        tags,
        status,
        type,
        rental,
        pricing,
        createdBy,
        workspace,
        workspaceSpace,
        organization,
        deleted,
        dataType,
        urlCode,
        createdAt,
        updatedAt,
        id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(
          sku,
          name,
          description,
          media,
          tags,
          status,
          type,
          rental,
          pricing,
          createdBy,
          workspace,
          workspaceSpace,
          organization,
          deleted,
          dataType,
          urlCode,
          createdAt,
          updatedAt,
          id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Item value) item,
    required TResult Function(_Site value) site,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Item value)? item,
    TResult? Function(_Site value)? site,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Item value)? item,
    TResult Function(_Site value)? site,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Data {
  const factory _Item(
      {final String? sku,
      required final String name,
      final String? description,
      final List<Media>? media,
      final List<String> tags,
      final String? status,
      required final String type,
      final bool? rental,
      final Pricing? pricing,
      required final String createdBy,
      required final String workspace,
      required final String workspaceSpace,
      required final String organization,
      required final bool deleted,
      required final String dataType,
      required final String urlCode,
      required final String createdAt,
      required final String updatedAt,
      required final String id}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  String? get sku;
  @override
  String get name;
  @override
  String? get description;
  List<Media>? get media;
  List<String> get tags;
  @override
  String? get status;
  String get type;
  bool? get rental;
  Pricing? get pricing;
  @override
  String get createdBy;
  @override
  String get workspace;
  @override
  String get workspaceSpace;
  @override
  String get organization;
  @override
  bool get deleted;
  @override
  String get dataType;
  @override
  String get urlCode;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get id;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SiteImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$SiteImplCopyWith(
          _$SiteImpl value, $Res Function(_$SiteImpl) then) =
      __$$SiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String title,
      String description,
      String logo,
      List<Covers>? covers,
      String status,
      List<Section> sections,
      String createdBy,
      String workspace,
      String workspaceSpace,
      String organization,
      bool deleted,
      String dataType,
      String urlCode,
      String createdAt,
      String updatedAt,
      String id});
}

/// @nodoc
class __$$SiteImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$SiteImpl>
    implements _$$SiteImplCopyWith<$Res> {
  __$$SiteImplCopyWithImpl(_$SiteImpl _value, $Res Function(_$SiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? description = null,
    Object? logo = null,
    Object? covers = freezed,
    Object? status = null,
    Object? sections = null,
    Object? createdBy = null,
    Object? workspace = null,
    Object? workspaceSpace = null,
    Object? organization = null,
    Object? deleted = null,
    Object? dataType = null,
    Object? urlCode = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_$SiteImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      covers: freezed == covers
          ? _value._covers
          : covers // ignore: cast_nullable_to_non_nullable
              as List<Covers>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as String,
      workspaceSpace: null == workspaceSpace
          ? _value.workspaceSpace
          : workspaceSpace // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      urlCode: null == urlCode
          ? _value.urlCode
          : urlCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteImpl implements _Site {
  const _$SiteImpl(
      {required this.name,
      required this.title,
      required this.description,
      required this.logo,
      final List<Covers>? covers,
      required this.status,
      final List<Section> sections = const [],
      required this.createdBy,
      required this.workspace,
      required this.workspaceSpace,
      required this.organization,
      required this.deleted,
      required this.dataType,
      required this.urlCode,
      required this.createdAt,
      required this.updatedAt,
      required this.id})
      : _covers = covers,
        _sections = sections;

  factory _$SiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteImplFromJson(json);

  @override
  final String name;
  @override
  final String title;
  @override
  final String description;
  @override
  final String logo;
  final List<Covers>? _covers;
  @override
  List<Covers>? get covers {
    final value = _covers;
    if (value == null) return null;
    if (_covers is EqualUnmodifiableListView) return _covers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String status;
  final List<Section> _sections;
  @override
  @JsonKey()
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final String createdBy;
  @override
  final String workspace;
  @override
  final String workspaceSpace;
  @override
  final String organization;
  @override
  final bool deleted;
  @override
  final String dataType;
  @override
  final String urlCode;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String id;

  @override
  String toString() {
    return 'Data.site(name: $name, title: $title, description: $description, logo: $logo, covers: $covers, status: $status, sections: $sections, createdBy: $createdBy, workspace: $workspace, workspaceSpace: $workspaceSpace, organization: $organization, deleted: $deleted, dataType: $dataType, urlCode: $urlCode, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._covers, _covers) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace) &&
            (identical(other.workspaceSpace, workspaceSpace) ||
                other.workspaceSpace == workspaceSpace) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.urlCode, urlCode) || other.urlCode == urlCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      title,
      description,
      logo,
      const DeepCollectionEquality().hash(_covers),
      status,
      const DeepCollectionEquality().hash(_sections),
      createdBy,
      workspace,
      workspaceSpace,
      organization,
      deleted,
      dataType,
      urlCode,
      createdAt,
      updatedAt,
      id);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      __$$SiteImplCopyWithImpl<_$SiteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        item,
    required TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)
        site,
  }) {
    return site(
        name,
        title,
        description,
        logo,
        covers,
        status,
        sections,
        createdBy,
        workspace,
        workspaceSpace,
        organization,
        deleted,
        dataType,
        urlCode,
        createdAt,
        updatedAt,
        id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult? Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
  }) {
    return site?.call(
        name,
        title,
        description,
        logo,
        covers,
        status,
        sections,
        createdBy,
        workspace,
        workspaceSpace,
        organization,
        deleted,
        dataType,
        urlCode,
        createdAt,
        updatedAt,
        id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? sku,
            String name,
            String? description,
            List<Media>? media,
            List<String> tags,
            String? status,
            String type,
            bool? rental,
            Pricing? pricing,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        item,
    TResult Function(
            String name,
            String title,
            String description,
            String logo,
            List<Covers>? covers,
            String status,
            List<Section> sections,
            String createdBy,
            String workspace,
            String workspaceSpace,
            String organization,
            bool deleted,
            String dataType,
            String urlCode,
            String createdAt,
            String updatedAt,
            String id)?
        site,
    required TResult orElse(),
  }) {
    if (site != null) {
      return site(
          name,
          title,
          description,
          logo,
          covers,
          status,
          sections,
          createdBy,
          workspace,
          workspaceSpace,
          organization,
          deleted,
          dataType,
          urlCode,
          createdAt,
          updatedAt,
          id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Item value) item,
    required TResult Function(_Site value) site,
  }) {
    return site(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Item value)? item,
    TResult? Function(_Site value)? site,
  }) {
    return site?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Item value)? item,
    TResult Function(_Site value)? site,
    required TResult orElse(),
  }) {
    if (site != null) {
      return site(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteImplToJson(
      this,
    );
  }
}

abstract class _Site implements Data {
  const factory _Site(
      {required final String name,
      required final String title,
      required final String description,
      required final String logo,
      final List<Covers>? covers,
      required final String status,
      final List<Section> sections,
      required final String createdBy,
      required final String workspace,
      required final String workspaceSpace,
      required final String organization,
      required final bool deleted,
      required final String dataType,
      required final String urlCode,
      required final String createdAt,
      required final String updatedAt,
      required final String id}) = _$SiteImpl;

  factory _Site.fromJson(Map<String, dynamic> json) = _$SiteImpl.fromJson;

  @override
  String get name;
  String get title;
  @override
  String get description;
  String get logo;
  List<Covers>? get covers;
  @override
  String get status;
  List<Section> get sections;
  @override
  String get createdBy;
  @override
  String get workspace;
  @override
  String get workspaceSpace;
  @override
  String get organization;
  @override
  bool get deleted;
  @override
  String get dataType;
  @override
  String get urlCode;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get id;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
