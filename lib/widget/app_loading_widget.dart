import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(45),
      child: const Center(
        child: CircularProgressIndicator(
          color: AppColors.kBrandPrimaryColor,
          backgroundColor: AppColors.backgroundDark,
          strokeWidth: 1,
        ),
      ),
    );
  }
}
