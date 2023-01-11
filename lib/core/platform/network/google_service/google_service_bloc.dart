import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as logger;

part 'google_service_event.dart';

part 'google_service_state.dart';

@singleton
class GoogleServiceBloc extends Bloc<GoogleServiceEvent, GoogleServiceState> {
  final _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  GoogleServiceBloc() : super(GoogleServiceState()) {
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {});
    on<HandleSignIn>(_handleSignIn);
    on<HandleSignOut>(_handleSignOut);
  }

  Future<void> _handleSignIn(
    GoogleServiceEvent event,
    Emitter<GoogleServiceState> emit,
  ) async {
    try {
      final currentUser = await _googleSignIn.signIn();
      if (currentUser != null) {
        emit(state.copyWith(currentUser));
      }
      AppConfigs.navigatorKey.currentState?.pushNamed(RouteConfig.homePage);
    } catch (error) {
      logger.log(error.toString());
    }
  }

  Future<void> _handleSignOut(
    GoogleServiceEvent event,
    Emitter<GoogleServiceState> emit,
  ) =>
      _googleSignIn.disconnect();
}
