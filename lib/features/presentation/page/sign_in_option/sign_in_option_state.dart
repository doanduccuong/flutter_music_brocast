part of 'sign_in_option_bloc.dart';

@immutable
abstract class SignInState extends Equatable {}

class SignInOptionState extends SignInState {
  final PageStatus pageStatus;

  SignInOptionState({
    this.pageStatus = PageStatus.LOADED,
  });

  SignInOptionState copyWith({
    final PageStatus? pageStatus,
  }) {
    return SignInOptionState(
      pageStatus: pageStatus ?? this.pageStatus,
    );
  }

  @override
  List<Object?> get props => [pageStatus];
}
