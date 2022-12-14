import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget body;
  final EdgeInsetsGeometry? padding;
  final ImageProvider<Object>? decorationImage;
  final bool isHaveAppBar;
  final double? toolbarHeight;
  final EdgeInsetsGeometry? leadingMargin;
  final Widget? leading;
  final List<Widget>? actions;

  const AppScaffoldCommon({
    Key? key,
    this.padding,
    this.leadingMargin,
    this.actions,
    this.leading,
    this.backGroundColor = AppColors.backgroundDark,
    this.isHaveAppBar = false,
    this.toolbarHeight,
    this.decorationImage,
    required this.body,
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
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: isHaveAppBar
            ? AppBar(
                shadowColor: Colors.transparent,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                toolbarHeight: 33,
                leadingWidth: 62,
                actions: actions,
                title: SvgPicture.asset(AppImages.spontifyLogo,
                    height: 33, width: 108),
                leading: leading ??
                    AppButton(
                      margin: leadingMargin,
                      height: 32,
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
        body: body
      ),
    );
  }
}
