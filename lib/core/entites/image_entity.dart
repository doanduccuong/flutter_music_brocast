import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_entity.freezed.dart';
part 'image_entity.g.dart';
@freezed
class ImageEntity with _$ImageEntity {
  const factory ImageEntity({
    @Default(0) final int height,
    @Default("") final String url,
    @Default(0) final int width,
  }) = _ImageEntity;

  factory ImageEntity.fromJson(Map<String, Object?> json)
  => _$ImageEntityFromJson(json);
}