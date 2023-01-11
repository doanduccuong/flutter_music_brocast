part of 'google_service_bloc.dart';

@immutable
abstract class GoogleState extends Equatable {}

class GoogleServiceState extends GoogleState {
  final GoogleSignInAccount? currentUser;

  GoogleServiceState({
    this.currentUser,
  });

  GoogleServiceState copyWith(final GoogleSignInAccount? currentUser) {
    return GoogleServiceState(currentUser: currentUser ?? this.currentUser);
  }

  @override
  List<Object?> get props => [currentUser];
}
