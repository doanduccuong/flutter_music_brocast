part of 'google_service_bloc.dart';

@immutable
abstract class GoogleServiceEvent {}

class HandleSignIn extends GoogleServiceEvent {}

class HandleSignOut extends GoogleServiceEvent {}
