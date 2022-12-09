import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget? body;
  final double? padding;
  final ImageProvider<Object>? decorationImage;
  final bool isHaveAppBar;

  const AppScaffoldCommon({
    Key? key,
    this.padding,
    this.backGroundColor = AppColors.backgroundDark,
    this.isHaveAppBar = true,
    this.decorationImage,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHaveAppBar
          ? AppBar(
              centerTitle: true,
              backgroundColor: AppColors.backgroundDark,
              leading: AppButton(
                onTap: () => Navigator.pop(context),
                backgroundColor: AppColors.buttonBack,
                buttonShape: BoxShape.circle,
                child: const Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: AppColors.backIconColor,
                  size: 14,
                ),
              ),
            )
          : null,
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
