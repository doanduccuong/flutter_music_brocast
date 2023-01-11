import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_dimens.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/widget/app_button.dart';
class AppTextButton extends StatelessWidget {
  final double? borderWidth;
  final double? cornerRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final Function()? onTap;
  final Color? borderColor;
  final String text;
  final BoxShape? buttonShape;
  final double? height;
  final double? width;

  const AppTextButton({
    Key? key,
    this.borderWidth,
    this.buttonShape,
    this.height,
    this.width,
    required this.text,
    this.cornerRadius,
    this.backgroundColor,
    this.borderColor,
    this.padding,
    this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 7,horizontal: 15),
        margin: margin,
        decoration: BoxDecoration(
          shape: buttonShape ?? BoxShape.rectangle,
          color: backgroundColor ?? AppColors.buttonTextBackGroundColor,
          borderRadius: buttonShape != null
              ? null
              : BorderRadius.circular(AppDimens.buttonCornerRadius),
        ),
        child: Text(text,style: AppTextStyle.white.copyWith(fontSize: 15),),
      ),
    );
  }
}