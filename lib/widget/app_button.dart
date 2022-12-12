import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';

import '../configs/app_dimens.dart';

class AppButton extends StatelessWidget {
  final double? borderWidth;
  final double? cornerRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final Function()? onTap;
  final Color? borderColor;
  final Widget? child;
  final BoxShape? buttonShape;
  final double? height;
  final double? width;

  const AppButton({
    Key? key,
    this.borderWidth,
    this.buttonShape,
    this.height,
    this.width,
    this.child,
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
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          shape: buttonShape ?? BoxShape.rectangle,
          color: backgroundColor ?? AppColors.buttonBGFourth,
          borderRadius: buttonShape != null
              ? null
              : BorderRadius.circular(AppDimens.buttonCornerRadius),
        ),
        child: child,
      ),
    );
  }
}
