part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomePageState extends HomeState {
  final AlbumDTO? albumData;
  final PageStatus pageStatus;
  final ArtistEntity? artistData;
  final ArtistRelatedEntity? artistRelatedData;

  HomePageState({
    this.albumData,
    this.pageStatus = PageStatus.LOADING,
    this.artistData,
    this.artistRelatedData,
  });

  HomePageState copyWith({
    AlbumDTO? data,
    PageStatus? pageStatus,
    ArtistEntity? artistData,
    ArtistRelatedEntity? artistRelatedData,
  }) {
    return HomePageState(
        albumData: data ?? albumData,
        pageStatus: pageStatus ?? this.pageStatus,
        artistData: artistData ?? this.artistData,
        artistRelatedData: artistRelatedData ?? this.artistRelatedData);
  }

  @override
  List<Object?> get props => [
        albumData,
        pageStatus,
        artistData,
        artistRelatedData,
      ];
}
