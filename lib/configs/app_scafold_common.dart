import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget? body;
  final double? padding;
  final ImageProvider<Object>? decorationImage;

  const AppScaffoldCommon({
    Key? key,
    this.padding,
    this.backGroundColor = AppColors.backgroundDark,
    this.decorationImage,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: padding ?? 0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: backGroundColor,
            image: decorationImage != null
                ? DecorationImage(
                    image: decorationImage!,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  )
                : null),
        child: body,
      ),
    );
  }
}
