import 'package:flutter/material.dart';

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

  const AppButton({
    Key? key,
    this.borderWidth,
    this.buttonShape,
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
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          shape: buttonShape ?? BoxShape.rectangle,
          color: backgroundColor,
          borderRadius: buttonShape != null
              ? null
              : BorderRadius.circular(AppDimens.buttonCornerRadius),
        ),
        child: child,
      ),
    );
  }
}
