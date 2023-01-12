import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_project/core/platform/auth_rest_client.dart';
import 'package:flutter_base_project/core/platform/network/google_service/google_service_bloc.dart';
import 'package:flutter_base_project/features/data/data_source/local_storage.dart';
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

  Future<void> requestAuthorization() async {
    final code = await LocalStorage.getCode();
    try{
      if (code == null) {
        final response = await getIt<AuthRestClient>().requestAuthorization();
        // await LocalStorage.setCode(response.code);
        // await LocalStorage.setRefreshToken(response.refreshToken);
      }
    }catch(e){
      logger.log(e.toString());
    }
    // _requestAccessToken();
  }
  //
  // Future<void> _requestAccessToken() async {
  //   final accessToken = await LocalStorage.getAccessToken();
  //   final code = await LocalStorage.getCode();
  //   if (accessToken == null && code != null) {
  //     try {
  //       final response = await getIt<UserRestClient>().requestAccessToken(code: code);
  //       // await LocalStorage.setAccessToken(response.accessToken);
  //     } catch (e) {
  //       logger.log(e.toString());
  //     }
  //   }
  // }
  //
  // Future<void> requestRefreshToken() async {
  //   final refreshToken = await LocalStorage.getRefreshToken();
  //   if (refreshToken != null) {
  //     try {
  //       final response = await getIt<UserRestClient>().requestRefreshAccessToken(refreshToken: refreshToken);
  //       // await LocalStorage.setAccessToken(response.accessToken);
  //     } catch (e) {
  //       logger.log(e.toString());
  //     }
  //   }
  // }
}
