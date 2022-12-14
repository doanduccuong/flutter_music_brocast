part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class FetchingDataEvent extends HomeEvent {}

class ChangeTabEvent extends HomeEvent {}
