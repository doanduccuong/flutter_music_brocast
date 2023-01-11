import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_base_project/setting/app_setting/app_setting_cubit.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_base_project/widget/app_collumn_text.dart';
import 'package:flutter_base_project/widget/base_scafold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: AppColors.backgroundGrey,
      padding: const EdgeInsets.only(top: 50),
      decorationImage: const AssetImage(AppImages.chooseModeBackGround),
      body: Column(
        children: [
          SvgPicture.asset(AppImages.spontifyLogo),
          const Spacer(),
          Text("Choose Mode", style: AppTextStyle.whiteS22W700),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAppModeButton(
                title: "Dark Mode",
                icon: FontAwesomeIcons.moon,
                context,
                modeType: AppMode.DARK_MODE,
              ),
              const SizedBox(width: 72),
              _buildAppModeButton(
                title: "Light Mode",
                icon: FontAwesomeIcons.sun,
                context,
                modeType: AppMode.LIGHT_MODE,
              ),
            ],
          ),
          AppButton(
            onTap: ()=>Navigator.pushNamed(context, RouteConfig.signInPage),
            backgroundColor: AppColors.buttonBGFourth,
            padding: const EdgeInsets.symmetric(vertical: 31, horizontal: 106),
            margin: const EdgeInsets.fromLTRB(0, 68, 0, 69),
            child: Text("Continue", style: AppTextStyle.white1S25W700),
          ),
        ],
      ),
    );
  }
}

Widget _buildAppModeButton(
  BuildContext context, {
  required String title,
  required IconData icon,
  required AppMode modeType,
}) {
  final ThemeMode currentThemeMode =
      context.watch<AppSettingCubit>().state.themeMode;
  return Stack(
    children: [
      currentThemeMode == modeType.currentMode
          ? const Positioned(
              bottom: 22,
              left: 16,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.buttonBGThird,
              ),
            )
          : const SizedBox(),
      AppColumnText(
        child1: AppButton(
          onTap: () {
            switch (modeType) {
              case AppMode.DARK_MODE:
                context
                    .read<AppSettingCubit>()
                    .changeThemeMode(themeMode: ThemeMode.dark);
                break;
              case AppMode.LIGHT_MODE:
                context
                    .read<AppSettingCubit>()
                    .changeThemeMode(themeMode: ThemeMode.light);
                break;
            }
          },
          backgroundColor: AppColors.buttonBGSecondary,
          padding: const EdgeInsets.all(20),
          child: Icon(
            icon,
            color: AppColors.textWhite,
          ),
        ),
        child2: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            title,
            style: AppTextStyle.whiteS12W800,
          ),
        ),
      ),
    ],
  );
}
