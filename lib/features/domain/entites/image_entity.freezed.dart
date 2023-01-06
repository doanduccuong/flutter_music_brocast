// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageEntity {
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res>;
  $Res call({int height, String url, int width});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res> implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  final ImageEntity _value;
  // ignore: unused_field
  final $Res Function(ImageEntity) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageEntityCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$$_ImageEntityCopyWith(
          _$_ImageEntity value, $Res Function(_$_ImageEntity) then) =
      __$$_ImageEntityCopyWithImpl<$Res>;
  @override
  $Res call({int height, String url, int width});
}

/// @nodoc
class __$$_ImageEntityCopyWithImpl<$Res> extends _$ImageEntityCopyWithImpl<$Res>
    implements _$$_ImageEntityCopyWith<$Res> {
  __$$_ImageEntityCopyWithImpl(
      _$_ImageEntity _value, $Res Function(_$_ImageEntity) _then)
      : super(_value, (v) => _then(v as _$_ImageEntity));

  @override
  _$_ImageEntity get _value => super._value as _$_ImageEntity;

  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ImageEntity(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageEntity implements _ImageEntity {
  const _$_ImageEntity({this.height = 0, this.url = "", this.width = 0});

  factory _$_ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ImageEntityFromJson(json);

  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final int width;

  @override
  String toString() {
    return 'ImageEntity(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageEntity &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$_ImageEntityCopyWith<_$_ImageEntity> get copyWith =>
      __$$_ImageEntityCopyWithImpl<_$_ImageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageEntityToJson(
      this,
    );
  }
}

abstract class _ImageEntity implements ImageEntity {
  const factory _ImageEntity(
      {final int height, final String url, final int width}) = _$_ImageEntity;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageEntity.fromJson;

  @override
  int get height;
  @override
  String get url;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImageEntityCopyWith<_$_ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
