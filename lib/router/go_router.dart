import 'package:flutter_base_project/features/presentation/page/choose_mode/choose_mode.dart';
import 'package:flutter_base_project/features/presentation/page/get_started_page.dart/get_started_page.dart';
import 'package:flutter_base_project/features/presentation/page/home/home.dart';
import 'package:flutter_base_project/features/presentation/page/music_page/music_page.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in/sign_in.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in_option/sign_in_option.dart';
import 'package:flutter_base_project/features/presentation/page/sign_up_option/sign_up_option.dart';
import 'package:flutter_base_project/features/presentation/page/splash_page/splash_page.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteConfig.splashPage,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RouteConfig.getStartedPage,
      builder: (context, state) => const GetStartedPage(),
    ),
    GoRoute(
      path: RouteConfig.chooseMode,
      builder: (context, state) => const ChooseModePage(),
    ),
    GoRoute(
      path: RouteConfig.signInPage,
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: RouteConfig.signInOptionPage,
      builder: (context, state) => const SignInOptionPage(),
    ),
    GoRoute(
      path: RouteConfig.signUpOptionPage,
      builder: (context, state) => const SignUpOptionPage(),
    ),
    GoRoute(
      path: RouteConfig.homePage,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouteConfig.musicPage,
      builder: (context, state) => const MusicPage(),
    ),


  ],
);
