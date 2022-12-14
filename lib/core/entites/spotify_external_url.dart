import 'package:freezed_annotation/freezed_annotation.dart';
part 'spotify_external_url.freezed.dart';
part 'spotify_external_url.g.dart';
@freezed
class SpotifyExternalUrl with _$SpotifyExternalUrl {
  const factory SpotifyExternalUrl({
    @Default("") String spotify,
  }) = _SpotifyExternalUrl;

  factory SpotifyExternalUrl.fromJson(Map<String, Object?> json)
  => _$SpotifyExternalUrlFromJson(json);
}