import 'package:flutter_base_project/features/domain/entites/image_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'artists_entity.dart';
import 'copy_right_entity.dart';
part 'album_item_entity.freezed.dart';
part 'album_item_entity.g.dart';
@freezed
class AlbumItemEntity with _$AlbumItemEntity {
  const factory AlbumItemEntity({
    @Default("") final String album_type,
    @Default([]) final List<ArtistsEntity> artists,
    @Default([]) final List<CopyRightEntity> copyrights,
    @Default([]) final List<ImageEntity> images,
    @Default("") final String label,
    @Default("") final String name,
    @Default(0) final int popularity,
    @Default("") final String release_date,
    @Default("") final String release_date_precision,
    @Default(0) final int total_tracks,

  }) = _AlbumItemEntity;

  factory AlbumItemEntity.fromJson(Map<String, Object?> json)
  => _$AlbumItemEntityFromJson(json);
}