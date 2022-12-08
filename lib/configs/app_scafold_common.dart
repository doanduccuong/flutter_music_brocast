import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget? body;

  const AppScaffoldCommon({
    Key? key,
    this.backGroundColor = AppColors.backgroundDark,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      backgroundColor: backGroundColor,
    );
  }
}
