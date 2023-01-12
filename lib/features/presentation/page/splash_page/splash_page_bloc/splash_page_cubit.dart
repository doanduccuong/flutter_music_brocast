import 'package:bloc/bloc.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:meta/meta.dart';
part 'splash_page_state.dart';

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit() : super(SplashPageInitial());
  void checkLogin() {
    Future.delayed(const Duration(seconds: 1));
    AppConfigs.navigatorKey.currentState?.pushNamed(RouteConfig.getStartedPage);
  }
}
