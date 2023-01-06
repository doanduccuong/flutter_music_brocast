// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artists_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistsEntity _$ArtistsEntityFromJson(Map<String, dynamic> json) {
  return _ArtistsEntity.fromJson(json);
}

/// @nodoc
mixin _$ArtistsEntity {
  SpotifyExternalUrl? get external_urls => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsEntityCopyWith<ArtistsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsEntityCopyWith<$Res> {
  factory $ArtistsEntityCopyWith(
          ArtistsEntity value, $Res Function(ArtistsEntity) then) =
      _$ArtistsEntityCopyWithImpl<$Res>;
  $Res call(
      {SpotifyExternalUrl? external_urls,
      String id,
      String name,
      String type,
      String uri});

  $SpotifyExternalUrlCopyWith<$Res>? get external_urls;
}

/// @nodoc
class _$ArtistsEntityCopyWithImpl<$Res>
    implements $ArtistsEntityCopyWith<$Res> {
  _$ArtistsEntityCopyWithImpl(this._value, this._then);

  final ArtistsEntity _value;
  // ignore: unused_field
  final $Res Function(ArtistsEntity) _then;

  @override
  $Res call({
    Object? external_urls = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      external_urls: external_urls == freezed
          ? _value.external_urls
          : external_urls // ignore: cast_nullable_to_non_nullable
              as SpotifyExternalUrl?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SpotifyExternalUrlCopyWith<$Res>? get external_urls {
    if (_value.external_urls == null) {
      return null;
    }

    return $SpotifyExternalUrlCopyWith<$Res>(_value.external_urls!, (value) {
      return _then(_value.copyWith(external_urls: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArtistsEntityCopyWith<$Res>
    implements $ArtistsEntityCopyWith<$Res> {
  factory _$$_ArtistsEntityCopyWith(
          _$_ArtistsEntity value, $Res Function(_$_ArtistsEntity) then) =
      __$$_ArtistsEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {SpotifyExternalUrl? external_urls,
      String id,
      String name,
      String type,
      String uri});

  @override
  $SpotifyExternalUrlCopyWith<$Res>? get external_urls;
}

/// @nodoc
class __$$_ArtistsEntityCopyWithImpl<$Res>
    extends _$ArtistsEntityCopyWithImpl<$Res>
    implements _$$_ArtistsEntityCopyWith<$Res> {
  __$$_ArtistsEntityCopyWithImpl(
      _$_ArtistsEntity _value, $Res Function(_$_ArtistsEntity) _then)
      : super(_value, (v) => _then(v as _$_ArtistsEntity));

  @override
  _$_ArtistsEntity get _value => super._value as _$_ArtistsEntity;

  @override
  $Res call({
    Object? external_urls = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_ArtistsEntity(
      external_urls: external_urls == freezed
          ? _value.external_urls
          : external_urls // ignore: cast_nullable_to_non_nullable
              as SpotifyExternalUrl?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistsEntity implements _ArtistsEntity {
  const _$_ArtistsEntity(
      {this.external_urls,
      this.id = "",
      this.name = "",
      this.type = "",
      this.uri = ""});

  factory _$_ArtistsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistsEntityFromJson(json);

  @override
  final SpotifyExternalUrl? external_urls;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String uri;

  @override
  String toString() {
    return 'ArtistsEntity(external_urls: $external_urls, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistsEntity &&
            const DeepCollectionEquality()
                .equals(other.external_urls, external_urls) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.uri, uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(external_urls),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(uri));

  @JsonKey(ignore: true)
  @override
  _$$_ArtistsEntityCopyWith<_$_ArtistsEntity> get copyWith =>
      __$$_ArtistsEntityCopyWithImpl<_$_ArtistsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistsEntityToJson(
      this,
    );
  }
}

abstract class _ArtistsEntity implements ArtistsEntity {
  const factory _ArtistsEntity(
      {final SpotifyExternalUrl? external_urls,
      final String id,
      final String name,
      final String type,
      final String uri}) = _$_ArtistsEntity;

  factory _ArtistsEntity.fromJson(Map<String, dynamic> json) =
      _$_ArtistsEntity.fromJson;

  @override
  SpotifyExternalUrl? get external_urls;
  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistsEntityCopyWith<_$_ArtistsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
