import 'package:freezed_annotation/freezed_annotation.dart';
import 'album_item_entity.dart';
part 'album_entity.freezed.dart';
part 'album_entity.g.dart';

@freezed
class AlbumEntity with _$AlbumEntity {
  const factory AlbumEntity({
    @Default([]) final List<AlbumItemEntity> albums,
  }) = _AlbumEntity;

  factory AlbumEntity.fromJson(Map<String, Object?> json) =>
      _$AlbumEntityFromJson(json);
}
