import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../enum/load_status.dart';
import '../features/domain/repositories/user_repository.dart';
import 'dart:developer' as logger;

part 'app_state.dart';

class AppCubit extends Cubit<AppInitial> {
  UserRepository authRepo;

  AppCubit({
    required this.authRepo,
  }) : super(const AppInitial());

  void fetchProfile() {
    emit(state.copyWith(fetchProfileStatus: LoadStatus.loading));
  }


  ///Sign Out
  void signOut() async {
    emit(state.copyWith(signOutStatus: LoadStatus.loading));
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(state.removeUser().copyWith(
            signOutStatus: LoadStatus.success,
          ));
    } catch (e) {
      logger.log(e.toString());
      emit(state.copyWith(signOutStatus: LoadStatus.failure));
    }
  }
}
