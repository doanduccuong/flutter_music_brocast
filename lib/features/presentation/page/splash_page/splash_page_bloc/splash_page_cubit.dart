import 'package:bloc/bloc.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/user_rest_client/user_rest_client.dart';
import 'package:flutter_base_project/features/data/data_source/local_storage.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:meta/meta.dart';

part 'splash_page_state.dart';

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit() : super(SplashPageInitial());
  void checkLogin() {
    Future.delayed(const Duration(seconds: 1));
    AppConfigs.navigatorKey.currentState?.pushNamed(RouteConfig.getStartedPage);
  }

  Future<void> requestAuthorization() async {
    final code = await LocalStorage.getCodeKey();
    if (code == null) {
      final response = await getIt<UserRestClient>().requestAuthorization();
      LocalStorage.setCodeKey(response.code);
    }
  }
}
