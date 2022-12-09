import 'package:flutter/material.dart';
import 'package:flutter_base_project/features/presentation/page/choose_mode/choose_mode.dart';
import 'package:flutter_base_project/features/presentation/page/get_started_page.dart/get_started_page.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in/sign_in.dart';
import 'package:flutter_base_project/features/presentation/page/splash_page/splash_page.dart';
import 'package:flutter_base_project/route_config/route_config.dart';


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
    default:
      return MaterialPageRoute(
          builder: (_) => Container(
            alignment: Alignment.center,
            child:  Text("Undefined page route ${settings.name}"),
          ));
  }
}