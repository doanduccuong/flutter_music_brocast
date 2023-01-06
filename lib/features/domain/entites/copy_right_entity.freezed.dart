// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'copy_right_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CopyRightEntity _$CopyRightEntityFromJson(Map<String, dynamic> json) {
  return _CopyRightEntity.fromJson(json);
}

/// @nodoc
mixin _$CopyRightEntity {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopyRightEntityCopyWith<CopyRightEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyRightEntityCopyWith<$Res> {
  factory $CopyRightEntityCopyWith(
          CopyRightEntity value, $Res Function(CopyRightEntity) then) =
      _$CopyRightEntityCopyWithImpl<$Res>;
  $Res call({String text, String type});
}

/// @nodoc
class _$CopyRightEntityCopyWithImpl<$Res>
    implements $CopyRightEntityCopyWith<$Res> {
  _$CopyRightEntityCopyWithImpl(this._value, this._then);

  final CopyRightEntity _value;
  // ignore: unused_field
  final $Res Function(CopyRightEntity) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CopyRightEntityCopyWith<$Res>
    implements $CopyRightEntityCopyWith<$Res> {
  factory _$$_CopyRightEntityCopyWith(
          _$_CopyRightEntity value, $Res Function(_$_CopyRightEntity) then) =
      __$$_CopyRightEntityCopyWithImpl<$Res>;
  @override
  $Res call({String text, String type});
}

/// @nodoc
class __$$_CopyRightEntityCopyWithImpl<$Res>
    extends _$CopyRightEntityCopyWithImpl<$Res>
    implements _$$_CopyRightEntityCopyWith<$Res> {
  __$$_CopyRightEntityCopyWithImpl(
      _$_CopyRightEntity _value, $Res Function(_$_CopyRightEntity) _then)
      : super(_value, (v) => _then(v as _$_CopyRightEntity));

  @override
  _$_CopyRightEntity get _value => super._value as _$_CopyRightEntity;

  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_CopyRightEntity(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CopyRightEntity implements _CopyRightEntity {
  const _$_CopyRightEntity({this.text = "", this.type = ""});

  factory _$_CopyRightEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CopyRightEntityFromJson(json);

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'CopyRightEntity(text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyRightEntity &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_CopyRightEntityCopyWith<_$_CopyRightEntity> get copyWith =>
      __$$_CopyRightEntityCopyWithImpl<_$_CopyRightEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CopyRightEntityToJson(
      this,
    );
  }
}

abstract class _CopyRightEntity implements CopyRightEntity {
  const factory _CopyRightEntity({final String text, final String type}) =
      _$_CopyRightEntity;

  factory _CopyRightEntity.fromJson(Map<String, dynamic> json) =
      _$_CopyRightEntity.fromJson;

  @override
  String get text;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_CopyRightEntityCopyWith<_$_CopyRightEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
