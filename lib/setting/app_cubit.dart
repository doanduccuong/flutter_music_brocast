import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_project/core/platform/network/google_service/google_service_bloc.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:injectable/injectable.dart';
import '../enum/load_status.dart';
import 'dart:developer' as logger;

part 'app_state.dart';
@singleton
class AppCubit extends Cubit<AppInitial> {

  AppCubit() : super(const AppInitial());

  void fetchProfile() {
    emit(state.copyWith(fetchProfileStatus: LoadStatus.loading));
  }

  void signOut() async {
    emit(state.copyWith(signOutStatus: LoadStatus.loading));
    try {
      getIt<GoogleServiceBloc>().add(HandleSignOut());
      emit(state.removeUser().copyWith(signOutStatus: LoadStatus.success));
    } catch (e) {
      logger.log(e.toString());
      emit(state.copyWith(signOutStatus: LoadStatus.failure));
    }
  }

  void signIn() {
    try {
      getIt<GoogleServiceBloc>().add(HandleSignIn());
    } catch (e) {
      logger.log(e.toString());
    }
  }
}
