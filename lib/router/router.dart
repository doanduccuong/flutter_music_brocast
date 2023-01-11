import 'package:flutter/material.dart';
import 'package:flutter_base_project/features/presentation/page/choose_mode/choose_mode.dart';
import 'package:flutter_base_project/features/presentation/page/get_started_page.dart/get_started_page.dart';
import 'package:flutter_base_project/features/presentation/page/home/home.dart';
import 'package:flutter_base_project/features/presentation/page/music_page/music_page.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in/sign_in.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in_option/sign_in_option.dart';
import 'package:flutter_base_project/features/presentation/page/sign_up_option/sign_up_option.dart';
import 'package:flutter_base_project/features/presentation/page/splash_page/splash_page.dart';
import 'package:flutter_base_project/router/route_config.dart';


Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteConfig.splashPage:
      return MaterialPageRoute(builder: (_) =>  const SplashPage(),settings: settings);
    case RouteConfig.getStartedPage:
      return MaterialPageRoute(builder: (_) =>  const GetStartedPage(),settings: settings);
    case RouteConfig.chooseMode:
      return MaterialPageRoute(builder: (_) =>  const ChooseModePage(),settings: settings);
    case RouteConfig.signInPage:
      return MaterialPageRoute(builder: (_) =>  const SignInPage(),settings: settings);
    case RouteConfig.signInOptionPage:
      return MaterialPageRoute(builder: (_) =>  const SignInOptionPageInitialize(),settings: settings);
    case RouteConfig.signUpOptionPage:
      return MaterialPageRoute(builder: (_) =>  const SignUpOptionPage(),settings: settings);
    case RouteConfig.homePage:
      return MaterialPageRoute(builder: (_) =>  const HomePageInitialize(),settings: settings);
    case RouteConfig.musicPage:
      return MaterialPageRoute(builder: (_) =>  const MusicPage(),settings: settings);
    default:
      return MaterialPageRoute(
          builder: (_) => Container(
            alignment: Alignment.center,
            child:  Text("Undefined page route ${settings.name}"),
          ));
  }
}