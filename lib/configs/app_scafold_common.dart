import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/widget/app_back_button.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget? body;
  final EdgeInsetsGeometry? padding;
  final ImageProvider<Object>? decorationImage;
  final bool isHaveAppBar;
  final double? toolbarHeight;

  const AppScaffoldCommon({
    Key? key,
    this.padding,
    this.backGroundColor = AppColors.backgroundDark,
    this.isHaveAppBar = false,
    this.toolbarHeight,
    this.decorationImage,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backGroundColor,
        image: decorationImage != null
            ? DecorationImage(
                image: decorationImage!,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              )
            : null,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: isHaveAppBar
            ? AppBar(
                shadowColor: Colors.transparent,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                toolbarHeight: 33,
                title: SvgPicture.asset(AppImages.spontifyLogo,
                    height: 33, width: 108),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: AppButton(
                    height: 16,
                    onTap: () => Navigator.pop(context),
                    backgroundColor: AppColors.buttonBack,
                    buttonShape: BoxShape.circle,
                    child: const Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: AppColors.backIconColor,
                      size: 14,
                    ),
                  ),
                ),
              )
            : null,
        body: body,
      ),
    );
  }
}
