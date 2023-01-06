import 'package:freezed_annotation/freezed_annotation.dart';
part 'copy_right_entity.freezed.dart';
part 'copy_right_entity.g.dart';
@freezed
class CopyRightEntity with _$CopyRightEntity {
  const factory CopyRightEntity({
    @Default("") final String text,
    @Default("") final String type,
  }) = _CopyRightEntity;

  factory CopyRightEntity.fromJson(Map<String, Object?> json)
  => _$CopyRightEntityFromJson(json);
}