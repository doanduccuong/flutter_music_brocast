import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/setting/app_cubit.dart';
import 'package:meta/meta.dart';

part 'sign_in_option_event.dart';
part 'sign_in_option_state.dart';

class SignInOptionBloc extends Bloc<SignInOptionEvent, SignInOptionState> {
  SignInOptionBloc() : super(SignInOptionState()) {
    on<SignInOptionEvent>(_signInByGoogle);
  }
  Future<void> _signInByGoogle(
    SignInOptionEvent event,
    Emitter<SignInOptionState> emit,
  ) async {
    emit(state.copyWith(pageStatus: PageStatus.LOADING));
    getIt<AppCubit>().signIn();
    emit(state.copyWith(pageStatus: PageStatus.LOADED));
  }
}
