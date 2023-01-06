// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spotify_external_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpotifyExternalUrl _$SpotifyExternalUrlFromJson(Map<String, dynamic> json) {
  return _SpotifyExternalUrl.fromJson(json);
}

/// @nodoc
mixin _$SpotifyExternalUrl {
  String get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyExternalUrlCopyWith<SpotifyExternalUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyExternalUrlCopyWith<$Res> {
  factory $SpotifyExternalUrlCopyWith(
          SpotifyExternalUrl value, $Res Function(SpotifyExternalUrl) then) =
      _$SpotifyExternalUrlCopyWithImpl<$Res>;
  $Res call({String spotify});
}

/// @nodoc
class _$SpotifyExternalUrlCopyWithImpl<$Res>
    implements $SpotifyExternalUrlCopyWith<$Res> {
  _$SpotifyExternalUrlCopyWithImpl(this._value, this._then);

  final SpotifyExternalUrl _value;
  // ignore: unused_field
  final $Res Function(SpotifyExternalUrl) _then;

  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_value.copyWith(
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpotifyExternalUrlCopyWith<$Res>
    implements $SpotifyExternalUrlCopyWith<$Res> {
  factory _$$_SpotifyExternalUrlCopyWith(_$_SpotifyExternalUrl value,
          $Res Function(_$_SpotifyExternalUrl) then) =
      __$$_SpotifyExternalUrlCopyWithImpl<$Res>;
  @override
  $Res call({String spotify});
}

/// @nodoc
class __$$_SpotifyExternalUrlCopyWithImpl<$Res>
    extends _$SpotifyExternalUrlCopyWithImpl<$Res>
    implements _$$_SpotifyExternalUrlCopyWith<$Res> {
  __$$_SpotifyExternalUrlCopyWithImpl(
      _$_SpotifyExternalUrl _value, $Res Function(_$_SpotifyExternalUrl) _then)
      : super(_value, (v) => _then(v as _$_SpotifyExternalUrl));

  @override
  _$_SpotifyExternalUrl get _value => super._value as _$_SpotifyExternalUrl;

  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$_SpotifyExternalUrl(
      spotify: spotify == freezed
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpotifyExternalUrl implements _SpotifyExternalUrl {
  const _$_SpotifyExternalUrl({this.spotify = ""});

  factory _$_SpotifyExternalUrl.fromJson(Map<String, dynamic> json) =>
      _$$_SpotifyExternalUrlFromJson(json);

  @override
  @JsonKey()
  final String spotify;

  @override
  String toString() {
    return 'SpotifyExternalUrl(spotify: $spotify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpotifyExternalUrl &&
            const DeepCollectionEquality().equals(other.spotify, spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(spotify));

  @JsonKey(ignore: true)
  @override
  _$$_SpotifyExternalUrlCopyWith<_$_SpotifyExternalUrl> get copyWith =>
      __$$_SpotifyExternalUrlCopyWithImpl<_$_SpotifyExternalUrl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpotifyExternalUrlToJson(
      this,
    );
  }
}

abstract class _SpotifyExternalUrl implements SpotifyExternalUrl {
  const factory _SpotifyExternalUrl({final String spotify}) =
      _$_SpotifyExternalUrl;

  factory _SpotifyExternalUrl.fromJson(Map<String, dynamic> json) =
      _$_SpotifyExternalUrl.fromJson;

  @override
  String get spotify;
  @override
  @JsonKey(ignore: true)
  _$$_SpotifyExternalUrlCopyWith<_$_SpotifyExternalUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
