// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumEntity _$AlbumEntityFromJson(Map<String, dynamic> json) {
  return _AlbumEntity.fromJson(json);
}

/// @nodoc
mixin _$AlbumEntity {
  List<AlbumItemEntity> get albums => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumEntityCopyWith<AlbumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumEntityCopyWith<$Res> {
  factory $AlbumEntityCopyWith(
          AlbumEntity value, $Res Function(AlbumEntity) then) =
      _$AlbumEntityCopyWithImpl<$Res>;
  $Res call({List<AlbumItemEntity> albums});
}

/// @nodoc
class _$AlbumEntityCopyWithImpl<$Res> implements $AlbumEntityCopyWith<$Res> {
  _$AlbumEntityCopyWithImpl(this._value, this._then);

  final AlbumEntity _value;
  // ignore: unused_field
  final $Res Function(AlbumEntity) _then;

  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_value.copyWith(
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumItemEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_AlbumEntityCopyWith<$Res>
    implements $AlbumEntityCopyWith<$Res> {
  factory _$$_AlbumEntityCopyWith(
          _$_AlbumEntity value, $Res Function(_$_AlbumEntity) then) =
      __$$_AlbumEntityCopyWithImpl<$Res>;
  @override
  $Res call({List<AlbumItemEntity> albums});
}

/// @nodoc
class __$$_AlbumEntityCopyWithImpl<$Res> extends _$AlbumEntityCopyWithImpl<$Res>
    implements _$$_AlbumEntityCopyWith<$Res> {
  __$$_AlbumEntityCopyWithImpl(
      _$_AlbumEntity _value, $Res Function(_$_AlbumEntity) _then)
      : super(_value, (v) => _then(v as _$_AlbumEntity));

  @override
  _$_AlbumEntity get _value => super._value as _$_AlbumEntity;

  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_$_AlbumEntity(
      albums: albums == freezed
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumItemEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumEntity implements _AlbumEntity {
  const _$_AlbumEntity({final List<AlbumItemEntity> albums = const []})
      : _albums = albums;

  factory _$_AlbumEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumEntityFromJson(json);

  final List<AlbumItemEntity> _albums;
  @override
  @JsonKey()
  List<AlbumItemEntity> get albums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'AlbumEntity(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumEntity &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumEntityCopyWith<_$_AlbumEntity> get copyWith =>
      __$$_AlbumEntityCopyWithImpl<_$_AlbumEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumEntityToJson(
      this,
    );
  }
}

abstract class _AlbumEntity implements AlbumEntity {
  const factory _AlbumEntity({final List<AlbumItemEntity> albums}) =
      _$_AlbumEntity;

  factory _AlbumEntity.fromJson(Map<String, dynamic> json) =
      _$_AlbumEntity.fromJson;

  @override
  List<AlbumItemEntity> get albums;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumEntityCopyWith<_$_AlbumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
