import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      height: 32,
      width: 32,
      padding: EdgeInsets.zero,
      onTap: () => Navigator.pop(context),
      backgroundColor: AppColors.buttonBack,
      buttonShape: BoxShape.circle,
      child: const Icon(
        FontAwesomeIcons.chevronLeft,
        color: AppColors.backIconColor,
        size: 14,
      ),
    );
  }
}
