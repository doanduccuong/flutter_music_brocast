part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomePageState extends HomeState {
  final AlbumDTO? albumData;
  final PageStatus pageStatus;
  final ArtistEntity? artistData;
  final ArtistRelatedEntity? artistRelatedData;
  final PlaylistEntity? playlistData;

  HomePageState({
    this.albumData,
    this.pageStatus = PageStatus.LOADING,
    this.artistData,
    this.artistRelatedData,
    this.playlistData,
  });

  HomePageState copyWith({
    AlbumDTO? data,
    PageStatus? pageStatus,
    ArtistEntity? artistData,
    ArtistRelatedEntity? artistRelatedData,
    PlaylistEntity? playListData,
  }) {
    return HomePageState(
      albumData: data ?? albumData,
      pageStatus: pageStatus ?? this.pageStatus,
      artistData: artistData ?? this.artistData,
      artistRelatedData: artistRelatedData ?? this.artistRelatedData,
      playlistData: playListData ?? playlistData,
    );
  }

  @override
  List<Object?> get props => [
        albumData,
        pageStatus,
        artistData,
        artistRelatedData,
        playlistData,
      ];
}
