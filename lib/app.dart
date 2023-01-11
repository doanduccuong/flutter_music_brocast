import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/audio_player_handler/audio_player_bloc.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_base_project/router/go_router.dart' as go_router;
import 'package:flutter_base_project/setting/app_cubit.dart';
import 'package:flutter_base_project/setting/app_setting/app_setting_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/platform/network/google_service/google_service_bloc.dart';
import 'generated/l10n.dart';
import 'injection.dart';
import 'router/router.dart' as router;
import 'configs/app_configs.dart';
import 'configs/app_themes.dart';
import 'features/data/repositories/user_repository_impl.dart';
import 'features/domain/repositories/user_repository.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(create: (context) {
          return UserRepositoryImpl();
        }),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: getIt<GoogleServiceBloc>()),
          BlocProvider<AppCubit>(create: (context) => AppCubit()),
          BlocProvider<AppSettingCubit>(create: (context) => AppSettingCubit()),
          BlocProvider<AudioPlayerApplicationBloc>(
            create: (context) => AudioPlayerApplicationBloc()
              ..add(
                InitializeAudio(),
              ),
          ),
        ],
        child: BlocBuilder<AppSettingCubit, AppSettingState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                _hideKeyboard(context);
              },
              child: MaterialApp(
                title: AppConfigs.appName,
                // home: const SplashPage(),
                theme: AppThemes(
                  isDarkMode: false,
                  primaryColor: state.primaryColor,
                ).theme,
                darkTheme: AppThemes(
                  isDarkMode: true,
                  primaryColor: state.primaryColor,
                ).theme,
                navigatorKey: AppConfigs.navigatorKey,
                initialRoute: RouteConfig.splashPage,
                onGenerateRoute: router.generateRoute,
                themeMode: state.themeMode,
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  S.delegate,
                ],
                locale: state.locale,
                supportedLocales: S.delegate.supportedLocales,
              ),
            );
          },
        ),
      ),
    );
  }

  void _hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
