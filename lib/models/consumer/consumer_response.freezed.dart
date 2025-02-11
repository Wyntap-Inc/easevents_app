// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsumerResponse _$ConsumerResponseFromJson(Map<String, dynamic> json) {
  return _ConsumerResponse.fromJson(json);
}

/// @nodoc
mixin _$ConsumerResponse {
  String get timeRequested => throw _privateConstructorUsedError;
  String get environment => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int get httpCode => throw _privateConstructorUsedError;
  String get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  /// Serializes this ConsumerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsumerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumerResponseCopyWith<ConsumerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumerResponseCopyWith<$Res> {
  factory $ConsumerResponseCopyWith(
          ConsumerResponse value, $Res Function(ConsumerResponse) then) =
      _$ConsumerResponseCopyWithImpl<$Res, ConsumerResponse>;
  @useResult
  $Res call(
      {String timeRequested,
      String environment,
      String domain,
      bool success,
      int httpCode,
      String statusCode,
      String? message,
      List<Data> data});
}

/// @nodoc
class _$ConsumerResponseCopyWithImpl<$Res, $Val extends ConsumerResponse>
    implements $ConsumerResponseCopyWith<$Res> {
  _$ConsumerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsumerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRequested = null,
    Object? environment = null,
    Object? domain = null,
    Object? success = null,
    Object? httpCode = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      timeRequested: null == timeRequested
          ? _value.timeRequested
          : timeRequested // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      httpCode: null == httpCode
          ? _value.httpCode
          : httpCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsumerResponseImplCopyWith<$Res>
    implements $ConsumerResponseCopyWith<$Res> {
  factory _$$ConsumerResponseImplCopyWith(_$ConsumerResponseImpl value,
          $Res Function(_$ConsumerResponseImpl) then) =
      __$$ConsumerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timeRequested,
      String environment,
      String domain,
      bool success,
      int httpCode,
      String statusCode,
      String? message,
      List<Data> data});
}

/// @nodoc
class __$$ConsumerResponseImplCopyWithImpl<$Res>
    extends _$ConsumerResponseCopyWithImpl<$Res, _$ConsumerResponseImpl>
    implements _$$ConsumerResponseImplCopyWith<$Res> {
  __$$ConsumerResponseImplCopyWithImpl(_$ConsumerResponseImpl _value,
      $Res Function(_$ConsumerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsumerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRequested = null,
    Object? environment = null,
    Object? domain = null,
    Object? success = null,
    Object? httpCode = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$ConsumerResponseImpl(
      timeRequested: null == timeRequested
          ? _value.timeRequested
          : timeRequested // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      httpCode: null == httpCode
          ? _value.httpCode
          : httpCode // ignore: cast_nullable_to_non_nullable
              as int,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumerResponseImpl implements _ConsumerResponse {
  const _$ConsumerResponseImpl(
      {required this.timeRequested,
      required this.environment,
      required this.domain,
      required this.success,
      required this.httpCode,
      required this.statusCode,
      this.message,
      required final List<Data> data})
      : _data = data;

  factory _$ConsumerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumerResponseImplFromJson(json);

  @override
  final String timeRequested;
  @override
  final String environment;
  @override
  final String domain;
  @override
  final bool success;
  @override
  final int httpCode;
  @override
  final String statusCode;
  @override
  final String? message;
  final List<Data> _data;
  @override
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ConsumerResponse(timeRequested: $timeRequested, environment: $environment, domain: $domain, success: $success, httpCode: $httpCode, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumerResponseImpl &&
            (identical(other.timeRequested, timeRequested) ||
                other.timeRequested == timeRequested) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.httpCode, httpCode) ||
                other.httpCode == httpCode) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeRequested,
      environment,
      domain,
      success,
      httpCode,
      statusCode,
      message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of ConsumerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumerResponseImplCopyWith<_$ConsumerResponseImpl> get copyWith =>
      __$$ConsumerResponseImplCopyWithImpl<_$ConsumerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumerResponseImplToJson(
      this,
    );
  }
}

abstract class _ConsumerResponse implements ConsumerResponse {
  const factory _ConsumerResponse(
      {required final String timeRequested,
      required final String environment,
      required final String domain,
      required final bool success,
      required final int httpCode,
      required final String statusCode,
      final String? message,
      required final List<Data> data}) = _$ConsumerResponseImpl;

  factory _ConsumerResponse.fromJson(Map<String, dynamic> json) =
      _$ConsumerResponseImpl.fromJson;

  @override
  String get timeRequested;
  @override
  String get environment;
  @override
  String get domain;
  @override
  bool get success;
  @override
  int get httpCode;
  @override
  String get statusCode;
  @override
  String? get message;
  @override
  List<Data> get data;

  /// Create a copy of ConsumerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumerResponseImplCopyWith<_$ConsumerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
