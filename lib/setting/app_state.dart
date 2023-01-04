part of 'app_cubit.dart';

class AppInitial extends Equatable {
  final LoadStatus fetchProfileStatus;
  final LoadStatus signOutStatus;

  const AppInitial({
    this.fetchProfileStatus = LoadStatus.initial,
    this.signOutStatus = LoadStatus.initial,
  });

  AppInitial copyWith({
    LoadStatus? fetchProfileStatus,
    LoadStatus? signOutStatus,
  }) {
    return AppInitial(
      fetchProfileStatus: fetchProfileStatus ?? this.fetchProfileStatus,
      signOutStatus: signOutStatus ?? this.signOutStatus,
    );
  }

  AppInitial removeUser() {
    return AppInitial(
      fetchProfileStatus: fetchProfileStatus,
      signOutStatus: signOutStatus,
    );
  }

  @override
  List<Object?> get props => [
        fetchProfileStatus,
        signOutStatus,
      ];
}
